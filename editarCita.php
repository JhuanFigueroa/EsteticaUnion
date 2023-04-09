<?php
require 'conexion/conexion.php';

if (!isset($_SESSION)) {
  session_start();
}

require 'conexion/conexion.php';
$auth = $_SESSION['admin'];
$user = $_SESSION['usuario'];
$idUser = $_SESSION['idUsuario'];
$cita = $_GET['id'];
if ($user) {

  $queryCita = "
  SELECT
	cita.alias, 
	cita.fecha, 
	cita.hora, 
	locales.id_local
FROM
	cita
	INNER JOIN
	locales
	ON 
		cita.idlocal = locales.id_local
		
		where cita.id_cita='$cita'";

  $resultCita = mysqli_query($db, $queryCita);
  $citaArray = mysqli_fetch_array($resultCita);

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
        <section class="agregarcita">

          <form action="conexion/citas/editarCita.php" method="POST">
            <section class="form-add-cita">
              <div class="columns asd">
                <div class="col-md-15 mb-3">
                  <input type="hidden" name="idCita" value=<?php echo "$cita"; ?>>
                  <label for="alias">Alias</label>

                  <input type="text" class="form-control" id="alias" name="alias" placeholder="" value="<?php echo $citaArray[0]; ?>" required>
                  <div class="invalid-feedback">
                    Escribe el Alias
                  </div>
                </div>
                <div class="col-md-15 mb-3">
                  <label for="fecha">Fecha</label>
                  <input type="date" class="form-control" id="fecha" name="fecha" placeholder="" value="<?php echo $citaArray[1]; ?>" required>
                  <div class="invalid-feedback">
                    Escribe la Fecha
                  </div>
                </div>
                <div class="col-md-15 mb-3">
                  <label for="hora">Hora</label>
                  <input type="time" width="500px" class="form-control" id="hora" name="hora" placeholder="" value="<?php echo $citaArray[2]; ?>" required>
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
                      if ($local[0] == $citaArray[3]) {
                        echo "
                     <option value='$local[0]' selected>$local[1]</option>

                     ";
                      } else {
                        echo "
                       <option value='$local[0]'>$local[1]</option>
                       ";
                      }
                    }
                    ?>
                  </select>
                </div>
              </div>
              <section class="servicios">
                <h4>Servicios</h4>
                <?php
                $queryServ_cita = "
                SELECT
                  servicio.id_servicio
                FROM
                  servicio
                  INNER JOIN
                  detalle_cita
                  ON 
                    servicio.id_servicio = detalle_cita.id_servicio_dcita
                  INNER JOIN
                  cita
                  ON 
                    detalle_cita.id_cita_dcita = cita.id_cita
                WHERE
                  cita.id_cita = '$cita'
              ";

              $resultServ_cita=mysqli_query($db,$queryServ_cita);
              $servicios_cita=[];
              while ( $servicio_cita=mysqli_fetch_array($resultServ_cita)) {
                array_push($servicios_cita,$servicio_cita[0]);
              }

                $i=0;

                $query = "call proc_consul_servicios()";
                $result = mysqli_query($db, $query);
                while (($servicio = mysqli_fetch_array($result))) {
                  if ($servicios_cita[$i]==$servicio[0]) {
                    echo "
                    <div class='form-check form-switch'>
                    <input class='form-check-input' type='checkbox' name='servicios[]' id='servicio' value='$servicio[0]' checked >
                    <label class='form-check-label' for='servicio'>$servicio[1] $$servicio[2]</label>
                  </div>
                        ";
                        $i++;
                  }else{
                    echo "
                    <div class='form-check form-switch'>
                    <input class='form-check-input' type='checkbox' name='servicios[]' id='servicio' value='$servicio[0]' >
                    <label class='form-check-label' for='servicio'>$servicio[1] $$servicio[2]</label>
                  </div>
                        ";
                  }
                }
                ?>
              </section>
            </section>

            <hr class="mb-4">
            <button class="btn btn-primary btn-lg btn-block" type="submit"  id="btnInsertar">Acutalizar</button>

        </section>

        </form>
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