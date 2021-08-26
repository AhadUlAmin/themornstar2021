<?php

class UniqueMaster extends Controller
{
    public function index()
    {
     if(isset($_GET['publisher'])){
     echo  $data['pageQuery'] =  $_GET['publisher'];

     }
    }

}