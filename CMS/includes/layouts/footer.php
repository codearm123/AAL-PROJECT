     
		<div id="footer"><img src="images/footer.jpg"/></div>

		<div id="footer">Copyright <?php echo date("Y")?>, Internet Cepat</div>
	</body>
</html>
<?php 
	if(isset($connection)){
		mysqli_close($connection);
	}
?>