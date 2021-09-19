<?php

class Calculate extends Controller
{
    public function index()
    {
     $data['page_title'] = "Calculate";
     $this->view("calculate",$data);
    }

}