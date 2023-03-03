<!DOCTYPE HTML>
<html>
    <head>
        <title>Login</title>
        <link rel="stylesheet" href="style.css">
    </head>

    <body>
        <div class="container">
          <h1>Admin</h1>
               <div class="card-body">
                    <form action="proses_login_petugas.php" method="post">
                    <div class="form-group mb-3">
                    <label>Username</label>
                    <input type="text" name="username" class="form-control" placeholder="Masukan username anda...." required>
                    </div>
                    <div class="form-group mb-3">
                    <label>Password</label>
                    <input type="password" name="password" class="form-control" placeholder="Masukan password anda...." required>
                        </div>
                    <div class="form-group mb-2">
                    <button type="submit" class="btn btn-primary">LOGIN</button>
                        </div>
                        <a href="index.php">Login sebagai siswa</a>
                    </form>
                </div>
            </div>
    </body>
</html>
