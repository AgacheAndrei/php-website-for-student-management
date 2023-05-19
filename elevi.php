<?php
session_start();


if ($_SESSION['rol'] == "secretariat")
    $invizibil = "invisible";
$user = "root";
$pass = "qwerty";
$dbh = new PDO('mysql:host=localhost;dbname=bd', $user, $pass);





if (isset($_POST["delete"])) {
    $nr_matricol = $_POST["nr_matricol"];
    $stmt3 = $dbh->query("delete from elev where nr_matricol=$nr_matricol");



    function function_alert($msg)
    {
        echo "<script type='text/javascript'>alert('$msg');</script>";
    }

    function_alert("Ai sters un elev!");

}
?>
<?php
try {
    $stringul = "select * from elev ";
    if (isset($_GET['cautare'])) {
        $nr_matricol = $_GET["inputCautare"];

        $stringul .= "where nr_matricol='$nr_matricol'";

    }

    if (isset($_GET['filtrare'])) {
        $sir = "";
        $sir2 = "";
        if (isset($_GET['inputFiltrare1']) && is_numeric($_GET['inputFiltrare1'])) {
            $sir = $_GET['inputFiltrare1'];
            $stringul .= "where medie >= '$sir'";

            if (isset($_GET['inputFiltrare2'])) {
                $sir2 = $_GET['inputFiltrare2'];
                if ($sir2 != "") {
                    $stringul .= " and codclasa='$sir2'";
                }
            }

        } else if (isset($_GET['inputFiltrare2'])) {
            $sir2 = $_GET['inputFiltrare2'];
            $stringul .= " where codclasa='$sir2'";
        }


    }

    if (isset($_GET['ordonareasc'])) {
        $coloana = $_GET['id2'];
        $stringul .= " order by $coloana asc";
    }


    function array_csv_download( $array, $filename = "export.csv", $delimiter="," )
    {
    // Remove columns starting with a number
    foreach ($array as $key => $value) {
        foreach ($value as $k => $v) {
            if (preg_match('/^\d/', $k)) {
                unset($array[$key][$k]);
            }
        }
    }

    // Set headers for file download
    header('Content-Type: application/csv');
    header('Content-Disposition: attachment; filename="' . $filename . '";');

    // Clean output buffer
    ob_end_clean();

    // Open a stream for writing the CSV data to
    $handle = fopen('php://output', 'w');

    // Use keys as column titles
    fputcsv($handle, array_keys($array['0']), $delimiter);

    // Write data to the CSV
    foreach ($array as $value) {
        fputcsv($handle, $value, $delimiter);
    }

    // Close the CSV file stream
    fclose($handle);

   
    
    
    // Use exit to prevent any further unexpected output
    exit();
    }


    if (isset($_GET['bursieri'])) {
        $stringul = "select * from elev, bursieri where elev.nr_matricol=bursieri.nr_matricol";
    }
    if (isset($_GET['nonbursieri'])) {
        $stringul = "select * from elev where nr_matricol not in (SELECT bd.elev.nr_matricol FROM bd.elev,bd.bursieri where elev.nr_matricol=bursieri.nr_matricol)";
    }
    if (isset($_GET['citirecsv'])) {
        header("Location: 2-csv-table.php");
    }
    if (isset($_GET['raportvaloarebursepereclase'])) {
        $stringule = "SELECT clasa.nume AS 'Nume Clase', SUM(tip_bursa.valoare) AS 'Suma per Clasa' FROM clasa, elev, bursieri, tip_bursa WHERE bursieri.codbur = tip_bursa.codbur AND elev.nr_matricol = bursieri.nr_matricol AND elev.codclasa = clasa.codclasa GROUP BY clasa.nume";

        $stmt3 = $dbh->prepare($stringule);
        // $stmt->execute();
        // $data = $stmt->fetchAll();
        $stmt3->execute();
        $data3 = $stmt3->fetchAll();
        print($data3);
        array_csv_download($data3, "raportvaloarebursepereclase.csv", ",");

        
        
    }
    if (isset($_GET['raportburseperspecializare'])) {
        $stringule = "select specializare.nume_sp as 'Nume Specializare', sum(tip_bursa.valoare) as 'Suma per Spercializare' from specializare, clasa, elev, bursieri, tip_bursa where bursieri.codbur = tip_bursa.codbur and elev.nr_matricol = bursieri.nr_matricol and elev.codclasa = clasa.codclasa and specializare.codsp = clasa.codsp group by specializare.nume_sp";

        $stmt3 = $dbh->prepare($stringule);
        // $stmt->execute();
        // $data = $stmt->fetchAll();
        $stmt3->execute();
        $data3 = $stmt3->fetchAll();
        print($data3);
        array_csv_download($data3, "raportvaloareburseperespecializare.csv", ",");

        
        
    }


    if (isset($_GET['ordonaredesc'])) {
        $coloana = $_GET['id2'];
        $stringul .= " order by $coloana desc";
    }

    $user = "root";
    $pass = "qwerty";
    $dbh = new PDO('mysql:host=localhost;dbname=bd', $user, $pass);
    $stmt = $dbh->query("describe elev");

    $stmt2 = $dbh->prepare($stringul);
    try {

        $dbh->prepare("INSERT into bd.istoric (user,eveniment) values (?,?)")->execute(array($_SESSION['username'], "adaugare in elev"));

    } catch (PDOException $e) {
        echo $e . "Could not connect to the database";
        die();
    }

  
    $stmt->execute();
    $data = $stmt->fetchAll();
    $stmt2->execute();
    $data2 = $stmt2->fetchAll();

} catch (PDOException $e) {
    echo $e . "Could not connect to the database";
    die();
}
?>


<!DOCTYPE html>
<html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="style.css" />
    <link rel="icon" type="image/x-icon" href="resources/favicon.ico">
    <title>Main Menu</title>
</head>

<body>

    <div class="navbarul">
        <ul>
            <li><a class="active" href="elevi.php">Elevi</a></li>
            <li><a href="update.php" class="<?= $invizibil ?>">Update</a></li>
            <li><a href="adaugare.php" class="<?= $invizibil ?>">Add</a></li>
            <li><a href="istoric.php" class="<?= $invizibil ?>">Command Log</a></li>
            <li><a href="grafic.php" class="<?= $invizibil ?>">Graphic</a></li>
            
            <li style="float:right"><a href="index.php">Log out</a></li>

        </ul>
    </div>
    <div class="filler"></div>
    <div class="containerul">


        <div class="formuri">


            <div class="cautareafisare">

                <form method="get">

                    <input type="text" name="inputCautare">
                    <button type="submit" name="cautare" class="butoanele">Căutare</button>
                </form>

                <form method="get">
                    <button type="submit" class="butoanele">Afisare Elevi</button>
                </form>
            </div>

            <fieldset>
                <legend>Filtrare</legend>
                <form method="get" 
                style=" display:flex;
                 flex-direction:column;
                justify-content:space-between;"
                > 
                <label for= inputFiltrare1"> Medie >=</label>
                    <input type="text" name="inputFiltrare1">
                    <br>
                    <label for="inputFiltrare2"> Clasa </label>
                    <input type="text" name="inputFiltrare2">
                    <button type="submit" name="filtrare" class="butoanele">Filtrare</button>
                </form>
            </fieldset>





            <form method="get" action="exportexcel.php" class="<?= $invizibil ?>">
                <input type="submit" name="exportxls" value="Export XLS" class="butoanele">
            </form>

            <form method="get">
                <input type="submit" name="bursieri" value="Afisare Bursieri" class="butoanele">
            </form>
            <form method="get">
                <input type="submit" name="nonbursieri" value="Afisare non-Bursieri" class="butoanele">
            </form>
            <form method="get">
                <input type="submit" name="raportvaloarebursepereclase" value="Raport burse per clase" class="butoanele">
            </form>
            <form method="get">
                <input type="submit" name="raportburseperspecializare" value="Raport burse per specializare" class="butoanele">
            </form>
            <form method="get">
                <input type="submit" name="citirecsv" value="Citire rapoarte" class="butoanele">
            </form>


        </div>

        <div class="container3">

            <table>
                <thead>
                    <tr>
                        <?php foreach ($data as $row) { ?>
                            <th>
                                <form method="get">
                                    <button class="ordonare" name="ordonareasc"><img src="right-arrow.png"></button>
                                    <input type="hidden" name="id2" value="<?= $row['Field'] ?>">
                                </form>
                                <form method="get">
                                    <button class="ordonare" name="ordonaredesc"><img src="right-arrow-2.png"></button>
                                    <input type="hidden" name="id2" value="<?= $row['Field'] ?>">
                                </form>

                                <?= $row['Field'] ?>

                            </th>

                        <?php } ?>
                        <th class="<?= $invizibil ?>"></th>
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

                            <td class="<?= $invizibil ?>">
                                <div class="formButoane">
                                    <div>
                                        <form method="POST" action="">
                                            <button class="actiuni" name="delete"><img class="imagine "
                                                    src="delete.png"></button>
                                            <input type="hidden" name="nr_matricol" value="<?= $row[0] ?>">
                                    </div>
                                    <div>
                                        </form>
                                        <form method="POST" action="update.php" c>
                                            <button class="actiuni" name="update"><img class="imagine "
                                                    src="refresh.png"></button>
                                            <input type="hidden" name="id" value="<?= $row[0] ?>">
                                    </div>
                                    </form>
                                </div>
                            </td>
                        </tr>
                    <?php } ?>
                </tbody>
            </table>
        </div>
    </div>

</body>

</html>