<?php
require 'conexion.php';
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require '../PHPMailer/src/Exception.php';
require '../PHPMailer/src/PHPMailer.php';
require '../PHPMailer/src/SMTP.php';

$email=$_POST['email'];


$query="
select id_usuarios,nombre from usuario where email='$email' and confirmado='1'
";

$result=mysqli_query($db,$query);

if ($result) {
    $cliente=mysqli_fetch_array($result);
    $nombre=$cliente[1];    
    $token=uniqid();
    
    $queryToken="
    update usuario set token='$token' where id_usuarios='$cliente[0]';
    ";
    $resultToken=mysqli_query($db,$queryToken);

    enviarInstrucciones($email,$nombre,$token);

    header('Location: ../index.php?res=5');
}else{
    header('Location: ../index.php?res=3');
}



function enviarInstrucciones($email, $nombre, $token) {

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

    $mail->setFrom('cuentas@appsalon.com');
    $mail->addAddress('cuentas@appsalon.com', 'AppSalon.com');
    $mail->Subject = 'Reestablece tu password';

    // Set HTML
    $mail->isHTML(TRUE);
    $mail->CharSet = 'UTF-8';

    $contenido = '<html>';
    $contenido .= "<p><strong>Hola " . $nombre .  "</strong> Has solicitado reestablecer tu password, sigue el siguiente enlace para hacerlo.</p>";
    $contenido .= "<p>Presiona aquí: <a href='https://estetica-union.online/recuperarPassword.php?token=" . $token . "'>Reestablecer Password</a>";        
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
?>