<?php
require 'conexion.php';
$password=$_POST['password'];
$token=$_POST['token'];
//Encriptar Contraseña
$password=password_hash($password,PASSWORD_BCRYPT);


$query="
call cambiar_password('$token','$password')
";
$result=mysqli_query($db,$query);

if ($result) {
    header('Location: ../index.php?res=4');
}else{
    $error=mysqli_error($db);
    echo "<h2>eroor:$error</h2>";
}
?>