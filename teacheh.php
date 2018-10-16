<?php
   include('sessionst.php');
    include('config.php');
?>
<html>
    <head>
        <title>Teachers</title>
        <link rel="stylesheet" href="style.css">
        <meta charset="utf-8"> 
    </head>
    <body>
        <div class="header">
               <h1>Welcome <?php echo $login_session; ?></h1> 
                <h2><a href = "logout.php">Sign Out</a></h2>
        </div>
        <form action="action.php" method="post">
            <?php
                $sql = "SELECT * FROM teachers";
                $result = mysqli_query($db,$sql);
                echo "<select name='teachers'>";
                while($res = mysqli_fetch_assoc($result)){
                    echo "<option value=".$res['id'].">".$res['fullname']."</option>";
                };
                echo "</select>";
            ?>
            <?php
                $sql1 = "SELECT * FROM subjects";
                $result1 = mysqli_query($db,$sql1);
                echo "<select name='sujects'>";
                while($res1 = mysqli_fetch_assoc($result1)){
                    echo "<option value=".$res1['subject'].">".$res1['subject']."</option>";
                };
                echo "</select>"
            ?>
            <input type="submit" name="submit" value="Send">
        </form>
    </body>
</html>