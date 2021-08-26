<?php

class Communities extends Controller
{
    public function index($param1 = '',$param2 = '')
    {
        if(isset($_GET['community'])){
            $data['pageQuery'] =  $_GET['community'];
            $this->view("communities",$data);
        }else{
            $data['pageQuery'] =  $param1;
            $this->view("components/header");
            $this->view("communities",$data);
            $this->view("components/footer");
        }

    }

    public function create(){
        $data['page_title'] = "create";
        $this->view("create",$data);
    }
}