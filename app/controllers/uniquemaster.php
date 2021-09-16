<?php

class UniqueMaster extends Controller
{
    public function index($param1 = '',$param2 = '')
    {
     if(isset($_GET['publisher'])){
      $data['pageQuery'] =  $_GET['publisher'];

     }
     else{
        $data['pageQuery'] =  $param1;
     }

     $data['page_title'] = $data['pageQuery'];
     $this->view("uniquemaster",$data);
    }

}