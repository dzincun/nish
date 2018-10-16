<?php
   include("config.php");
   session_start();
?>
<form action="subjaction.php" method="post">
    <input type="text" name="subject">
    <input type="submit" value="send" name="subj">
</form>