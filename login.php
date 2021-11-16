<?php 
session_start();
require 'php/fungsi.php';


if( isset($_SESSION["login"]) ) {
	header("Location: tempaterkenal.php");
	exit;
}


if( isset($_POST["login"]) ) {

	$username = $_POST["username"];
	$password = $_POST["password"];

	$result = mysqli_query($conn, "SELECT * FROM user WHERE username = '$username'");
	// cek username
	if( mysqli_num_rows($result) === 1 ) {

		// cek password
		$row = mysqli_fetch_assoc($result);
		if( password_verify($password, $row["password"]) ) {
			// set session
			$_SESSION["login"] = true;
      $_SESSION['id'] = (int)$row['ID'];
			

			header("Location: tempaterkenal.php");
			exit;
		}
	}

	echo "<script>
        alert('username/password salah');
        </script>";

}

?>

<!DOCTYPE html>
<html>
  <head>
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="css/loginstyle.css">
  </head>
  <body>
    <div class="main-block">
      <div class="left-part">
       
        <h1>Login Ngopi</h1>
      </div>
      <form action="#" method="POST" id="formlog">
        <div class="title">
          <h2>Login</h2>
        </div>
      <div class="info">
        <input type="text" name="username" id="username" class="fname" placeholder="Username" required="">
        <input type="password" name="password" id="password" placeholder="Password" required="">
      </div>
      <div>
        <button name="login" type="submit" class="tombol">Login</button>
      </div>
      <p>Jika belum memiliki akun, klik <a target="_blank" href="form_registrasi.php">Sign Up</a>.</p>
      </div>
    </form>
    </div>
  </body>
</html>