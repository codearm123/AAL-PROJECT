<?php
//1. Buat koneksi ke database
//1a. Siapkan Argumen koneksi
$host="localhost";
$user="root";
$pass="";
$name="ubmwebpro";
//1b. buat koneksi
$koneksi=mysqli_connect($host,$user,$pass,$name);
//1c. periksa koneksi apakah berhasil
if(mysqli_connect_errno()){
die("koneksi DB gagal: ".mysqli_connect_error());
}
?>