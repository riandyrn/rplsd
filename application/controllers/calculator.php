<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Calculator extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('main_model', 'main');
	}
	
	public function index()
	{	
		$this->setRuas();
	}
	
	public function setRuas()
	{
		$data['assets'] = base_url() . 'assets/';
		$data['base_path'] = base_url() . 'index.php/calculator/';	
		$data['ruas'] = $this->main->getAllRuas();
		$this->load->view('ruas', $data);
	}
	
	public function setRuas_P()
	{
		$this->session->set_userdata('ruas_berangkat', $_POST['ruas_berangkat']);
		$this->session->set_userdata('ruas_tujuan', $_POST['ruas_tujuan']);
		$this->calculate();
	}
	
	public function calculate($data = array())
	{
		/*
			ini tampilan input gate
		*/
		
		$ruas_berangkat = $this->session->userdata('ruas_berangkat');
		$ruas_tujuan = $this->session->userdata('ruas_tujuan');
		
		$data['assets'] = base_url() . 'assets/';
		$data['base_path'] = base_url() . 'index.php/calculator/';
		$data['gate_berangkat'] = $this->main->getGateNames($ruas_berangkat);
		$data['gate_tujuan'] = $this->main->getGateNames($ruas_tujuan);
		
		$data['ruas_berangkat'] = $ruas_berangkat;
		$data['ruas_tujuan'] = $ruas_tujuan;
		
		$this->load->view('calculator', $data);	
	}
	
	public function calculate_P()
	{
		if($_POST)
		{
			/*
				kalau ada data POST, calculate fare,
				lalu set flag untuk tampilkan messagebox
			*/
				
			$fare_data = $_POST;
			$tmp = $this->main->getDataPerjalanan($_POST);
			$fare_data['fare'] = $tmp['total_biaya'];
			$fare_data['data_rute'] = $tmp['data_rute'];
			$data['fare_data'] = $fare_data;
			
			$this->calculate($data);
		}		
	}
	
	private function debug($var)
	{
		echo '<pre>';
		var_dump($var);
		echo '</pre>';
	}
}