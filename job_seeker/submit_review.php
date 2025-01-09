<?php
// Database connection
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "labourlink"; // Change this to your database name

$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Capture form data
$s_id = $_POST['s_id'];
$rating = $_POST['rating'];
$review_text = $_POST['review_text'];

// Prepare and bind the SQL statement
$stmt = $conn->prepare("INSERT INTO seeker_reviews (s_id, rating, review_text) VALUES (?, ?, ?)");
$stmt->bind_param("iis", $s_id, $rating, $review_text);

// Execute the statement
if ($stmt->execute()) {
    echo "Review submitted successfully!";
} else {
    echo "Error: " . $stmt->error;
}

$stmt->close();
$conn->close();
?>
