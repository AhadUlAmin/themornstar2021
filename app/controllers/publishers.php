<?php

class Publishers extends Controller
{
    public function index($param1 = '',$param2 = '')
    {
     if(isset($_GET['publisher'])){
      $data['pageQuery'] =  $_GET['publisher'];
      $this->view("publishers",$data);
     }else{
        $data['pageQuery'] =  $param1;
        $this->view("components/header");
        $this->view("publishers",$data);
        $this->view("components/footer");
     }
    }

}