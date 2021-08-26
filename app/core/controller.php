<?php

class Controller
{
    public function view($path,$data = [])
    {
     
        if(file_exists("../app/views/" . THEME . $path . ".php"))
        {
            include "../app/views/" . THEME . $path . ".php";

        }else
        {
           die("View doesn't exists .");
           
        }
    }
    public function model($model)
    {
        if(file_exists("../app/models/" . strtolower($model) . ".class.php"))
        {
            include "../app/models/" . strtolower($model) . ".class.php";
            
            return new $model ;
        }

        //return false ;
    }
}