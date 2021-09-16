<?php

class Home extends Controller
{
    public function index()
    {
     $user = $this->model('User');
     $userData = $user->isLoggedIn();
     if(is_object($userData)){
         $data['userData'] = $userData;
     }

 

     if(isset($_SESSION['userUniqueId'])){
         echo "SESSION-" . $_SESSION['userUniqueId'];

     }else{
        $data['page_title'] = "Home";
        $this->view("index",$data);
     }


    }

}