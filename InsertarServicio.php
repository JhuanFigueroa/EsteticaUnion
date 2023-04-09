<?php
if (!isset($_SESSION)) {
  session_start();
}
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
    <title>Insertar Servicio</title>
    <link rel="stylesheet" href="css/stylesInsertar.css">
    <link rel="stylesheet" href="plugins/jqvmap/jqvmap.min.css">
    <link rel="stylesheet" href="dist/css/adminlte.min.css">
    <link rel="stylesheet" href="inicio.css">

  </head>

  <body>
    <main class="contenedor-principal">


    <header class="content-header header2">
          <h2 class="NombreUsuario"><?php echo $user; ?></h2>
          <a href="cerrarSesion.php" class="btn btn-secondary boton">Cerrar sesion</a>
          <img src="IMG/logo2.png" class="img">
        </header>


        <aside class="aside1">
          <a class="brand-link men aside1">
            <img src="IMG/logoblanco.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
            <span class="brand-text font-weight-light">Estetica Union</span>
          </a>
          <a class="brand-link text-center men">
            <label>MENU</label>
          </a>
          <a class="brand-link botones">
            
            <a href="verservicios.php" class="btn btn-primary btnasid1">Ver servicios</a>
            <br><br>
            <a class="btn btn-danger btnasid" href="insertarLocales.php">Insertar Locales</a>
            <br><br>
            <a class="btn btn-primary btnasid1" href="verLocales.php">Ver Locales</a>
            <br><br>
            <a class="btn btn-danger btnasid1" href="inicio.php">inicio</a>
          </a>
        </aside>


        <nav>
          <h3>Insertar Servicio</h3>
        </nav>
        <span class="placeholder col-12 bg-secondary"></span>
      

      <section class="fondo12">
        <section class="columns">
          <form action="./conexion/servicios/crearServicio.php" method="post">
            <div class="row">
              <div class="col-md-6 mb-3">
                <label for="firstName">Servicio</label>
                <input type="text" class="form-control" id="servicio" name="servicio" placeholder="" value="" required>
                <div class="invalid-feedback">
                  Escribe em el campo.
                </div>
              </div>
              <div class="col-md-6 mb-3">
                <label for="lastName">Precio</label>
                <input type="text" class="form-control" id="precio" name="precio" placeholder="" value="" required>
                <div class="invalid-feedback">
                  Debe de ser tipo numerico.
                </div>
              </div>
            </div>
            <section class="row">
              <div class="col-md-15 mb-3">
                <label for="firstName">Tiempo</label>
                <input type="text" class="form-control" id="tiempo" name="tiempo" placeholder="" value="" required>
                <div class="invalid-feedback">
                  Escribe el Tiempo
                </div>
              </div>
            </section>
            <section class="row">
              <button class="btn btn-primary btn-lg btn-block" type="submit">insertar</button>
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