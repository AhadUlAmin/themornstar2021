<?php

class Users extends Controller
{
    public function index($param1 = '',$param2 = '')
    {
        if(isset($_GET['user'])){
            $data['pageQuery'] =  $_GET['user'];
            $this->view("users",$data);
        }else{
            $data['pageQuery'] =  ltrim($param1, '@');;
            $this->view("components/header");
            $this->view("users",$data);
            $this->view("components/footer");
        }
    }

    public function create(){
        $this->view("components/header");
        $this->view("create");
        $this->view("components/footer");
    }

}