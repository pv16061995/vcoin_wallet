<?php
if(!defined('BASEPATH')) exit('No direct script access allowed');



include_once APPPATH.'third_party/jsonRPCClient.php';
include_once APPPATH.'third_party/Client.php';


class Transactionreqlist extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->library('session','Rpc');
		$this->load->helper('utility_helper');
		$this->load->model('Home_model');
        $this->load->helper('form');
        if($this->session->userdata('email')==false)
        {
            redirect(base_url().'logout');
        }
	}
	
	public function index()
	{
	     $this->load->view('adminpanel/transactionreqlist'); 
    }

    function transactionreqlist()
    {
        $a=$this->Home_model->transactionreqlist();
       
        $data='';

        $data .='<table id="datatable-checkbox" class="table table-striped table-bordered bulk_action">
                          <thead>
                            <tr>
                              <th>Sr</th>
                              <th>Date</th>
                              <th>Txn-id</th>
                              <th>Address</th>
                              <th>Amount in BTC</th>
                              <th>Name</th>
                              <th>Email</th>
                            </tr>
                          </thead>
                          <tbody>';
                          $i=1;
          foreach($a as $transaction)
            {

           // print_r($transaction);
                    
                    $data .='<tr>';
                    $data .='<td>'.$i.'</td>
                             <td>'.date('d-M-Y h:i a',strtotime($transaction->created_date)).'</td>
                             <td>'.$transaction->txnid.'</td>
                             <td>'.$transaction->trans_address.'</td>
                             <td>'.abs($transaction->amount).'</td>
                             <td>'.$transaction->name.'</td>
                             <td>'.$transaction->email.'</td>';
                    $data .='</tr>';

                $i++;
            }
        $data .='</tbody>';
        $data .='</table>';

        print_r($data);

    }

    
    
   
}
?>