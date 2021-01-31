<?php
if($_SESSION['sid']=='')
{
    header('location:index.php');
}

?>

<div class="mid-right-header">
    <input type="submit" value="Archive">
    <input type="submit" value="Report Spam">
    <input type="submit" value="Delete">
    <select>
        <option>More Actions...</option>
<option>Mark as read</option>
<option>Mark as unread</option>
<option>Add star</option>
<option>Remove star</option>
<option>Mute</option>
<option value="" disabled="">--------</option>
<option value="" disabled="">Apply label:</option>
<option>my documents</option>
<option>Personal</option>
<option>Receipts</option>
<option>Work</option>
<option value="" disabled="">--------</option>
<option value="" disabled="">Remove label:</option>
<option>my documents</option>
<option>Personal</option>
<option>Receipts</option>
<option>Work</option>
    </select>
    <input type="submit" value="Go">
    <a href="" style="text-decoration:underline">Refresh</a>

</div>


<table class="mail_table">
<?php
while($res = mysqli_fetch_assoc($data))
{
    ?>
   <tr style="background-color: #fff;">
   <td width="15%">
    <input type="checkbox">&nbsp;&nbsp;
    <a href=""><?php $lenth=30; echo substr($res['email_sender'],0,$lenth); ?></a>
    </td>
    <td width="50%">
    <span style="color: #000; font-weight: 900; font-size: 10px;">>></span> &nbsp;&nbsp;<a href=""><?php $lenth=50; echo substr($res['email_title'],0,$lenth); ?> - <?php $lenth=80; echo substr($res['email_msg'],0,$lenth); ?></a>
    
    </td>
    </tr>
    
    
<?php
}
?>
</table>

