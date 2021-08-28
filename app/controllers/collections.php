<?php

class Collections extends Controller
{
    public function index($param1 = '',$param2 = '')
    {
        if(isset($_GET['collection'])){
            $data['pageQuery'] =  $_GET['collection'];
        }else{
            $data['pageQuery'] = ltrim($param1, '~');
        }
        $data['page_title'] = $data['pageQuery'];
        $this->view("collections",$data);
    }
}