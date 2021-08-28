<?php

class Users extends Controller
{
    public function index($param1 = '',$param2 = '')
    {
        if(isset($_GET['user'])){
            $data['pageQuery'] =  $_GET['user'];
        }else{
            $data['pageQuery'] =  ltrim($param1, '@');
        }
        $data['page_title'] = $data['pageQuery'];
        $this->view("users",$data);
            
    }

    public function create(){
        $this->view("components/header");
        $this->view("create");
        $this->view("components/footer");
    }

}