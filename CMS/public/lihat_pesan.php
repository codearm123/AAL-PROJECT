<?php require_once("../includes/session.php");?>
<?php require_once("../includes/db_connection.php"); ?>
<?php require_once("../includes/functions.php"); ?>
<?php $layout_context = "public";?>
<?php include("../includes/layouts/header.php"); ?>
<?php $sql= "SELECT * FROM pesan";
$hasil=mysqli_query($connection,$sql);?>
<div id="main">

<div class="view-content" align="center" style="margin-left:20%;margin-right:20%;">
<table border='1'>
	<tr>		
	<td>No.</td>
		<td>nama</td>
		<td>email</td>
		<td>pesan</td>
	</tr>
<?php
while($baris=mysqli_fetch_assoc($hasil)){
echo "<tr><td>" . $baris["urutan"] . "</td><td>" . $baris["nama"] . "</td><td>" . $baris["email"] . "</td><td>" . $baris["pesan"] ."</tr>";}
?>
</table>
<div id="navigation">
			 <br/>
			 <a href="admin.php" >&laquo; Back to Admin Menu</a><br/>
			</div>
</div>
</div>

<?php include("../includes/layouts/footer.php"); ?>

