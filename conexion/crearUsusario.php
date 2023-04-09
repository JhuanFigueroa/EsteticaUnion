<?php


require 'conexion.php';
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require '../PHPMailer/src/Exception.php';
require '../PHPMailer/src/PHPMailer.php';
require '../PHPMailer/src/SMTP.php';

$nombre=$_POST['nombre'];
$apellido=$_POST['apellido'];
$telefono=$_POST['telefono'];
$email=$_POST['email'];
$password=$_POST['password'];

//Encriptar Contraseña
$password=password_hash($password,PASSWORD_BCRYPT);

$token=uniqid();

enviarConfirmacion($email,$nombre,$token);

$query="call proc_insertar_usuario('$nombre','$apellido','$telefono','$email','$password','$token')";

$result=mysqli_query($db,$query);

if ($result) {
    header('Location: ../index.php?res=2');
}else{
    $error=mysqli_error($db);
    echo "<h2>eroor:$error</h2>";
}






     function enviarConfirmacion($email, $nombre, $token) {

         // create a new object
         $mail= new PHPMailer();
         $mail->isSMTP();
         $mail->Host = 'smtp.hostinger.com';
         $mail->SMTPAuth = true;
         $mail->Port = 587;
         $mail->Username = 'union@estetica-union.online';
         $mail->Password = 'esteticaUnion#1';
     
         $mail->setFrom('union@estetica-union.online','Estetica Union');
         $mail->addAddress("$email","$nombre");
         $mail->Subject = 'Confirma tu Cuenta';

         // Set HTML
         $mail->isHTML(TRUE);
         $mail->CharSet = 'UTF-8';

         $contenido = '<html>';
         $contenido .= "<p><strong>Hola " . $nombre .  "</strong> Has Creado tu cuenta en Estetica union, solo debes confirmarla presionando el siguiente enlace</p>";
         $contenido .= "<p>Presiona aquí: <a href='https://estetica-union.online/confirmar_cuenta.php?token=" . $token . "'>Confirmar Cuenta</a>";        
         $contenido .= "<p>Si tu no solicitaste este cambio, puedes ignorar el mensaje</p>";
         $contenido .= '</html>';
         $mail->Body = $contenido;

         //Enviar el mail
         if ($mail->send()) {
            echo "<h2>Mensaje enviado</h2>";
         }else{
            echo "<h2>Error de envio</h2>";
         }

    }

 

  
