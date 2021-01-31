<?php
if($_SESSION['sid']=='')
{
    header('location:index.php');
}

?>


<div class="header">
        <div class="top-bar">
            <div class="topbar-left fl">
                <a href="">Search</a>&nbsp;&nbsp;
                <a href="">Images</a>&nbsp;&nbsp;
                <a href="">Maps</a>&nbsp;&nbsp;
                <a href="">Play</a>&nbsp;&nbsp;
                <a href="">Youtube</a>&nbsp;&nbsp;
                <a href="">News</a>&nbsp;&nbsp;
                <a href="">Gmail</a>&nbsp;&nbsp;
                <a href="">Drive</a>&nbsp;&nbsp;
                <a href="">More&nbsp;>></a>
            </div>
            <div class="topbar-right fr">
                <a href="" style="text-decoration: none; font-size: 15px; color: rgb(32, 30, 30); font-weight: 600;"><?php echo $res['uemail']; ?></a>&nbsp;|&nbsp;
                <a href="">Standard View</a>&nbsp;|&nbsp;
                <a href="">Google Account</a>&nbsp;|&nbsp;
                <a href="">Settings</a>&nbsp;|&nbsp;
                <a href="">Help</a>&nbsp;|&nbsp;
                <a href="?pid=logout">Signout</a>&nbsp;&nbsp;
            </div>
            <div class=".clr"></div>
        </div>
        <div class="head">
            <div class="head-left fl">
                




<!-- Header  bar table  -->
 <table>
  <tr>
  <td rowspan="3"><a href="?"><img src="image/logo.png" width="143" height="59"></a></td>
  </tr>
  <tr>
 <td>
 <table>
  <tr>
  <td width="1%" height="25">
<input maxlength="2048" title="Search">&nbsp;
<input type="submit" value="Search Mail">&nbsp;
<input type="submit" value="Search the Web">
</td>
</tr></table></td></tr><tr><td height="25" colspan="2">

</td></tr>
</table>
<!-- Header  bar table  -->







            </div>
            <div class="head-right fr">
                
            </div>
            <div class="clr"></div>
        </div>
    </div>