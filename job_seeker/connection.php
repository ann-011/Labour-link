<?php
// Database connection credentials
$host = 'localhost';      // Database host
$dbname = 'labourlink';    // Database name
$username = 'root';        // Database username
$password = '';            // Database password

// Create connection
$conn = new mysqli($host, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>
