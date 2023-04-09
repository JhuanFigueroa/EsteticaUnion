<?php
require 'conexion/conexion.php';

if (!isset($_SESSION)) {
  session_start();
}

require 'conexion/conexion.php';
$auth = $_SESSION['admin'] ?? false;
$user = $_SESSION['usuario'];
$idUser = $_SESSION['idUsuario'];
if ($user) {


?>

  <!DOCTYPE html>
  <html lang="en">

  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Agregar cita</title>
    <link rel="stylesheet" href="plugins/jqvmap/jqvmap.min.css">
    <link rel="stylesheet" href="dist/css/adminlte.min.css">
    <link rel="stylesheet" href="inicioUser.css">
  </head>

  <body>

    <main class="contenedor-principal">


      <header class="content-header header2">
        <h2 class="NombreUsuario"><?php echo $user; ?></h2>
        <a href="./cerrarSesion.php" class="btn btn-secondary boton">Cerrar sesion</a>
        <a href="inicioUser.php"> <img src="IMG/logo2.png" class="img"></a>
      </header>
      <span class="placeholder col-12 bg-secondary"></span>

      <nav>
        <h3>Citas</h3>
      </nav>


      <section class="fondo12">
        <section class="section">

          <section class="form-add-cita ">
            <div class="columns ">
              <div class="col-md-15 mb-3">
                <form action="conexion/citas/crearCita.php" method="POST">

                  <input type="hidden" name="idUsuario" value=<?php echo "$idUser"; ?>>
                  <label for="alias">Alias</label>
                  <input type="text" class="form-control" id="alias" name="alias" placeholder="" value="" required>
                  <div class="invalid-feedback">
                    Escribe el Alias
                  </div>
              </div>
              <div class="col-md-15 mb-3">
                <label for="fecha">Fecha</label>
                <input type="date" class="form-control" id="fecha" name="fecha" placeholder="" value="" required>
                <div class="invalid-feedback">
                  Escribe la Fecha
                </div>
              </div>
              <div class="col-md-15 mb-3">
                <label for="hora">Hora</label>
                <input type="time" width="500px" class="form-control" id="hora" name="hora" placeholder="" value="" required>
                <div class="invalid-feedback">
                  Escribe la Hora
                </div>
              </div>
              <div class="form-group">
                <label for="local">Local</label>
                <select class="form-control" id="local" name="local">
                  <option value="">---SELECCIONE---</option>
                  <?php
                  $query = "Select * from locales where estatus='1'";
                  $result = mysqli_query($db, $query);
                  while ($local = mysqli_fetch_array($result)) {
                    echo "
                        <option value='$local[0]'>$local[1]</option>
                     ";
                  }
                  ?>
                </select>
              </div>
            </div>
            <section class="servicios">
              <h4>Servicios</h4>
              <?php
              $query = "call proc_consul_servicios()";
              $result = mysqli_query($db, $query);
              while ($servicio = mysqli_fetch_array($result)) {
                echo "
                <div class='form-check form-switch'>
                <input class='form-check-input' type='checkbox' name='servicios[]' id='servicio' value='$servicio[0]' >
                <label class='form-check-label' for='servicio'>$servicio[1] $$servicio[2]</label>
              </div>
                    ";
              }
              ?>
            </section>
          </section>

          <hr class="mb-4">

          <button class="btn btn-primary btn-lg btn-block" type="submit" id="btnInsertar">Insertar</button>
          </form>
        </section>


      </section>


      <footer>
        <h4>@2022</h4>
      </footer>
    </main>
  </body>

  <script src="validarForm.js"></script>

  </html>
<?php
} else {
  header('Location:index.php');
}
?>