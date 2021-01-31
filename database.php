<?php
session_start();
define("dbhost","localhost");
define("dbuser","root");
define("dbpass","");
define("dbname","gmail");
$dbcon = mysqli_connect(dbhost,dbuser,dbpass,dbname);
?>
