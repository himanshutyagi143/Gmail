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
    <img src="image/logo1.png" width="20%">
    <h1 style="color: #202124; padding-bottom: 0; padding-top: 16px; font-family: 'Google Sans','Noto Sans Myanmar UI',arial,sans-serif; font-size: 24px; font-weight: 400; line-height: 1.3333; margin-bottom: 0; margin-top: 0;">Sign in</h1>
    <p style="color: #202124; font-size: 16px; font-weight: 400; letter-spacing: .1px; line-height: 1.5; padding-bottom: 0; padding-top: 8px;">to continue to Gmail</p>
        <br>
        <form method="post">
            <p><input type="email" name="user_email" placeholder="Email or phone" class="txt"></p>
            <p><input type="password" name="user_pass" placeholder="Password" class="txt"></p>
            <p><input type="submit" name="user_login" value="SIGN IN    " class="btn"></p>
            <p class="msg"><?php echo @$msg; ?></p>
            <h1 style="color: #202124; padding-bottom: 0; padding-top: 16px; font-family: 'Google Sans','Noto Sans Myanmar UI',arial,sans-serif; font-size: 24px; font-weight: 400; line-height: 1.3333; margin-bottom: 0; margin-top: 0;">OR</h1>
            <br>
            <p><a href="registration.php" class="btn2">Create account</p>
        </form>
    
    </div>

</body>

</html>
