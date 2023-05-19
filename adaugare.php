<?php
session_start();
$user  = "root";
$pass  = "qwerty";
$dbh   = new PDO('mysql:host=localhost;dbname=bd', $user, $pass);

$stmt = $dbh->query("describe elev");


$stmt->execute();
$data2 = $stmt->fetchAll();





if (isset($_POST["adaugare"])) {
    $stmt = $dbh->prepare("insert into elev values (?,?,?,?,?,?,?,?,?)");
    $array2 = [];

    foreach ($data2 as $row) {

        $array2[] = $_POST[$row['Field']];
    }
    
    try {

        $dbh->prepare("INSERT into bd.istoric (user,eveniment) values (?,?)")->execute(array($_SESSION['username'], "adaugare in elev"));

    } catch (PDOException $e) {
        echo $e . "Could not connect to the database";
        die();
    } 
    $stmt->execute($array2);

    function function_alert($msg)
    {
        echo "<script type='text/javascript'>alert('$msg');</script>";
    }

    function_alert("Ai introdus un elev!");


}

?>

<!DOCTYPE html>
<html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="style3.css" />
    <link rel="icon" type="image/x-icon" href="resources/favicon.ico">
    <title>Main Menu</title>
</head>

<body>
    <ul>
        <li><a href="elevi.php">Elevi</a></li>
        <li><a href="update.php">Update</a></li>
        <li><a class="active" href="adaugare.php">Add</a></li>
        <li><a href="istoric.php">Command Log</a></li>
        <li><a href="grafic.php">Graphic</a></li>
        <li style="float:right"><a href="index.php">Log out</a></li>


    </ul>
    </div>
    <div class="filler"></div>

    <?php

   
        ?>
        <div style="display:flex; align-items:center; justify-content:center">
            <form class="updateform" method="POST" action="">

                <?php foreach ($data2 as $value) { ?>
                    <p class="pupdate">
                        <label class="updateLabel">
                            <?= $value['Field'] ?>
                        </label>
                        <input class="updateinput" type="text" style="margin-top:10px;margin-left:10px"
                            name="<?= $value['Field'] ?>" value="">
                    </p>

                <?php } ?>

                <button type="submit" class="updatebutton" name="adaugare"
                    style=" margin-top:40px; font-size:20px; ">Adaugare</button>
                <input type="hidden" name="id" value="<?= $row[0] ?>">

            </form>
        </div>

    <?php
     

?>              

</body>

</html>