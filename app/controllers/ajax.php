<?php

class Ajax extends Controller
{

    public function index()
    {
     if(isset($_POST['question'])){
        echo $_POST['question'] ;
     }
    }
}