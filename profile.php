<?php
session_start(); 
require 'php/fungsi.php';
$geblek = $_SESSION['id'];
$user = query("SELECT * FROM user WHERE ID = $geblek");
?>

<!DOCTYPE html>
<html>
<head>
    <style type="text/css">
        #page-content{
			align-items: center;
			margin-top: 8%;
		}
	</style>
	<title>Profile</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/profilestyle.css">
</head>
<body>
	<nav id="topbar">
	      <ul class="main-list">
          <li class="main-list-item"><a href="tempaterkenal.php">Home</a></li>
          <li class="main-list-item"><a href="marketplace.html">Marketplace</a></li>
          <li class="main-list-item"><a href="logout.php">Log Out</a></li>
      	</ul>
<div class="page-content page-container container" id="page-content">
    <div class="padding">
        <div class="row container d-flex justify-content-center">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body text-center">
                        <div> <img src="images/<?php echo $user[0]['gambar'] ?>" class="img-lg mb-4" width ="130px;" alt="profile image">
                            <h4><?php echo $user[0]['namalengkap'] ?></h4>
                        </div>
                        <div class="border-top pt-3">
                            <p>Nomor Telepon : <?php echo $user[0]['telepon'] ?></p><hr>
                            <p>Email : <?php echo $user[0]['email'] ?></p>
                            <p>Alamat : <?php echo $user[0]['alamat'] ?> </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>