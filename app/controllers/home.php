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

     $data['page_title'] = "Home";
     $this->view("index",$data);
    }

}