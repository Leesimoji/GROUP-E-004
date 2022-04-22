<?php
error_reporting(0);
@ini_set('display_errors', 0);
session_start();

//Create connection
$conn = new mysqli("localhost", "root", "", "conn");

// Check connection
if ($conn->connect_error) {
  die("connection failed:" . $conn->connect_error);
}

$isbn = $_POST['isbn'];
$title = str_replace("'", "\'", $_POST["title"]);
// $initials=strtoupper($title[0]); To create a foreign key later
$author = str_replace("'", "\'", $_POST["author"]);
$publisher = str_replace("'", "\'", $_POST["publisher"]);
$year_publish = $_POST["year_publish"];
$genre = $_POST["genre"];

$query = "INSERT INTO all_book_info(ISBN,Title,Author,Publisher,Year_Published,Genre) values('$isbn','$title','$author','$publisher','$year_publish', '$genre')"; //Insert query to add book details into the appropriate table
$result = $conn->query($query);
?>


<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Add a book</title>
  <link rel="stylesheet" href="../A-Z search/assets/style.css">
  <link rel="stylesheet" href="../A-Z search/assets/unsemantic-grid-responsive-tablet.css">
</head>

<body>
  <!--START OF HEADER-->
  <header>
    <div class="topheader">
      <img id="rgu_logo" src="../A-Z search/assets/images/rgulib.png" alt="Robert Gordon University">

      <div class="dropdowne">
        <button onclick="myFunction()" class="dropbtn">StudentNumber</button>
        <div id="myDropdown" class="dropdown-content">
          <a href="#">Profile</a>
          <a href="#">Logout</a>
          <a href="#">Settings</a>
        </div>
      </div>
    </div>

    <nav>
      <div class="bg-img-search">
        <div class="navbar">
          <a href="admin_home.html">Home</a>
          <a href="booksearch.html">Search Books</a>

          <div class="dropdown">
            <button class="dropbtn">Add/Remove Computer
              <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-content">
              <a href="addcomputer.html">Add Computer</a>
              <a href="deletecomputer.php">Remove Computer</a>
            </div>
          </div>

          <div class="dropdown">
            <button class="dropbtn">Add/Remove Study Space
              <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-content">
              <a href="#">Add Study Space</a>
              <a href="#">Remove Study Space</a>
            </div>
          </div>

          <div class="dropdown">
            <button class="dropbtn">Add/Remove Books
              <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-content">
              <a href="add_book.html">Add Books</a>
              <a href="deletebooks.php">Remove Books</a>
            </div>
          </div>
        </div>
    </nav>
  </header>
  <main>
    <h1 class="title"> Book is added successfully </h1>
    <a href="booksearch.html"> To search for the Book information click here </a>
  </main>

  <!--START OF FOOTER-->
  <footer>
    <div class="footer">
      <span>(c) 2022 Group E</span>
      <span><a href="../Features/privacy.html">Privacy & Cookie Statement</a></span>
    </div>
  </footer>
  <!--END OF FOOTER-->
</body>

</html>