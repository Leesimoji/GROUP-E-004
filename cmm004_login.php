
<?php
error_reporting(0);
@ini_set('display_errors', 0);//error hider
  session_start();
  if(isset($_SESSION["lock"])){
    $ban=time() - $_SESSION["lock"]; //variable ban will measure how long the user has been banned from the site.
    if ($ban > 10) //10 for testing. Change to 600 for 10 minutes
    {
      unset($_SESSION["lock"]);
      unset($_SESSION["attempts"]);
    }
  }
  $conn = new mysqli("localhost","root","","coursecorrect");


    if(isset($_POST['login'])){
      $username = $_POST['username'];
      $password = $_POST['password'];
      $password = $password; 
      $user_type = $_POST['user_type'];

      $sql = "SELECT * FROM login WHERE username=? AND password=? AND user_type=?";
      $stmt=$conn->prepare($sql);
    $stmt->bind_param("sss",$username,$password,$user_type);
      $stmt->execute();
      $result = $stmt->get_result();
      $row = $result->fetch_assoc();

      session_regenerate_id(); //This should replace current session ID with a new one and keep current information 
      $_SESSION['username'] = $row['username'];
      $_SESSION['role'] = $row['user_type'];
      

      if($result->num_rows==1 && $_SESSION['role']=="student"){
        header("location:studenthome.php");
      }
     
      else if($result->num_rows==1 && $_SESSION['role']=="admin"){
        header("location:adminhome.php");
      }
      else{
       $_SESSION["attempts"] += 1;
       
      echo '<script>alert("Details Entered were Incorrect")</script>';
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
      <img src="assets/images/login_image.jpg">
</aside>
  <main class="grid-container">
  <section class="grid-66">  
  <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg- bg-light mt-5 px-0">
                <h3 class="text-center text-light p-3" id="title">Course Correct Login System</h3>
                <?php if (isset($_SESSION["error"])) { ?>
                  <p> <?php $_SESSION["error"];}?> </p>
                <?php ?> <!-- check if we need this  its just dusplaying the error but might already do that-->
                <form action= "<?= $_SERVER['PHP_SELF'] ?>" method="post" class="p-4"><!-- check this -->
                <div class="form-group">
        <input type="text" name="username" class="form-control form control-lg" placeholder="Username" required>
      </div>     
                <div class="form-group">
                        <input type="password" name="password" class="form-control form-control-lg" placeholder="Password" required>
                    </div>
                   
                    <div class="form group">
                      <?php 
                        if ($_SESSION["attempts"] > 2){
                          $_SESSION["lock"] =time();
                          echo "Too many failed attempts. Please try again after 10 minutes";
                        } else{

                      ?>
                      <br>
                      <br>
                            <input type="submit" name="login" class="btn btn-block" id="loginbtn" value="Login">
                      <?php }?>    
                       <br>
                       <br>
                      <input type="submit" class="btn btn-block" onclick="location.href='passwordretrieval.php';" id="forgotbtn" value="Forgotten Password?" >

                     </div>
                     <br>
                    
                     <br>
                     <br>
                     <div>
                    </div>
                </form>
               <?php
              
           
            if(isset($_GET["newpwd"])){
               if($_GET["newpwd"] == "passwordupdated"){
                   echo '<h5 id=updatemessage>Password Updated</h5>';
           
               }
              }
           ?>
              
                
            </div> 
        </div>  
    </div>
    
  </main>
    <br>
    <br>
    <br>
    <footer>
      <div id="navbar">
          <a href="extras/term_conditions.php" > Terms & Conditions </a>
          <a href="extras/aboutus.php" > About Us</a>
          <a href="extras/help.php"> Help </a>
          <a id="extras/copyright" > Copyright</a>
          <a href="extras/faq.php" > FAQ </a> 
          <a href="extras/contactform.php"> Contact us </a>
</div>
</footer>

</body>     



</html>