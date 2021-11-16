<?php 
require 'php/fungsi.php';
session_start();
if( isset($_POST["register"]) ) {
	if( registrasi($_POST) > 0 ) {
    $nama = $_POST['username'];
    $result = mysqli_query($conn, "SELECT * FROM user WHERE username = '$nama'");
    $row = mysqli_fetch_assoc($result);
    $_SESSION["login"] = true;
    $_SESSION['id'] = (int)$row['ID'];
		echo "<script>
        alert('user baru berhasil ditambahkan!');
        window.location.href='tempaterkenal.php';
        </script>";
	} else {
		echo mysqli_error($conn);
	}
}
?>

<!DOCTYPE html>
<html>
  <head>
    <title>Registrasi</title>
    <link rel="stylesheet" type="text/css" href="css/registrasistyle.css">
  </head>
  <body>
    <div class="main-block">
      <div class="left-part">
        <h1>Daftarkan Diri Anda</h1>
      </div>
      <form id="formreg" method="post" enctype="multipart/form-data">
        <div class="title">
          <h2>Daftar disini</h2>
        </div>
        <div class="info">
          <input class="fname" type="text" name="nama" placeholder="Nama Lengkap" required="">
          <input class="fname" type="text" name="username" placeholder="Username" required="">
          <input type="password" name="password" placeholder="Password" required="">
          <input type="text" name="email" placeholder="Email" required="">
          <input type="text" name="notelp" placeholder="Nomor Telepon" required="">
          <input type="text" name="alamat" placeholder="Alamat" required="">
        </div>
        <div class="mb-3">
          <label for="gambar" class="form-label">Foto profil</label>
          <input class="form-control" type="file" id="gambar" name="gambar">
        </div>
        <div class="checkbox">
          <input type="checkbox" name="checkbox" required=""><span>Saya setuju dengan seluruh <a href="#">Kebijakan dan Peraturan yang berlaku.</a></span>
        </div><br>
        <button type="submit" class="tombol" name="register">Sign Up</a></button>
      </form>
    </div>
  </body>
</html>