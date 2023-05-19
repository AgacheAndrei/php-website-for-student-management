<?php

if(isset($_GET['exportxls']))
{
    $user  = "root";
    $pass  = "qwerty";
    $dbh   = new PDO('mysql:host=localhost;dbname=bd', $user, $pass);
// Filter the excel data 
function filterData(&$str){ 
    $str = preg_replace("/\t/", "\t", $str); 
    $str = preg_replace("/\r?\n/", "\n", $str); 
    if(strstr($str, '"')) $str = '"' . strreplace('"', '""', $str) . '"'; 
} 
 
// Excel file name for download 
$fileName = "elevi" . date('Y-m-d') . ".xls"; 
 
// Column names 
$fields = array('nr_matricol', 'CNP', 'nume', 'prenume','nr_telefon', 'adresa', 'medie','acte_adi','codclasa'); 
 
// Display column names as first row 
$excelData = implode("\t", array_values($fields)) . "\n"; 
 
// Fetch records from database 
$stmt = $dbh -> query("SELECT * FROM elev");
$stmt->execute();
$data = $stmt->fetchAll();
if($data){ 
    // Output each row of the data 
    foreach($data as $row){ 
        $lineData = array($row['nr_matricol'], $row['CNP'], $row['nume'], $row['prenume'],$row['nr_telefon'], $row['adresa'], $row['medie'],$row['acte_adi'],$row['codclasa'] ); 
        array_walk($lineData, 'filterData'); 
        $excelData .= implode("\t", array_values($lineData)) . "\n"; 
    } 
}else{ 
    $excelData .= 'No records found...'. "\n"; 
} 
 
// Headers for download 
header("Content-Type: application/vnd.ms-excel"); 
header("Content-Disposition: attachment; filename=$fileName "); 
 
// Render excel data 
echo $excelData; 
 
header("elevi.php");
}
?>