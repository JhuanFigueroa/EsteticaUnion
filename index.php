<?php
require 'conexion/conexion.php';


//Validar formulario
$errores = [];
if(isset($_GET['res'])){
  $res = $_GET['res'];
  if ($res == 1) {
    $errores[] = "¡Cuenta confirmada!";
  }
  if ($res == 2) {
    $errores[] = "¡Confirma tu cuenta, hemos enviado un email con intrsucciones para confirmar tu cuenta!";
  }
  if ($res == 3) {
    $errores[] = "¡Correo invalido o cuenta sin confirmar!";
  }
  if ($res == 4) {
    $errores[] = "¡Contrseña restablecida";
  }
  if ($res == 5) {
    $errores[] = "¡Recupera tu password, hemos enviado un email con intrsucciones para recuperarla!";
  }
}
  if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $email = $_POST['email'];
    $password = $_POST['password'];
    if (!$email) {
      $errores[] = "¡El email es obligatorio o no es valido!";
    }
    if (!$password) {
      $errores[] = "¡La contraseña es obligatoria!";
    }
    if (empty($errores)) {

      $query = "select id_usuarios,concat(nombre,' ',apellido1), permiso, contrasenia, confirmado from usuario where email='$email'";
      $resultado = mysqli_query($db, $query);
      $user = mysqli_fetch_array($resultado);
      if ($resultado->num_rows) {

        $login = password_verify($password, $user[3]);

        //Variables de sesion
        if ($login) {
          if ($user[4] == 1) {
            session_start();
            $_SESSION['usuario'] = $user[1];
            $_SESSION['admin'] = false;
            $_SESSION['idUsuario'] = $user[0];


            if ($user[2] == 1) {
              $_SESSION['admin'] = true;
              header('Location: inicio.php');
            } else {
              header('Location: inicioUser.php');
            }
          } else {
            $errores[] = "Tu cuenta aun no esta confirmada!";
          }
        } else {
          $errores[] = "Contraseña incorrecta!";
        }
      } else {
        $errores[] = "Usuario incorrecto!";
      }
    }
  }

?>
<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
  <meta name="generator" content="Hugo 0.88.1">
  <title>Estetica</title>



  <!-- Bootstrap core CSS -->
  <link href="assets/dist/css/bootstrap.min.css" rel="stylesheet">


  <link href="signin.css" rel="stylesheet">
</head>

<body class="text-center">

  <form class="form-signin" method="POST" action="index.php">
    <img class="mb-4" src="IMG/LogoBlack.png" alt="" width="72" height="72">
    <h1 class="h3 mb-3 font-weight-normal">Bienvenido</h1>
    <h1 class="h3 mb-3 font-weight-normal">a</h1>
    <h1 class="h3 mb-3 font-weight-normal">"Estetica Union"</h1>
    <?php
    foreach ($errores as $error) : ?>
      <div class="alerta error">
        <?php echo $error; ?>
      </div>

    <?php endforeach; ?>
    <input type="text" id="email" name="email" class="form-control" placeholder="Email">
    <input type="password" id="password" name="password" class="form-control" placeholder="Contraseña">
    <button name="inicio" class="btn btn-lg btn-primary btn-block" type="submit">Inicio</button>
    <br>
    <br>
    <a href="crearUsuario.php" class="btn btn-light">Registrarse</a>
    <a href="olvidePassword.php" class="btn btn-light">Recuperar contraseña</a>
    <br><br>
    <p>&copy; 2022</p>
  </form>
</body>

</html>