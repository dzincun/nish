<?php
include 'config.php';
?>

<?php
 $sql = "SELECT * FROM students
        INNER JOIN klass ON students.klass = klass.id";
$result = mysqli_query($db,$sql);
while($row=mysqli_fetch_array($result)){
echo $row['firstname']." ".$row['lastname']." ".$row['klass_name']."<br>";
}
?>