
<head>
<link rel="stylesheet" href="Assets\unsemantic.css">
<link rel="stylesheet" href="Assets\style_retrieval.css">
</head>
<main> 
    <div class="wrapper-main">
        <section class="section-default">
            <h1 id="reset-title"><b> Reset Your Password </b></h1>
            <p> An e-mail will be sent to you with the link to reset your password. If you do not have access to this e-mail address please contact your institution's IT support. </p>
            <form action="resetcode.php" method="post">
                <input id= "resetemail" type="text" name="email" placeholder="Enter your e-mail address...">
                <button type ="submit" id="reset-request-submit" name="reset-request-submit">Reset Password</button>
            <?php
            if(isset($_GET["reset"])){
                if($_GET["reset"] == "success"){
                    echo '<p class="signupsuccess">Check your e-mail</p>';
            }
        }
        if(isset($_GET["reset"])){
            if($_GET["reset"] == "failure"){
                echo "<script type='text/javascript'>alert('E-mail entered was not recognised');</script>";
        }
    }
        ?>
        
            </form>
        </section>
    </div>
</main>
</html>

    


