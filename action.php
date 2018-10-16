<?php
    require 'config.php';
    $teach = $_POST['teachers'];
    $subj = $_POST['sujects'];
$insert_sql = "INSERT INTO teachless (subj_name, teach_id) VALUES ('$subj', '$teach');";
mysqli_query($db,$insert_sql);
header("location:teacheh.php");
?>