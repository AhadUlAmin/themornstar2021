<?php 

class Services extends Controller{
    public function index()
    {
     $data['page_title'] = "Services";
     
     $this->view("notification",$data);
    }
}