<?php
session_start();
$user  = "root";
$pass  = "qwerty";
$dbh   = new PDO('mysql:host=localhost;dbname=bd', $user, $pass);

$stmt = $dbh->query("describe elev");


$stmt->execute();
$data2 = $stmt->fetchAll();



if (isset($_POST["id"])) {
    $id = $_POST["id"];
    $stmt4 = $dbh->query("select * from elev where nr_matricol='$id'");
    $stmt4->execute();
    $data = $stmt4->fetch();

}

if (isset($_POST["updatebutton"])) {
    $query = "update elev set ";
    $arrays = [];
    foreach ($data2 as $row) {
        $query .= $row['Field'] . "=?,";
        $arrays[] = $_POST[$row['Field']];
    }
    $query = substr($query, 0, -1);
    $query .= " where " . $data2[0]['Field'] . "=?";
    echo ($query);
    $arrays[] = $_POST[$data2[0]['Field']];
    foreach ($arrays as $row) {
        echo ($row);
    }
    $stmt5 = $dbh->prepare($query);
    try {

        $dbh->prepare("INSERT into bd.istoric (user,eveniment) values (?,?)")->execute(array($_SESSION['username'], "update in elev"));

    } catch (PDOException $e) {
        echo $e . "Could not connect to the database";
        die();
    }
    $stmt5->execute($arrays);
    header("Location: elevi.php");
     

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
        <li><a class="active" href="update.php">Update</a></li>
        <li><a href="adaugare.php">Add</a></li>
        <li><a href="istoric.php">Command Log</a></li>
        <li><a href="grafic.php">Graphic</a></li>
        <li style="float:right"><a href="index.php">Log out</a></li>


    </ul>
    </div>
    <div class="filler"></div>

    <?php

    if (isset($_POST["id"])) {
        ?>
        <div style="display:flex; align-items:center; justify-content:center">
            <form class="updateform" method="POST" action="">

                <?php foreach ($data2 as $value) { ?>
                    <p class="pupdate">
                        <label class="updateLabel">
                            <?= $value['Field'] ?>
                        </label>
                        <input class="updateinput" type="text" style="margin-top:10px;margin-left:10px"
                            name="<?= $value['Field'] ?>" value="<?= $data[$value['Field']] ?>">
                    </p>

                <?php } ?>

                <button type="submit" class="updatebutton" name="updatebutton"
                    style=" margin-top:40px; font-size:20px; ">Update</button>
                <input type="hidden" name="id" value="<?= $row[0] ?>">

            </form>
        </div>

    <?php
    }
    else{
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

                <button type="submit" class="updatebutton" name="updatebutton"
                    style=" margin-top:40px; font-size:20px; ">Update</button>
                <input type="hidden" name="id" value="<?= $row[0] ?>">

            </form>
        </div>

    <?php
    }  

?>              

</body>

</html>