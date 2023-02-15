
<?php
$servername = "localhost";
$database = "bookstore";
$username = "root";
$password = "";
// Create connection
global $conn;
global $tong;
$conn = mysqli_connect($servername, $username, $password, $database);
SESSION_START();