<?php require_once("../includes/db_connection.php");?>
<?php
$file=$_FILES['gbr'];
$file_ext= strtolower(end(explode(".", $file['name'])));
$ext_boleh= array("jpg");
$asal= $file['tmp_name'];
$tujuan = "uploads/logo.jpg";
if(in_array($file_ext, $ext_boleh) && $file['size']<=5*1024*1024){
move_uploaded_file($asal,$tujuan);
header('Location:admin.php');
}
else{
echo "FILE INVALID";
}
?>