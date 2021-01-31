<?php
if($_SESSION['sid']=='')
{
    header('location:index.php');
}

?>

<div class="mid">
        <div class="mid-left fl">
            <!--nav Section-->
            <div class="nav">
                <ul>
                    <li><a href="?pid=compose">Compose Mail</a></li>
                    <li><a href="?pid=inbox">Inbox(<?php echo $res['id']; ?>)</a></li>
                    <li><a href="?pid=starred">Starred</a></li>
                    <li><a href="?pid=sent_mail">Sent Mail</a></li>
                    <li><a href="?pid=drafts">Drafts</a></li>
                    <li><a href="?pid=allmail">All Mail</a></li>
                    <li><a href="">Spam</a></li>
                    <li><a href="">Bin</a></li>
                    <li>&nbsp;</li>
                    <li><a href="">Contacts</a></li>
                    <li>&nbsp;</li>
                    <li>&nbsp;&nbsp;&nbsp;&nbsp;Labels</li>
                    <div class="mid-left-down">
                    <li><a href="">my documents</a></li>
                    <li><a href="">Personal</a></li>
                    <li><a href="">Receipts</a></li>
                    <li><a href="">Work</a></li></div>
                    <li><a href="">Edit Labels</a></li>
                    
                    

                </ul>
            </div>
            <!--nav Section-->

        </div>
        <div class="mid-right fr">
            
        <?php
            @$pageid = $_GET['pid'];
            // print_r($pageid); Used only for testing
            switch($pageid)
            {
                case "compose":
                require_once 'compose.php';
                break;
                case "inbox":
                    require_once 'allemails.php';
                    break;
                    case "allmail":
                        require_once 'allemails.php';
                        break;
                        case "drafts":
                            require_once 'drafts.php';
                            break;
                            case "starred":
                                require_once 'starred.php';
                                break;
                                case "sent_mail":
                                    require_once 'sent-mail.php';
                                    break;
                                    case "user_setting":
                                        require_once 'admin-card.php';
                                        break;
                                        case "theme":
                                            require_once 'theme.php';
                                            break;
                default: require_once 'allemails.php';
            }
        ?>
        </div>
        <div class="clr"></div>
    </div>