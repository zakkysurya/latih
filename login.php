<?php
include "koneksi.php";
$username = $_POST["usr"];
$password = $_POST["pass"];

$query = "SELECT * FROM my_users WHERE username = '$username'";
$result = $con->query($query);
$row = $result->fetch_array(MYSQLI_ASSOC);

$data = array();

if (!empty($row)) {
    if (password_verify($password, $row["password"])) {
        $data = array(
            "log" => true,
            "username" => $row["username"],
            "role" => $row["role"]
        );
    } else {
        $data = array(
            "log" => false,
            "msg" => "Password salah"
        );
    }
} else {
    $data = array(
        "log" => false,
        "msg" => "Username tidak ditemukan"
    );
};

echo json_encode($data);
