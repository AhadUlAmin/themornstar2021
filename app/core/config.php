<?php

define("WEBSITE_NAME","TheMornStar");

define('DB_TYPE','mysql');
define('DB_HOST','localhost');
define('DB_NAME','br');
define('DB_USER','root');
define('DB_PASS','');

define('THEME','themornstar/');

define('DEBUG',true);

if(DEBUG)
{
    ini_set('display_errors', 1);
}else
{
    ini_set('display_errors', 0); 
}
