<?php 
if( isset($_SESSION["login"]) ) {
	header("Location: tempaterkenal.php");
	exit;
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@500&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
    integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />

  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="stylesheet" href="css/style.css" type="text/css" />
  <title>Ngopilah</title>
</head>

<body>
  <header>
    <nav>
      <div class="main">
        <ul class="main-list">
          <li class="main-list-item"><a href="index.php">Home</a></li>
          <li class="main-list-item"><a href="login.php">Login</a></li>
          <li class="main-list-item"><a href="form_registrasi.php">Sign Up</a></li>
        </ul>
      </div>
    </nav>
   

    
    <div class="title">
      <span class="heading">Welcome to Ngopilah</span>
    </div>
  </header>
  

  
  <div class="page-wrapper">
    <main>
      <section>
        <div class="page-wrapper">
          <div class="history">
            <h1 class="history-heading1">Manfaat Kopi</h1>
            <span class="history-caption"></span>
            <hr />

            <!-- Etymology -->
            <h3 class="history-heading2">Kopi</h3>
            <p class="history-para">
              Bagi banyak orang, manfaat kopi selama ini hanya dianggap sebagai penambah energi kala menyambut hari, atau saat mengantuk. Padahal, banyak penelitian yang mengungkapkan bahwa kopi juga memiliki berbagai manfaat bagi kesehatan.

Kopi merupakan salah satu minuman paling populer di dunia. Kopi murni yang dikonsumsi tanpa gula maupun susu, mengandung antioksidan tinggi dan beberapa nutrisi yang bermanfaat bagi tubuh, seperti riboflavin (vitamin B2), asam pantotenat (vitamin B5), mangan, kalium, natrium, magnesium, dan niacin (vitamin B3).


            </p>
            
        
           
            <h3 class="history-heading2">Ekonomi</h3>
            <p class="history-para">Kopi merupakan salah satu komoditas andalan dalam sektor perkebunan Indonesia. Peran komoditas kopi bagi
perekonomian Indonesia cukup penting, baik sebagai sumber pendapatan bagi petani kopi, sumber devisa, penghasil
bahan baku industri, maupun penyedia lapangan kerja melalui kegiatan pengolahan, pemasaran, dan perdagangan
(ekspor dan impor). Amerika Serikat merupakan negara pengimpor produk kopi terbesar pertama di Indonesia.
Permintaan ekspor produk kopi Indonesia ke pasar Amerika Serikat (AS) terbilang cukup tinggi, namun selain
mengimpor kopi dari Indonesia AS juga melakukan impor kopi dari negara-negara pengekspor kopi lainnya di dunia
untuk memenuhi jumlah kebutuhan kopi di AS. Kendala yang dihadapi adalah hambatan bahan baku, rendahnya jumlah
produksi, distribusi dan teknologi.
 .</p>
           
            

            
            
            </div>


            
          </div>
        </div>
      </section>
    </main>
  </div>
  



</body>

</html>