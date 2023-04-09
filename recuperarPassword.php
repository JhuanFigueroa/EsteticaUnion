<?php
    $token=$_GET['token'];
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- Bootstrap core CSS -->
  <link href="assets/dist/css/bootstrap.min.css" rel="stylesheet">


<link href="signin.css" rel="stylesheet">
</head>
<body>

   <form class="form-signin" method="POST" action="conexion/recuperarPassword.php">
    <img class="mb-4" src="IMG/LogoBlack.png" alt="" width="72" height="72">
    <h1 class="h3 mb-3 font-weight-normal">Nueva contraseña</h1>
    <input type="hidden" name="token" value=<?php echo "$token";?>>
    <input type="password" id="email" name="password" class="form-control" placeholder="contraseña">
    <button name="inicio" class="btn btn-lg btn-primary btn-block mt-5 " type="submit">Recuperar</button>
    <form action="conexion/instrucciones.php" method="post">
    <p>&copy; 2022</p>
  </form>

</body>
</html>