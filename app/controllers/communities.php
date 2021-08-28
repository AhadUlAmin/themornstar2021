<?php

class Communities extends Controller
{
    public function index($param1 = '',$param2 = '')
    {
        if(isset($_GET['community'])){
            $data['pageQuery'] =  $_GET['community'];
 
        }else{
            $data['pageQuery'] =  $param1;
        }
        $data['page_title'] = $data['pageQuery'];
        $this->view("communities",$data);

    }

    public function create(){
        $data['page_title'] = "create";
        $this->view("create",$data);
    }
}