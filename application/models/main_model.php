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
		
		$data_rute = $this->getRute($data['gate_berangkat'], $data['gate_tujuan']);
		//$this->debug($data_rute);
		return $this->hitungBiayaTotalRute($data_rute, $data['gol_kendaraan']);
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
	
	private function getBiaya($gol_kendaraan, $ruas, $gt_start, $gt_end)
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
	
	private function getRute($gt_start_name, $gt_end_name)
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
			
			//$this->debug($Q);
		}
		
		//$this->debug($pred);
		$rute = $this->reconstructRute($r_start, $r_end, $pred);
		
		//return $rute;
		return $this->prepareRuteData($rute, $gt_start, $gt_end);
	}
	
	private function getRuasTol($gate_name)
	{
		$this->db->where('GERBANG_TOL_NAME', $gate_name);
		$query = $this->db->get('routes');
				
		return $query->last_row()->RUAS_TOL_ID;
	}
	
	private function getIdGate($gate_name, $ruas)
	{
		$this->db->where('GERBANG_TOL_NAME', $gate_name);
		$this->db->where('RUAS_TOL_ID', $ruas);
		$query = $this->db->get('routes');
		
		return $query->first_row()->GT_SEQUENCE;
	}	
	
	private function prepareRuteData($rute, $gt_start, $gt_end)
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