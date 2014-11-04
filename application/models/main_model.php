<?php

class Main_model extends CI_Model
{
	public function getGateNames()
	{
		$this->db->distinct();
		$this->db->select('GERBANG_TOL_NAME');
		$query = $this->db->get('routes');
		
		return $query->result();
	}
	
	public function calculateFare($data)
	{
		/*
			data berisi keys berikut:
			- gate_berangkat
			- gate_tujuan
			- gol_kendaraan
		*/
		
		$ruas_start = $this->getRuasTol($data['gate_berangkat']);
		$ruas_end = $this->getRuasTol($data['gate_tujuan']);
		
		$gol_kendaraan = $data['gol_kendaraan'];
		$gt_start = $data['gate_berangkat'];
		$gt_end = $data['gate_tujuan'];
		
		$total_biaya = 0;
		
		if(!($gt_start == $gt_end))
		{
			if($ruas_start == $ruas_end)
			{
				/*
					kalau masih ada dalam satu ruas,
					biaya dihitung secara normal
				*/
				
				
				$gt_start_id = $this->getIdGate($gt_start, $ruas_start);
				$gt_end_id = $this->getIdGate($gt_end, $ruas_start);
				
				$total_biaya = $this->getBiaya($gol_kendaraan, $ruas_start, $gt_start_id, $gt_end_id);
			}
			else
			{
				/*
					ini kalau ternyata kalau beda ruas,
					maka ruas di track pake BFS setelah
					itu dihitung biayanya berapa
				*/
				
				$data_rute = $this->getRute($gt_start, $gt_end, $gol_kendaraan);
				//$this->debug($data_rute);
				$total_biaya = $this->hitungBiayaTotalRute($data_rute, $gol_kendaraan);
			}
		}
		
		return $total_biaya;
	}
	
	private function hitungBiayaTotalRute($data_rute, $gol_kendaraan)
	{
		$sum = 0;
		foreach($data_rute as $row)
		{
			$sum += $this->getBiaya($gol_kendaraan, $row->ruas, $row->start, $row->end);
		}
		
		return $sum;
	}
	
	public function getBiaya($gol_kendaraan, $ruas, $gt_start, $gt_end)
	{
		/*
			fungsi ini return biaya perjalanan
			dari $gt_start ke $gt_finish di ruas
			$ruas
		*/
		
		$this->db->where('RUAS_TOL_ID', $ruas);
		$this->db->like('FROM_TO', $gt_start);
		$this->db->like('TO_FROM', $gt_end);
		$query = $this->db->get('fares');
		
		if($query->num_rows() == 0)
		{
			$this->db->where('RUAS_TOL_ID', $ruas);
			$this->db->like('FROM_TO', $gt_end);
			$this->db->like('TO_FROM', $gt_start);
			$query = $this->db->get('fares');			
		}
		
		//$this->debug($query->result());
		
		$row = $query->first_row();
		
		$ret;
		
		switch($gol_kendaraan)
		{
			case 'GOL1':
				$ret = $row->GOL1;
				break;
			case 'GOL2':
				$ret = $row->GOL2;
				break;
			case 'GOL3':
				$ret = $row->GOL3;
				break;
			case 'GOL4':
				$ret = $row->GOL4;
				break;
			case 'GOL5':
				$ret = $row->GOL5;
				break;				
		}
		
		return $ret;
	}	
	
	private function getRute($gt_start_name, $gt_end_name, $gol_kendaraan)
	{
		/*
			fungsi ini return array yg isi
			tiap elemennya mengandung keys
			sbg berikut:
			- ruas
			- start
			- end
			
			untuk sekarang kita pake algoritma BFS dl
			
			*$gt_start dan $gt_end adalah id/sequence 
			dr gate-nya
			
			**ini msh sgt tidak efektif, cb nanti 
			perbaiki
		*/
		
		$r_start = $this->getRuasTol($gt_start_name);
		$r_end = $this->getRuasTol($gt_end_name);
		
		$gt_start = $this->getIdGate($gt_start_name, $r_start);
		$gt_end = $this->getIdGate($gt_end_name, $r_end);
		
		$s = $r_start;
		
		$Q = array();
		$flag = array();
		$pred = array();
		$this->enqueue($Q, $s);
		
		$v;
		
		while(count($Q) > 0)
		{
			$v = $this->dequeue($Q);
			
			$tetangga = $this->getTetangga($v);
			foreach($tetangga as $w)
			{
				if(!in_array($w, $flag))
				{
					array_push($flag, $w);
					$pred[$w] = $v;
					$this->enqueue($Q, $w);
				}
			}
			
		}
		
		$rute = $this->reconstructRute($r_start, $r_end, $pred);
		
		return $this->prepareRuteData($rute, $gt_start, $gt_end, $gol_kendaraan);
	}
	
	private function getRuasTol($gate_name)
	{
		$this->db->where('GERBANG_TOL_NAME', $gate_name);
		$query = $this->db->get('routes');
		
		//$this->debug($query->result());
		
		return $query->first_row()->RUAS_TOL_ID;
	}
	
	private function getIdGate($gate_name, $ruas)
	{
		$this->db->where('GERBANG_TOL_NAME', $gate_name);
		$this->db->where('RUAS_TOL_ID', $ruas);
		$query = $this->db->get('routes');
		
		return $query->first_row()->GT_SEQUENCE;
	}	
	
	private function prepareRuteData($rute, $gt_start, $gt_end, $gol_kendaraan)
	{
		/*
			rute itu isinya ruas yang udah
			terurut. jd skrng tinggal di
			prepare aja
		*/
		
		$ret = array();
		
		for($i=0; $i < count($rute); $i++)
		{
			$objek = new stdClass();
			$objek->ruas = $rute[$i];
			
			if($i==0)
			{
				// kalo objek pertama
				$objek->start = $gt_start;
				$objek->end = $this->getIntersectionGate($objek->ruas, $rute[$i+1]);
			}
			else
			{
				if($i == (count($rute)-1))
				{
					//kalo objek terakhir
					$objek->start = $this->getIntersectionGate($objek->ruas, $rute[$i-1]);
					$objek->end = $gt_end;
				}
				else
				{
					//kalo selain itu
					$objek->start = $this->getIntersectionGate($objek->ruas, $rute[$i-1]);
					$objek->end = $this->getIntersectionGate($objek->ruas, $rute[$i+1]);
				}
			}
			
			$objek->biaya = $this->getBiaya($gol_kendaraan, $objek->ruas, $objek->start, $objek->end);
			
			array_push($ret, $objek);
		}
		
		return $ret;
	}
	
	private function getIntersectionGate($ruas, $connected)
	{
		/*
			Ini fungsinya ngedapetin intersection
			satu ruas dan ruas lainnya
		*/
		
		$this->db->where('RUAS_TOL_ID', $ruas);
		$this->db->like('RUAS_TOL_INTERSECTION', $connected);
		
		$query = $this->db->get('routes');
		
		return $query->first_row()->GT_SEQUENCE;
	}
	
	private function reconstructRute($r_start, $r_end, $table)
	{
		/*
			Ingat bahwa ini pasti ketemu
			path-nya. Jd kita nggak perlu
			ngebatesin.
		*/
		
		/*$this->debug($r_start);
		$this->debug($r_end);
		$this->debug($table);*/
		
		$ret = array();
		$found = false;
		$current = $r_start;
		
		while(!$found && $current)
		{
			array_push($ret, $current);
			$key = array_search($current, $table);
			if($key == $r_end)
			{
				$found = true;
				//echo $key;
				array_push($ret, $key);
			}
			else
			{
				$current = $key;
			}
		}
		
		return $ret;
	}
	
	private function enqueue(&$Q, $s)
	{
		array_push($Q, $s);
	}
	
	private function dequeue(&$Q)
	{
		$ret = $Q[0];
		unset($Q[0]);
		$Q = array_values($Q);
		
		return $ret;
	}
	
	private function getTetangga($ruas)
	{
		$ret = array();
		
		$this->db->where('RUAS', $ruas);
		$query = $this->db->get('peta_ruas');
		$result = $query->result();
		
		foreach($result as $row)
		{
			array_push($ret, $row->CONNECTED);
		}
		
		return $ret;
	}
	
	private function debug($data)
	{
		echo '<pre>';
		var_dump($data);
		echo '</pre>';
	}

}