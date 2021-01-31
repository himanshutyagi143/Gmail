<?php
if($_SESSION['sid']=='')
{
    header('location:index.php');
}
$query = "SELECT * FROM `starred`";
$starred_data = mysqli_query($dbcon,$query);
?>
<table class="mail_table">
<?php
while($res = mysqli_fetch_assoc($starred_data))
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
