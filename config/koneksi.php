<?php
$server = "localhost";
$username = "root";
$password = "mysql";
$database = "db_aisyah";

// Koneksi dan memilih database di server
// var_dump($database);
mysql_connect($server,$username,$password) or die("Koneksi gagal");
// var_dump($a);
mysql_select_db($database) or die("Database tidak bisa dibuka");
?>
