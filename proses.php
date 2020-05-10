<?php
 $con = new mysqli('localhost','root','','dbupload');
 $path = 'gambar/';
 $a = $_FILES['gbr']['name'];
 $jml = count($a);
 for ($i=0; $i < $jml ; $i++) {
   $b = $a[$i];
   $c = $_FILES['gbr']['tmp_name'][$i];
   move_uploaded_file($c,$path.$b);
   $sql = $con->query("INSERT INTO tbgambar VALUES ('','$b')");
  }
    if($sql){
      echo"Data gambar berhasil masuk..";
    }else{
      echo"terjadi kesalahan..";
    }
 ?>
