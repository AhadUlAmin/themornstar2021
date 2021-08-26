<?php

class Collections extends Controller
{
    public function index($param1 = '',$param2 = '')
    {
        if(isset($_GET['collection'])){
            $data['pageQuery'] =  $_GET['collection'];
            $this->view("collections",$data);
        }else{
            $data['pageQuery'] = ltrim($param1, '~');
            $this->view("components/header");
            $this->view("collections",$data);
            $this->view("components/footer");
        }
    }
}