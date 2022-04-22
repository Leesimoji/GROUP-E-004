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

$query = "DELETE FROM computer_info WHERE id='" . $_GET["id"] . "'";

if ($conn->query($query) === TRUE) {
    echo "Computer record deleted successfully";
} else {
    echo "Error deleting record: " . $conn->error;
}
$conn->close();
