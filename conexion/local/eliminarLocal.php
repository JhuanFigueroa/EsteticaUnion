<?php
//Abrir conexion al servidor SQL
require('../conexion.php');

if ($_SERVER['REQUEST_METHOD'] === 'GET') {
    $id=$_GET['id'];
    $query="update locales set locales.estatus=0 where id_local='$id'";
    $resultado = mysqli_query($db, $query);

    if ($resultado) {
        //Redireccionamos al usuario
        header('Location: ../../verLocales.php');
    }
}