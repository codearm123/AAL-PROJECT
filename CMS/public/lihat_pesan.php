<?php require_once("../includes/session.php");?>
<?php require_once("../includes/db_connection.php"); ?>
<?php require_once("../includes/functions.php"); ?>
<?php $layout_context = "public";?>
<?php include("../includes/layouts/header.php"); ?>
<?php $sql= "SELECT * FROM pesan";
$hasil=mysqli_query($connection,$sql);?>
<div id="main">
<div id="navigation">
<table border='1'>
	<tr>
		<td>urutan</td>
		<td>nama</td>
		<td>email</td>
		<td>pesan</td>
	</tr>
<?
while($baris=mysqli_fetch_assoc($hasil)){
echo "<tr>";
echo "<td>" . $baris['urutan'] . "</td>";
echo "<td>" . $baris['nama'] ."</td>";
echo "<td>" .$baris['email']."</td>";
echo "<td>" .$baris['pesan']."</td>";
echo "<td>";
echo "<a href='delete_proses.php?id=".$baris['urutan']."'> HAPUS</a></td>";
echo "</tr>";}
?>
</div>
</div>
<?php include("../includes/layouts/footer.php"); ?>