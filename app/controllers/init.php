<?php

class Init extends Controller
{
    public function index()
    {
    if($_SERVER['REQUEST_METHOD'] == "POST"){
            //var_dump($_POST);
            $host = trim($_POST['host']);
            $user = trim($_POST['user']);
            $pass = trim($_POST['pass']);
            $db = trim($_POST['db']);

            

            $a = $this->model('install');
            $a->init($host,$user,$pass,$db);
            
    }
      
      $data['page_title'] = "Install";
      $this->view("install",$data);

    }
}