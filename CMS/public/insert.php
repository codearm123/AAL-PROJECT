<?php require_once("../includes/db_connection.php");?>
<?php
	$nama = $_POST['nama'];
	$email = $_POST['email'];
	$pesan = $_POST['pesan'];
	
	$sql = "INSERT INTO pesan(nama, email, pesan)
			VALUES('$nama','$email','$pesan')";
	mysqli_query($connection, $sql);
	header("Location: index.php");
?>