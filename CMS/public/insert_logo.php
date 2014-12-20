<?php require_once("../includes/session.php");?>
<?php require_once("../includes/db_connection.php"); ?>
<?php require_once("../includes/functions.php"); ?>
<?php $layout_context = "public";?>
<?php include("../includes/layouts/header.php"); ?>
<?php find_selected_page(true); ?>
		
		<div id="main">
			<div id="navigation">
				  <h2>Change Logo</h2><br /><br />
		<form action="upload.php" method = "POST" enctype="multipart/form-data">
		<input type ="file"
		name="gbr"/>
		<input type = "submit"
		name="simpan"
		value="Simpan"/>
		</form>
			<br /></div><br><br>	
			</div>
		</div>
<?php include("../includes/layouts/footer.php"); ?>