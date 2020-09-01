<?php
include "koneksi.php";
$query = "SELECT * FROM my_murid WHERE status_o = 'disetujui'";
$result = $con->query($query);
// $row = $result->fetch_array(MYSQLI_ASSOC);
$row = $result->fetch_object();
// $kotak = array();
// while ($row = $result->fetch_array(MYSQLI_ASSOC)) {
//     echo $row["nama"] . " => " . $row["hobi "] . "<br/>";
// }
echo json_encode($row);
