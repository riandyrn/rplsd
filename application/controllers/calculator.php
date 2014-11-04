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
		$this->calculate();
	}
	
	public function calculate($data = array())
	{
		/*
			ini tampilan default
		*/
		
		$data['assets'] = base_url() . 'assets/';
		$data['base_path'] = base_url() . 'index.php/calculator/';
		$data['gates'] = $this->main->getGateNames();
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
			$fare_data['fare'] = $this->main->calculateFare($_POST);
			$data['fare_data'] = $fare_data;
			$this->calculate($data);
		}		
	}
}