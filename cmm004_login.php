
<?php
error_reporting(0);
@ini_set('display_errors', 0);
  session_start();

  $conn = new mysqli("localhost","root","","cmm004_login");

  $msg="";

    if(isset($_POST['login'])){
      $username = $_POST['username'];
      $password = $_POST['password'];
      $password = sha1($password); 
      $user_type = $_POST['user_type'];

      $sql = "SELECT * FROM login_course_correct WHERE username=? AND password=? AND user_type=?";
      $stmt=$conn->prepare($sql);
      $stmt->bind_param("sss",$username,$password,$user_type);
      $stmt->execute();
      $result = $stmt->get_result();
      $row = $result->fetch_assoc();

      session_regenerate_id();
      $_SESSION['username'] = $row['username'];
      $_SESSION['role'] = $row['user_type'];
      session_write_close();

      if($result->num_rows==1 && $_SESSION['role']=="student"){
        header("location:student.php");
      }
      else if($result->num_rows==1 && $_SESSION['role']=="teacher"){
        header("location:teacher.php");
      }
      else if($result->num_rows==1 && $_SESSION['role']=="admin"){
        header("location:admin.php");
      }
      else{
       $msg = "Details entered incorrect!";
      } 
}   
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="Author" content="Course Correct">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewpoint" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Course Correct Login System</title>
    <link rel="stylesheet" href="Assets\unsemantic.css">
    <link rel="stylesheet" href="Assets\style_login.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
     integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>

<body class id="bigbit">
<aside class="grid-33" id="photo_slot">
      <img src="ProjectImages\login_image.jpg.png">
</aside>
  <main class="grid-container">
  <section class="grid-66">  
  <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg- bg-light mt-5 px-0">
                <h3 class="text-center text-light p-3" id="title">Course Correct Login System</h3>
                <form action= "<?= $_SERVER['PHP_SELF'] ?>" method="post" class="p-4">
                <div class="form-group">
        <input type="text" name="username" class="form-control form control-lg" placeholder="Username" required>
      </div>     
                <div class="form-group">
                        <input type="password" name="password" class="form-control form-control-lg" placeholder="Password" required>
                    </div>
                    <div class="form-group">
                       <label for="user_type">I'm a :</label>
                      <input type="radio" name="user_type" value="student" class="custom-radio" required>&nbsp;Student | 
                     <input type="radio" name="user_type" value="staff" class="custom-radio" required>&nbsp;Staff | 
                     <input type="radio" name="user_type" value="admin" class="custom-radio" required>&nbsp;Admin |
                    </div>
                    <div class="form group">
                      <input type="submit" name="login" class="btn 
                       btn-block" id="loginbtn" value="Login"> 
                     </div>
                     <br>
                     <b> Do you have an account? If not, then sign up </b>
                     <br>
                     <br>
                     <div>
                     <input type="submit" class="btn btn-block" onclick="location.href='signup.php';" value="Sign Up" id="signupbtn">
                    </div>
                     <h5 class="text-danger text center"><?= $msg; ?></h5>
                </form>
               
                
            </div> 
        </div>  
    </div>
    
  </main>
    <br>
    <br>
    <br>
    <footer>
      <div id="navbar">
          <a href="term_conditions.php" > Terms & Conditions </a>
          <a href="aboutus.php" > About Us</a>
          <a href="help.php"> Help </a>
          <a id="copyright" > Copyright</a>
          <a href="faq.php" > FAQ </a> 
          <a href="contactus.php"> Contact us </a>
</div>
</footer>

</body>     



</html>
 
