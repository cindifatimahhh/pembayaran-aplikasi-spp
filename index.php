<!DOCTYPE HTML>
<html>
    <head>
        <title>Login</title>
        <link rel="stylesheet" href="style.css">
    </head>

    <body>
        <div class="container">
          <h1>Siswa</h1>
               <div class="card-body">
                    <form action="proses_login_siswa.php" method="post">
                    <div class="form-group mb-3">
                    <label>Nisn</label>
                    <input type="number" name="nisn" class="form-control" placeholder="Masukan nisn anda...." required>
                    </div>
                    <div class="form-group mb-3">
                    <label>Nis</label>
                    <input type="number" name="nis" class="form-control" placeholder="Masukan nis anda...." required>
                        </div>
                    <div class="form-group mb-2">
                    <button type="submit" class="btn btn-primary">LOGIN</button>
                        </div>
                        <a href="index2.php">Login sebagai petugas</a>
                    </form>
                </div>
            </div>
    </body>
</html>

