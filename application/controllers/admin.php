<?php
   class admin extends CI_Controller{
    function index(){
        $this->load->view('partial_admin/header');
        $this->load->view('partial_admin/sidebar');
        $this->load->view('partial_admin/topbar');
        $this->load->view('partial_admin/index');
        $this->load->view('partial_admin/footer');
    }
}