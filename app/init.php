<?php
/* Dot Env setup trying */
$_ENV = parse_ini_file('.env', false, INI_SCANNER_RAW);
//echo  $_ENV["APP_NAME"];
include "../app/core/config.php";
include "../app/core/functions.php";
include "../app/core/database.php";
include "../app/core/controller.php";
include "../app/core/app.php";

