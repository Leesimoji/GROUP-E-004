<?php
error_reporting(0);
@ini_set('display_errors', 0);
    session_start();

//Create connection
$conn = new mysqli("localhost","root","","conn");

// Check connection
if ($conn->connect_error) {
    die("connection failed:" . $conn->connect_error);
}

$query = "DELETE FROM conn.all_book_info WHERE isbn='" . $_GET["isbn"] . "'";

if ($conn -> query($query) === TRUE) {
    echo "Book record deleted successfully";
} else {
    echo "Error deleting record: " . $conn -> error;
}
$conn -> close();
?>