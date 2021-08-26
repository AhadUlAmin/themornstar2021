<?php
/*
Showing print_r for every line of code to help and find error .
*/
    function show($data)
    {
        echo "<pre>";
        print_r($data);
        echo "</pre>";
    }
/*
Error Function with Session variable echo and unset error instantly .
*/
    function err(){
        if(isset($_SESSION['err']) && $_SESSION['err'] !=""){
            echo $_SESSION['err'];
            unset($_SESSION['err']);
        }
    }

