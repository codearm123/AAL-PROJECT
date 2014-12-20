<?php require_once("../includes/session.php");?>
<?php require_once("../includes/db_connection.php"); ?>
<?php require_once("../includes/functions.php"); ?>
<?php $layout_context = "public";?>
<?php include("../includes/layouts/header.php"); ?>
<?php find_selected_page(true); ?>
			
		<div id="main">
		
			<div class="view-content" align="center"  style="margin-left:20%;margin-right:20%;">
				  <h2>Change Logo</h2><br /><br />
				  (File maksimum 5 MB, hanya bisa menerima .jpg)
		<form action="upload.php" method = "POST" enctype="multipart/form-data">
		<input type ="file"
		name="gbr"/>
		<input type = "submit"
		name="simpan"
		value="Simpan" onclick="window.alert('File berhasil diupload! Anda akan kembali ke menu admin utama.')"/>
		</form>
	<div id="navigation">
			 <br/>
			 <a href="admin.php" >&laquo; Back to Admin Menu</a><br/>
			</div>
			<br /></div><br><br>	
			
			</div>
		</div>
<?php include("../includes/layouts/footer.php"); ?>