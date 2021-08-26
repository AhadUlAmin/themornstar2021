<?php 

class Authenticate extends Controller{
    public function index($param1 = "")
    { 
        if(isset($_GET['publisher'])){
            $data['page_title'] = "Login / Register";
            $data['pageQuery'] =  $_GET['publisher'];
            $this->view("authenticate",$data);
           }else{
              $data['pageQuery'] =  $param1;
              $data['page_title'] = "Login / Register";
              $this->view("components/header",$data);
              $this->view("authenticate");
              $this->view("components/footer");
           }
    }
}