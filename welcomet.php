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
               <ul class="days">
                   <li><a href="monday.php">EDIT</a></li>
                   <li><a href="tuesday.php">Tuesday</a></li>
                   <li><a href="wednesday.php">Wednesday</a></li>
                   <li><a href="thursday.php">Thursday</a></li>
                   <li><a href="friday.php">Friday</a></li>
               </ul>
           </div>
       </div>
   </body>
   
</html>