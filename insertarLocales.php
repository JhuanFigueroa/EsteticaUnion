<?php
if (!isset($_SESSION)) {
  session_start();
}

require 'conexion/conexion.php';
$auth = $_SESSION['admin'] ?? false;
$user = $_SESSION['usuario'];

if ($auth) {
?>
  <!DOCTYPE html>
  <html lang="en">

  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Insertar locales</title>
    <link rel="stylesheet" href="css/stylesinsertarlocales.css">
    <link rel="stylesheet" href="plugins/jqvmap/jqvmap.min.css">
    <link rel="stylesheet" href="dist/css/adminlte.min.css">
    <link rel="stylesheet" href="inicio.css">

  </head>

  <body>

    <main class="contenedor-principal">


      <header class="content-header header2">
        <h2 class="NombreUsuario"><?php echo $user; ?></h2>
        <a href="./cerrarSesion.php" class="btn btn-secondary boton">Cerrar sesion</a>
        <a href="inicio.php"> <img src="IMG/logo2.png" class="img"></a>
      </header>
      <span class="placeholder col-12 bg-secondary"></span>

      <aside class="aside1">
        <a class="brand-link aside1 menu2">
          <img src="IMG/logoblanco.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
          <span class="brand-text font-weight-light">Estetica Union</span>
        </a>
        <a class="brand-link text-center men">
          <label>MENU</label>
        </a>
        <a class="brand-link">
          <a href="InsertarServicio.php" class="btn btn-primary btnasid">Insertar Servicio</a>
          <br><br>
          <a href="verservicios.php" class="btn btn-primary btnasid">Ver servicios</a>
          <br><br>
          <a class="btn btn-danger btnasid" href="insertarLocales.php">Insertar Locales</a>
          <br><br>
          <a class="btn btn-danger btnasid" href="verLocales.php">Ver Locales</a>
        </a>
      </aside>
      <nav>
        <h3>Insertar Local</h3>
      </nav>


      <section class="fondo12">
        <section class="columns">
          <form action="conexion/local/crearLocal.php" method="post">
            <div class="row">
              <div class="col-md-6 mb-3">
                <label for="firstName">Nombre del local</label>
                <input type="text" class="form-control" id="nombre" name="nombre" placeholder="" value="" required>
                <div class="invalid-feedback">
                  Escribe el nombre.
                </div>
              </div>
              <div class="col-md-6 mb-3">
                <label for="lastName">Direccion</label>
                <input type="text" class="form-control" id="direccion" name="direccion" placeholder="" value="" required>
                <div class="invalid-feedback">
                  Escribe bien la direcion.
                </div>
              </div>
            </div>
            <section class="row">
              <button class="btn btn-primary btn-lg btn-block" type="submit">Insertar</button>
            </section>
          </form>
        </section>
      </section>


      <footer>
        <h4>@2022</h4>
      </footer>
    </main>
  </body>

  </html>
<?php
} else {
  header('Location:index.php');
}
?>