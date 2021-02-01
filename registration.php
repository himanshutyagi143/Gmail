<?php
require_once 'config/database.php';
if(isset($_POST['user_reg']))
{
    extract($_POST);
    // validation on Registration form 
    if(empty($user_name) && empty($user_email) && empty($user_mobile) && empty($user_pass))
    {
        $msg = "Please Enter All details";
    }
    else if(empty($user_name))
    {
        $msg ="Please Enter Your Name";
    }
    else if(empty($user_email))
    {
        $msg ="Please Enter Your Email";
    }
    else if(empty($user_mobile))
    {
        $msg ="Please Enter Your Mobile Number";
    }
    else if(empty($user_pass))
    {
        $msg ="Please Enter Your Password";
    }
    // checking id and password in database
    else
    {
        $query = "INSERT INTO `user` (`id`, `uname`, `upass`, `uemail` , `umobile`) VALUES (NULL, '$user_name', '$user_pass', '$user_email', '$user_mobile')";
        $user_data = mysqli_query($dbcon,$query);
        $user_res = mysqli_fetch_array($data);
         header('location: user.php');
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
    <div class="register">
    <img src="image/logo1.png" width="20%">
    <h1 style="color: #202124; padding-bottom: 0; padding-top: 16px; font-family: 'Google Sans','Noto Sans Myanmar UI',arial,sans-serif; font-size: 24px; font-weight: 400; line-height: 1.3333; margin-bottom: 0; margin-top: 0;">Sign up</h1>
    <p style="color: #202124; font-size: 16px; font-weight: 400; letter-spacing: .1px; line-height: 1.5; padding-bottom: 0; padding-top: 8px;">to continue to Gmail</p>
        <br>
        <form method="post">
            <p><input type="name" name="user_name" placeholder="Create Username" class="txt"></p>
            <p><input type="email" name="user_email" placeholder="Create email account" class="txt"></p>
            <p><input type="number" name="user_mobile" placeholder="Mobile" class="txt"></p>
            <p><input type="password" name="user_pass" placeholder="Create Password" class="txt"></p>
            <p><input type="submit" name="user_reg" value="Create account  " class="btn"></p><br>
            <p class="msg"><?php echo @$msg; ?></p>
            <h1 style="color: #202124; padding-bottom: 0; padding-top: 16px; font-family: 'Google Sans','Noto Sans Myanmar UI',arial,sans-serif; font-size: 24px; font-weight: 400; line-height: 1.3333; margin-bottom: 0; margin-top: 0;">OR</h1>
            <br>
            <p><a href="./" class="btn2">Sign in</p>
            
        </form>
    
    </div>

</body>

</html>