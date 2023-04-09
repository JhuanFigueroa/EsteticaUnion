<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
  <meta name="generator" content="Hugo 0.88.1">
  <title>Checkout example · Bootstrap v4.6</title>

  <link rel="canonical" href="https://getbootstrap.com/docs/4.6/examples/checkout/">
  <link rel="stylesheet" href="signin.css">

  <link rel="stylesheet" href="fondo.css">
  <!-- Bootstrap core CSS -->
  <link href="assets/dist/css/bootstrap.min.css" rel="stylesheet">



  <style>
    .bd-placeholder-img {
      font-size: 1.125rem;
      text-anchor: middle;
      -webkit-user-select: none;
      -moz-user-select: none;
      -ms-user-select: none;
      user-select: none;
    }

    @media (min-width: 768px) {
      .bd-placeholder-img-lg {
        font-size: 3.5rem;
      }
    }
  </style>


  <!-- Custom styles for this template -->
  <link href="form-validation.css" rel="stylesheet">
</head>

<body class="bg-light">

  <div class="container">
    <div class="py-5 text-center">
      <img width="600px" height="100px"  src="IMG/logo2.png" alt="" width="72" height="72" >
    </div>

    <h4 class="mb-3">Crear usuario</h4>
    <form class="needs-validation" action="conexion/crearUsusario.php" method="POST">
      <div class="row">
        <div class="col-md-6 mb-3">
          <label for="nombre">Nombre</label>
          <input type="text" class="form-control" id="nombre" name="nombre" placeholder="" value="" required>
          <div class="invalid-feedback">
            Escribe tu Nombre
          </div>
        </div>
        <div class="col-md-6 mb-3">
          <label for="apellido">Apellido</label>
          <input type="text" class="form-control" id="apellido" name="apellido" placeholder="" value="" required>
          <div class="invalid-feedback">
            Escribe tu Apellido
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-6 mb-3">
          <label for="firstName">Telefono</label>
          <input type="text" class="form-control" id="telefono" name="telefono" placeholder="" value="" required>
          <div class="invalid-feedback">
            Escribe tu Apellido
          </div>
        </div>
        <div class="col-md-6 mb-3">
          <label for="email">Email</label>
          <input type="text" class="form-control" id="email" name="email" placeholder="" value="" required>
          <div class="invalid-feedback">
            Escribe tu Email
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-6 mb-3">
          <label for="password">Contraseña</label>
          <input type="text" class="form-control" id="password" name="password" placeholder="" value="" required>
          <div class="invalid-feedback">
            Escribe tu Contraseña
          </div>
        </div>
      </div>
      <hr class="mb-4">
      <button class="btn btn-primary btn-lg btn-block" type="submit">Crear</button>
    </form>

    <footer class="my-5 pt-5 text-muted text-center text-small">
      <p class="mb-1">&copy; 2021</p>
    </footer>
  </div>


  <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
  <script>
    window.jQuery || document.write('<script src="../assets/js/vendor/jquery.slim.min.js"><\/script>')
  </script>
  <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>


  <script src="form-validation.js"></script>
</body>

</html>