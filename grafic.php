<?php
$user  = "root";
$pass  = "qwerty";
$dbh   = new PDO('mysql:host=localhost;dbname=bd', $user, $pass);

$stmt = $dbh->query("SELECT specializare.nume_sp AS 'Nume Specializare', SUM(tip_bursa.valoare) AS 'Suma per Specializare' FROM specializare, clasa, elev, bursieri, tip_bursa WHERE bursieri.codbur = tip_bursa.codbur AND elev.nr_matricol = bursieri.nr_matricol AND elev.codclasa = clasa.codclasa AND specializare.codsp = clasa.codsp GROUP BY specializare.nume_sp");
$stmt->execute();

$data  = $stmt->fetchAll(PDO::FETCH_NUM);

$dataPoints=[];
foreach ($data as $row) {
    $dataPoints[]=array ( "y" => $row[1], "label" =>$row[0]);
}
?>

<!DOCTYPE HTML>
<html>
<head>  
<link rel="stylesheet" href="style.css">
<script>
window.onload = function () {
    var chart = new CanvasJS.Chart("chartContainer", {
        animationEnabled: false,
        exportEnabled: true,
        theme: "light2",
        title: {
            text: "Suma per Specializare"
        },
        axisY: {
            title: "Suma"
        },
        data: [{
            type: "column",
            dataPoints: <?php echo json_encode($dataPoints, JSON_NUMERIC_CHECK); ?>
        }]
    });
    chart.render();
}
</script>
</head>
<body>
    
<div class="navbarul">
        <ul>
            <li><a  href="elevi.php">Elevi</a></li>
            <li><a href="update.php" class="<?= $invizibil ?>">Update</a></li>
            <li><a href="adaugare.php" class="<?= $invizibil ?>">Add</a></li>
            <li><a href="istoric.php" class="<?= $invizibil ?>">Command Log</a></li>
            <li><a class="active" href="grafic.php" class="<?= $invizibil ?>">Graphic</a></li>
            
            <li style="float:right"><a href="index.php">Log out</a></li>

        </ul>

<div class="filler"></div>
<div style="display:flex; align-items:center; justify-content:center"> 
    <div id="chartContainer" style="height: 370px; width: 50%;"></div>
</div>

<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
</body>
</html>
