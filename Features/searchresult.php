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
// Get the search input name from `booksearch.html`
$search = $_REQUEST["search"];

// Search with inputted text ($search) from the `all_book_info` table in the database
$query = "SELECT * FROM all_book_info WHERE Title LIKE '%$search%' ORDER BY Title ASC";

// Save the search result into `$result`
$result = $conn->query($query);
?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book Search</title>
    <link rel="stylesheet" href="../A-Z Search/assets/style.css">
    <link rel="stylesheet" href="../A-Z Search/assets/unsemantic-grid-responsive-tablet.css">
</head>

<body>
    <!--START OF HEADER-->
    <header>
        <div class="topheader">
            <img id="rgu_logo" src="../A-Z Search/assets/images/rgulib.png" alt="Robert Gordon University">
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
            <!-- <div class="bg-img"> -->
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
        <h1 class="title">Search result(s) for book with <?php echo "'$search'"; ?> title</h1>
        <div class="main">
            <?php
            if (mysqli_num_rows($result) > 0) {
            ?>
                <table id="books-info">
                    <tr>
                        <th>ISBN</th>
                        <th>Title</th>
                        <th>Author</th>
                        <th>Publisher</th>
                        <th>Year Published</th>
                        <th>Genre</th>
                        <th>Action</th>
                    </tr>
                    <?php
                    while ($row = mysqli_fetch_assoc($result)) {
                    ?>
                        <tr>
                            <td><?php echo $row["ISBN"]; ?></td>
                            <td><span class="italic"><?php echo $row["Title"]; ?></span></td>
                            <td><?php echo $row["Author"]; ?></td>
                            <td><?php echo $row["Publisher"]; ?></td>
                            <td><?php echo $row["Year_Published"]; ?></td>
                            <td><?php echo $row["Genre"]; ?></td>
                            <td><a href="delete.php?isbn=<?php echo $row['ISBN']; ?>">Delete</a></td>
                        </tr>
                <?php
                    }
                } else echo "No book named '$search' in the library system";
                ?>
                </table>
        </div>
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