<?php require_once("../includes/db_connection.php");?>
<?php
$file=$_FILES['gbr'];
$file_ext= strtolower(end(explode(".", $file['name'])));
$ext_boleh= array("jpg","png","gif");
$asal= $file['tmp_name'];
$tujuan = "uploads/".$file['name'];
if(in_array($file_ext, $ext_boleh) && $file['size']<=5*500*500){
move_uploaded_file($asal,$tujuan);
echo "FILE BOLEH DI UPLOAD";
}
else{
echo "FILE INVALID";
}
?>