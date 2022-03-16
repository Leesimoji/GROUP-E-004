<?php

if(isset($_POST["reset-request-submit"])){
//token info from this tutorial https://www.youtube.com/watch?v=wUkKCMEYj9M&ab_channel=DaniKrossing
$selector = bin2hex(random_bytes(8));
//convert it to hex format for later. Token wants to go to database in normal format so change it later
//one token for database to check the user with when they are back to the website and one for checking its the right user - can help against timing attacks - Dani Krossing
$token = random_bytes(32);
$url = "https://localhost:4430/CMM004/create-new-password.php?selector=". $selector . "&validator=" . bin2hex($token);//this allows me to include the tokens with a Get method but not working

$expires = date("U") + 900; //sets the url to change password to be valid for half an hour only

require 'connect.php';

$useremail = $_POST["email"];
$sql= "SELECT * FROM login_course_correct Where useremail=?";
$stmt=$connection ->prepare($sql);
$stmt -> bind_param('s', $useremail);
$stmt -> execute();
$result = $stmt ->get_result();
if ($result->num_rows==1){

$sql ="DELETE FROM passwordrst WHERE passwordrstemail=?";
$stmt = mysqli_stmt_init($connection); //initialises the connection
if(!mysqli_stmt_prepare($stmt, $sql)){//if it fails create an error message
    echo "Connection error to database";
    exit();
} else{
    mysqli_stmt_bind_param($stmt, "s", $useremail); //puts in the user input data
    mysqli_stmt_execute($stmt);
}

$sql="INSERT INTO passwordrst (passwordrstemail, passwordrstselector, passwordrsttoken, passwordrstexpires) VALUES (?,?,?,?);";
$stmt = mysqli_stmt_init($connection);
if(!mysqli_stmt_prepare($stmt, $sql)){
    echo "Connection error to database";
    exit();
} else{
    $hashedtoken =password_hash($token, PASSWORD_DEFAULT);//hash the token
    mysqli_stmt_bind_param($stmt, "ssss", $useremail, $selector, $hashedtoken, $expires);
    mysqli_stmt_execute($stmt);
}
mysqli_stmt_close($stmt);
mysqli_close();
//sending the email
/*$to = $useremail;
$subject ='Reset your password for Course Correct';
$message ='<p>We received a request. If you did not request this acgtion please report this with your institutions IT support team</p>';
$message .= '<p> Here is your password reset link: </br>';
$message .= '<a href="'. $url . '">' . $url . '</a></p>';

$headers = "From help@coursecorrect <coursecorrect00@gmail.com>\r\n";//info sent to mail function. I want to say it is from 
$headers .= "Reply-To: coursecorrect00@gmail.com\r\n>";

mail($to, $subject, $message, $headers);
*/

//include 'mail.php';
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
$mail ->Subject ='Password Reset';
$mail ->Body = '<p>Follow the link to reset your course correct password: <a href="'. $url . '">' . $url . '</a></p>';;
$mail -> AddAddress($_POST["email"]); /* make this $email and post it from form. */
$mail ->Send();

header("Location: passwordretrieval.php?reset=success");
}
else{
    header("location: passwordretrieval.php?reset=failure");
}
}



?>