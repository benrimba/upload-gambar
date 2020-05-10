# Cara Upload Gambar Sekaligus Banyak di Php7 dan MySQL
Untuk videonya bisa liat di [RudiEdukasi](https://www.youtube.com/watch?v=RJwGHbXBgjk)

### file index.php
```html
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  </head>
  <body>
    <br>
  <div class="row">
     <div class="col"></div>
     <div class="col">
       <div class="card">
          <div class="card-header card bg-info text-white">INPUT DATA GAMBAR</div>
          <div class="card-body">
            <form action="proses.php" method="POST" enctype="multipart/form-data">
               <div class="form-group">
                 <label for="email">Upload Gambar</label>
                 <input type="file" name="gbr[]" multiple>
               </div>
               <button type="submit" class="btn btn-primary">Upload</button>
              </form>
          </div>
          <div class="card-footer card bg-info text-white">Footer</div>
        </div>
     </div>
     <div class="col"></div>
   </div>
  </body>
</html>
```
### file proses.php
```php
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
```
