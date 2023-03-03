<?php 
session_start();
if ($_SESSION['level']!='nisn') {
	echo"<script>alert('maaf anda bukan sesi admin');window.localhost.assin('../index.php');
		</script>";
}
 ?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="witdh-device-width,intial-scale-1">
	<title>Siswa-Aplikasi Pembayaran SPP.</title>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css" rel="stylesheet">
</head>
<body style="background-color: lightblue;">
<div class="container mt=5">
	<h3>Aplikasi pembayaran spp</h3>
	<div class="alert alert-info">
		Anda login sebagai Siswa <b><?= $_SESSION['nama']?></b> Aplikasi pembayaran spp.
	</div>	
	<a href="siswa.php" class="btn btn-primary">Siswa</a>
	<a href="siswa.php?url=logout" class="btn btn-primary">logout</a>
 	
 	<div class="card mt-2">
 		<div class="card-body">
 			<!-- ini isi web saya -->
 
 			<?php
 			$file = @$_GET['url'];
 			if(empty($file)){
 				echo "<h4>Selamat Datang Di Halaman siswa</h4>";
 				echo "Aplikasi pembayaran spp digunakan untuk mempermudah dalam mencatat pembayarn siswa / siswi";
 				echo "<hr>";
 				include'history-pembayaran.php';
 			}else{
 				include $file.'.php';
 			}

 			  ?>
 		</div>
 	</div>
</div>

<script src="../js/bootstrap.bundle.min.js "></script>
</body>
</html>