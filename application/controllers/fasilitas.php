<?php
   class fasilitas extends CI_Controller{
    function index(){
        $this->load->view('partial_home/header');
        $this->load->view('partial_home/navigasi');
        $this->load->view('content/fasilitas');
        $this->load->view('partial_home/footer');
        $this->load->view('partial_home/modals');
        $this->load->view('partial_home/js');
    }
    }
?>