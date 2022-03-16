<?php

require_once('PHPMailer/PHPMailerAutoload.php');
$mail = new PHPMailer();
$mail ->isSMTP();
$mail ->SMTPAuth = true;
$mail ->SMTPSecure ='ssl';
$mail ->Host ='smtp.gmail.com';
$mail ->Port = '465';
$mail ->isHTML();
$mail ->Username = 'coursecorrect00@gmail.com';
$mail ->Password = 'courseCorrect!';
$mail ->SetFrom('no-reply@coursecorrect.org');
$mail ->Subject ='Test Mail';
$mail ->Body = 'Hello sir.';
$mail -> AddAddress($_POST["email"]); /* make this $email and post it from form. */
$mail ->Send();

?>