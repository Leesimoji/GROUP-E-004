<?php


if(isset($_POST["reset-password-submit"])){ //this comes from the input email when user asks to select their password.

    $selector=$_POST["selector"];
    $validator=$_POST["validator"];
    $password=$_POST["pwd"];
    $passwordRepeater=$_POST["pwd-repeat"];

    if (empty($password)|| empty($passwordRepeater)) {
        header("location: cmm004_login.php?newpwd=empty");
        exit();
    }else if($password!=$passwordRepeater){
        header("location: create-new-password.php?newpwd=pwdnotsame"); //don't think this will work at moment. Meant to say not same if both entries dont match.
        exit();
    }
    $currentDate= date("U"); //chooses current date
    require 'connect.php';
    //Select from inside the database
    $sql = "SELECT * FROM passwordrst where passwordrstselector =? AND passwordrstexpires>=?";
    $stmt = mysqli_stmt_init($connection);
    if(!mysqli_stmt_prepare($stmt, $sql)){
        echo "There was an error";
        exit();
    } else{
        mysqli_stmt_bind_param($stmt, "ss", $selector, $currentDate);//selector from previous form
        mysqli_stmt_execute($stmt);
    
        $result=mysqli_stmt_get_result($stmt);
        if(!$row = mysqli_fetch_assoc($result)){
            echo "You need to re-submit your reset request.";
            exit();
        } else {
            $tokenBin = hex2bin($validator); //allows you to compare the two tokens
            $tokenCheck = password_verify($tokenBin, $row["passwordrsttoken"]);//comes up true or false pwd reset token is in his DB

            if($tokenCheck === false){
                echo "You need to  your reset request.";
                exit();
            } elseif($tokenCheck===true){
                $tokenEmail=$row['passwordrstemail']; 
                $sql ="SELECT * FROM login_course_correct WHERE useremail=?;"; 
                $stmt = mysqli_stmt_init($connection);
                if(!mysqli_stmt_prepare($stmt, $sql)){
                    echo "There was an error";
                    exit();
                } else{
                    mysqli_stmt_bind_param($stmt, "s", $tokenEmail);
                    mysqli_stmt_execute($stmt);  
                    $result=mysqli_stmt_get_result($stmt);
                    if(!$row = mysqli_fetch_assoc($result)){
                        echo "There was an error.";
                        exit();
                    } else {
                        $sql="UPDATE login_course_correct SET userpassword=? Where useremail=? "; //update password where email is ? in the proper table
                        $stmt = mysqli_stmt_init($connection);
                        if(!mysqli_stmt_prepare($stmt, $sql)){
                            echo "There was an error";
                            exit();
                        } else{
                            $newPwdHash = sha1($password);// PASSWORD_DEFAULT);//hash new password before it enters the database
                            mysqli_stmt_bind_param($stmt, "ss", $newPwdHash, $tokenEmail);
                            mysqli_stmt_execute($stmt);  
                            $result=mysqli_stmt_get_result($stmt);


                            $sql = "DELETE FROM passwordrst WHERE passwordrstemail=?";
                            $stmt=mysqli_stmt_init($connection);
                            if(!mysqli_stmt_prepare($stmt, $sql)){
                                echo "There was an error!";
                                exit();
                            } else{
                                mysqli_stmt_bind_param($stmt, "s", $tokenEmail);
                                mysqli_stmt_execute($stmt);
                                header("location: cmm004_login.php?newpwd=passwordupdated");
                            }
                         }

            }
        }
    }
}
    }
}
?>