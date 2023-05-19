
<?php
session_start();
try
{   $stringul="select * from istoric";
  
    $user = "root";
    $pass = "qwerty";
    $dbh = new PDO('mysql:host=localhost;dbname=bd', $user, $pass);
    $stmt  = $dbh->query("describe istoric");
  
    $stmt2 = $dbh->prepare($stringul);
    
   
    $stmt->execute();
    $data  = $stmt->fetchAll();
    $stmt2->execute();
    $data2 = $stmt2->fetchAll();
}
catch (PDOException $e)
{
   echo $e. "Could not connect to the database";
    die();
}
?>


<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <link rel="stylesheet" href="style3.css"/>
        <link rel="icon" type="image/x-icon" href="resources/favicon.ico">
        <title>Main Menu</title>
    </head>
 <body>
 <div class="navbarul">
        <ul>
            <li><a  href="elevi.php">Elevi</a></li>
            <li><a href="update.php" >Update</a></li>
            <li><a href="adaugare.php" >Add</a></li>
            <li><a class="active" href="istoric.php" >Command Log</a></li>
            <li><a href="grafic.php" >Graphic</a></li>
            <li style="float:right"><a href="index.php">Log out</a></li>

        </ul>
    </div>
    <div class="filler"></div>
    
 <div class="istoricdiv">

        <table >
            <thead>
                <tr>
                    <?php foreach ($data as $row) { ?>
                        <th>
                           
                            <?= $row['Field'] ?>
                           
                        </th>
                    <?php } ?>
                    
                </tr>
            </thead>
            <tbody>

                <?php foreach ($data2 as $row) { ?>
                    <tr>
                        <?php foreach ($data as $row2) { ?>
                            <td>
                                <?= $row[$row2['Field']] ?>
                            </td>
                        <?php } ?>
                       
                      
                    </tr>
                <?php } ?>
            </tbody>
        </table>
   
                      
                        </div>
    </body>
</html>



