<?php
    require 'config.php';
    $subj = $_POST['subject'];
    
$insert_sql = "INSERT INTO subjects (subject) VALUES ('$subj');";
mysqli_query($db,$insert_sql);
header("location:subjects.php");
?>