<?php require_once("../includes/session.php");?>
<?php require_once("../includes/db_connection.php"); ?>
<?php require_once("../includes/functions.php"); ?>
<?php $layout_context = "public";?>
<?php include("../includes/layouts/header.php"); ?>
<?php find_selected_page(true); ?>
		
		<div id="main">
			<div id="navigation">
				<?php echo public_navigation($current_subject, $current_page); ?> <br>
			</div>
			<div id="page">
			
				<?php if(strcmp(htmlentities($current_page["menu_name"]),"Tinggalkan Pesan")==0){?>
			              <div class="view-content">
				  <h2>Tinggalkan Pesan Anda</h2><br /><br />
				  <form action="insert.php" method="POST">
					<label>Nama :</label>
					<input type="text"
						   name="nama"
						   value=""/>
					<br />
					<label>Alamat Email:</label>
					<input type="text"
						   name="email"
						   value=""/>
					<br />
					<label>Pesan anda :</label><br>
					<textarea name="pesan"></textarea><br />
					<input type="submit"
						   value="submit"/>
				   </form>
				   <br /></div><br><br>
				
				<?php } 
				
				else if ($current_page) {?>
		
				  <div class="view-content">
				  <h2><?php echo htmlentities($current_page["menu_name"]); ?></h2><br />
				   <?php echo nl2br(htmlentities($current_page["content"])); ?><br />
				  </div><br><br>
				<?php } else {?>
				 <p>Selamat Datang di Website Internet Cepat!</p>
				<?php }?>	
			</div>
		</div>
<?php include("../includes/layouts/footer.php"); ?>