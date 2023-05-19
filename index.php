<?php
session_start();
if (isset($_SESSION['username'])) {
    unset($_SESSION['username']);
}

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cuza | LOGIN</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>
    <div class="titlu">
        <h1>Cuza</h1>
        <img style="width: 100px; height: 100px;" src="log_cuza.png">
        <h1>Elevi</h1>
    </div>

    <div class="container">
        <div class="login_card">
            <form form method="POST" action="">
                <div class="usernameLabel">
                    <label for="username">Username:</label>
                    <input type="username" id="username" name="username"><br>
                </div>
                <div class="passwordLabel">
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password">
                </div> <br>
                <button type="submit" class="buton" name="lgn">Login</button>

                <?php
                if (isset($_POST['lgn'])) {


                    $user = "root";
                    $pass = "qwerty";
                    $dbh = new PDO('mysql:host=localhost;dbname=bd', $user, $pass);

                    $username = $_POST['username'];
                    $password = $_POST['password'];
                    $query = "SELECT * FROM users WHERE email='$username' AND password='$password'";

                    $stmt = $dbh->prepare($query);
                    $stmt->execute();
                    $row = $stmt->fetchAll();
                    foreach ($row as $variabila) {
                        foreach ($variabila as $value) {
                            echo ($value . "<br>");
                        }
                    }



                    if (count($row) != 0 && $row["0"]["rol"] == "admin") {
                        $_SESSION['username'] = $username;
                        $_SESSION['rol'] = $row["0"]["rol"];
                        header('Location:elevi.php');

                    } elseif (count($row) != 0 && $row["0"]["rol"] == "secretariat") {
                        $_SESSION['username'] = $username;
                        $_SESSION['rol'] = $row["0"]["rol"];
                        header('Location:elevi.php');
                    } else
                    ?>

                    <h5> Wrong account! </h5>


                </form>
            <?php } ?>
        </div>

        <div class="register_card">
            <form method="POST" action="">
                <div class="idLabel">
                    <label for="id" class="idLabel">Id:</label>
                    <input type="text" id="id" name="id"><br>
                </div>

                <div class="numeLabel">
                    <label for="nume" class="numeLabel">Rol:</label>
                    <input type="text" id="nume" name="nume"><br>
                </div>

                <div class="usernameLabelRegister">
                    <label for="usernameRegister">Email:</label>
                    <input type="text" id="usernameRegister" name="usernameRegister"><br>
                </div>

                <div class="passwordLabelRegister">
                    <label for="passwordRegister">Password:</label>
                    <input type="password" id="passwordRegister" name="passwordRegister">
                </div> <br>
                <button type="submit" class="buton" name="register">Register</button>
                <div>
            </form>
        </div>
    </div>

    <?php

    if (isset($_POST['register'])) {
        try {
            $user = "root";
            $pass = "qwerty";
            $dbh = new PDO('mysql:host=localhost;dbname=bd', $user, $pass);
            $rol = $_POST["nume"];
            $id = $_POST["id"];
            $username1 = $_POST['usernameRegister'];
            $password1 = $_POST['passwordRegister'];
            $query = "INSERT INTO users values ($id,'$rol','$username1','$password1')";
            $stmt = $dbh->prepare($query);

            $stmt->execute();


        } catch (PDOException $e) {
            echo $e . "Could not connect to the database";
            die();
        }


    }


    ?>




</body>

</html>