<?php
   include('sessionst.php');
    include('config.php');
?>
<html>
   
   <head>
      <title>Welcome </title>
      <link rel="stylesheet" href="style.css">
      <meta charset="utf-8"> 
   </head>
   
   <body>
       <div class="main">
           <div class="header">
               <h1>Welcome <?php echo $login_session; ?></h1> 
                <h2><a href = "logout.php">Sign Out</a></h2>
           </div>
           <div class="side">
              <form action="timet.php" method="post">
                    <?php //Добавление дня
                        $sql = "SELECT * FROM days";
                        $result = mysqli_query($db,$sql);
                            echo "<select name='days'>";
                            while($res = mysqli_fetch_assoc($result)){
                               echo "<option value=".$res['id'].">".$res['day']."</option>";
                            };
                        echo "</select>";
                    ?>
                    <?php //Добавление номера урока
                            //их всего 10
                        $sqlnum = "SELECT * FROM lessons";
                        $resnum = mysqli_query($db,$sqlnum);
                            echo "<select name='lessons'>";
                            while($les = mysqli_fetch_assoc($resnum)){
                                echo "<option value=".$les['id'].">".$les['number']."</option>";
                            }
                        echo "</select>";
                    ?>
                    <?php
                        //Добавление предмета
                  //WHERE teach_id = '$login_id' выгружает только дисциплины этого препода
                        $sqlt = "SELECT * FROM teachless WHERE teach_id = '$login_id'";
                        $rest = mysqli_query($db,$sqlt);
                            echo "<select name='subj'>";
                            while($sub = mysqli_fetch_assoc($rest)){
                                echo "<option value=".$sub['id'].">".$sub['subj_name']."</option>";
                            }
                            echo "</select>";
                    ?>
                    <?php
                      //добавление класса
                        $sqlk = "SELECT * FROM klass";
                        $resk = mysqli_query($db,$sqlk);
                            echo "<select name='klass'>";
                            while($kl = mysqli_fetch_assoc($resk)){
                                echo "<option value=".$kl['id'].">".$kl['klass']."</option>";
                            }
                            echo "</select>";
                    ?>
                    <?php
                  //Добавление аудитории
                        $sqla = "SELECT * FROM auditions";
                        $aud = mysqli_query($db,$sqla);
                        echo "<select name='aud'>";
                        while($aur = mysqli_fetch_assoc($aud)){
                            echo "<option value=".$aur['id'].">".$aur['aud']."</option>";
                        }
                        echo "</select>"
                            ?>
              </form>
           </div>
       </div>
   </body>
   
</html>