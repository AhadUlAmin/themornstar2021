<?php 

class Authenticate extends Controller{
    public function index($param1 = "")
    { 

        if($_SERVER['REQUEST_METHOD'] == "POST"){
            
            $user = $this->model("User");
            $user->authenticate($_POST['userEmail'] ,$_POST['userPassword']);
         }

        if(isset($_GET['publisher'])){
            $data['pageQuery'] =  $_GET['publisher'];
           }else{
              $data['pageQuery'] =  $param1;
           }
           $data['page_title'] = "Login / Register";
           $this->view("authenticate",$data);
    }
}