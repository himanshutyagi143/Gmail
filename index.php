<?php
require_once 'config/database.php';
if(isset($_POST['user_login']))
{
    extract($_POST);
    $query = "SELECT * FROM `user` WHERE `uemail`='$user_email' and `upass`='$user_pass'"; 
    $data = mysqli_query($dbcon,$query);
    $res = mysqli_fetch_array($data);
    // validation on login form 
    if(empty($user_email) && empty($user_pass))
    {
        $msg = "Please Enter Email & Password";
    }
    else if(empty($user_email))
    {
        $msg ="Please Enter Your Email";
    }
    else if(empty($user_pass))
    {
        $msg ="Please Enter Your Password";
    }
    // checking id and password in database
    else
    {
        if($res['uemail'] == $user_email and $res['upass'] == $user_pass)
        {
            // Define the session 
            $_SESSION['sid']=$res['uemail'];
            header('location: user.php');
        }
        else
        {
            $msg = "Id & Password do not match";
        }
    }
    
}
?>




<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gmail</title>
    <link rel="stylesheet" href="style.css">
    <style>
        body{ background-color:whitsmoke;}
    </style>
</head>

<body>
    <div class="login">
    <h2><span style="color: #4285F4;">G</span><span style="color: red;">O</span>
    <span style="color: yellow;">O</span><span style="color: #4285F4;">G</span>
    <span style="color: lightgreen;">L</span><span style="color: red;">E</span></h2>
        
        <form method="post">
            <p><input type="email" name="user_email" placeholder="Enter Email" class="txt"></p>
            <p><input type="password" name="user_pass" placeholder="Enter Password" class="txt"></p>
            <p><input type="submit" name="user_login" value="SIGN IN    " class="btn"></p>
            <br>
            <p class="msg"><?php echo @$msg; ?></p>
        </form>
    
    </div>

</body>

</html>