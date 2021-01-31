<?php
require_once 'config/database.php';
// Check the blank
if($_SESSION['sid']=='')
{
    header('location: index.php');
}
// destroy the value of session 
if(@$_GET['pid']=='logout')
{
    session_destroy();
    header('location:index.php');
}
// Hold the value of session 
$user_sid=$_SESSION['sid'];
$query="SELECT * FROM `user` WHERE `uemail` = '$user_sid'";
$user_data=mysqli_query($dbcon,$query);
$res=mysqli_fetch_array($user_data);



$query = "SELECT * FROM `emails`";
$data = mysqli_query($dbcon,$query);


?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gmail</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>
    <!--Header Section-->
    <?php require_once 'head.php'; ?>
    <!--Header Section-->

    <!--mid Section-->
    <?php require_once 'body.php'; ?>
    <!--mid Section-->
    <!--footer Section-->
<?php require_once 'footer.php'; ?>
    <!--footer Section-->
</body>

</html>