<?php

require 'conexion/conexion.php';

$token = $_GET['token'];


$query = "
call proc_autenticar_user('$token');
";
$result = mysqli_query($db, $query);

if ($result) {
    header('Location: index.php?res=1');
} else {
    $error = mysqli_error($db);
    echo "<h2>eroor:$error</h2>";
}
