<?php 

class Authenticate extends Controller{
    public function index($param1 = "")
    { 
        if(isset($_GET['publisher'])){
            $data['pageQuery'] =  $_GET['publisher'];
           }else{
              $data['pageQuery'] =  $param1;
           }
           $data['page_title'] = "Login / Register";
           $this->view("authenticate",$data);
    }
}