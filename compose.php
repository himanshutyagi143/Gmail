<?php
error_reporting(0);
if($_SESSION['sid']=='')
{
    header('location:index.php');
}
if(isset($_POST['uemail_sub']))
{
    extract($_POST);
    if(empty($uemail_sender) && empty($uemail_title))
    {
        $msg = "Please Enter All Details";
    }
    elseif(empty($uemail_sender))
    {
        $msg = "Please Enter Recipients Email id";
    }
    elseif(empty($uemail_title))
    {
        $msg = "Please Enter Subject";
    }
    else
    {
        // $retval = mail ($to,$subject,$message,$header); Mail function
        $retval = mail ($uemail_sender,$uemail_title,$uemail_msg,$u_cc);
        if($retval == true)
        {
            $query = "INSERT INTO `sentmail` (`id`, `email_sender`, `email_title`, `email_msg`) VALUES (NULL, '$uemail_sender', '$uemail_title', '$uemail_msg')";
        $user_data = mysqli_query($dbcon,$query);
        $user_res = mysqli_fetch_assoc($user_data);
            $msg = "Email Sent Successfully";
        }
        else
        {
            $query = "INSERT INTO `starred` (`id`, `email_sender`, `email_title`, `email_msg`) VALUES (NULL, '$uemail_sender', '$uemail_title', '$uemail_msg')";
        $user_data = mysqli_query($dbcon,$query);
        $user_res = mysqli_fetch_assoc($user_data);
            $msg = "Message could not be sent... & Saved to Starred";
        }
        
    }
}



if(isset($_POST['draft_btn']))
{
    extract($_POST);
    if(empty($uemail_sender) && empty($uemail_title))
    {
        $msg = "Please Enter All Details";
    }
    elseif(empty($uemail_sender))
    {
        $msg = "Please Enter Recipients Email id";
    }
    elseif(empty($uemail_title))
    {
        $msg = "Please Enter Subject";
    }
    else
    {
    $query = "INSERT INTO `drafts` (`id`, `email_sender`, `email_title`, `email_msg`) VALUES (NULL, '$uemail_sender', '$uemail_title', '$uemail_msg')";
        $user_data = mysqli_query($dbcon,$query);
        $user_res = mysqli_fetch_assoc($user_data);
            $msg = "Email Saved to Drafts";
    }
}

?>
<form method="POST">
<div style="background-color: #C3D9FF;">
<div class="mid-right-header">
    <input type="submit" name="uemail_sub" value="Send">
    <input type="submit" name="draft_btn" value="Save Draft">
    <input type="submit" value="Discard">&nbsp;&nbsp;&nbsp;&nbsp;
    <span style=" color: red; padding: 7px 50px 7px 50px; margin: 0% 7%;"><?php echo @$msg; ?></span>
</div>
<div style="width: 98%; margin: 1%;">

<h4>To : <input type="email" name="uemail_sender" style="width: 95%; height: 40px; margin-bottom: 5px;"></h4>
    <h5>CC : <input type="email" name="u_cc" style="width: 95%; height: 20px; margin-bottom: 5px;"></h5>
    <h5>Subject : <input type="text" name="uemail_title" style="width: 95%; height: 20px; margin-bottom: 5px;"></h5>
    <h4>Attachments</h4>
    <p style="margin-top: 3px;"><input type="file" alt="No file choosen"></p>
    <p style="margin-top: 3px;"><input type="Submit" Value="Attach More Files"></p>
    <p style="margin-top: 3px;"><textarea name="uemail_msg" rows="30" cols="100">
        Welcome to Dummy Gmail
        </textarea></p>

</div>
<div class="mid-right-header">
    <input type="submit" name="uemail_sub" value="Send">
    <input type="submit" name="draft_btn" value="Save Draft">
    <input type="submit" value="Discard">
</div>
</div>
</form>