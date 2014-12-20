<?php
 if(!isset($layout_context)){
 $layout_context = "public";
 }
?>

<html>
	<head>
<div id="mybanner" > 

  <div id="mybanner0" style="opacity: 1; display: block;"><img src="images/1.jpg" ></div> 
  <div id="mybanner1" style="opacity: 0; display: none;"><img src="images/2.jpg"></div> 
  <div id="mybanner2" style="opacity: 0; display: none;"><img src="images/3.jpg"></div> 
  <div id="mybanner3" style="opacity: 0; display: none;"><img src="images/6.jpg"></div> 
</div> 
	<script src="javascripts/splash.js"></script> 
<script>startsplash('mybanner',4,5000);</script>
		<title>Internet Cepat <?php if ($layout_context == "admin") {
			echo "Admin"; }?> </title>
		<link href="css/public.css" media="all" rel="stylesheet" type="text/css"/>
	
	</head>
	<body background="images/background1.jpg" onload="rotate()"> 

 <div id="mybanner5" style="opacity: 0; display: block;"><img src="images/1.jpg" ></div> 
<img src="uploads/logo.jpg" style="display:block; padding-left:40%; padding-top:5%; border:none;" >
		<div id="header">
		
			<h1 style="padding-left:40%;">Internet Cepat <?php if ($layout_context == "admin") {
			echo "Admin"; }?> </h1><br>
			
		</div>