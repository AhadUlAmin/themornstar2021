<?php
session_start();
unset($_SESSION["uniqueSessionId"]);
header("Location:index.php");
?>