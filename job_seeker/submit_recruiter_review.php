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
$rec_id = $_POST['r_id'];
$rating = $_POST['rating'];
$job_performance_rating = $_POST['job_performance_rating'];
$salary_rating = $_POST['salary_rating'];
$review_text = $_POST['review_text'];

// Prepare and bind the SQL statement
$stmt = $conn->prepare("INSERT INTO recruiter_reviews (rec_id, rating, job_performance_rating, salary_rating, review_text) VALUES (?, ?, ?, ?, ?)");
$stmt->bind_param("iiiis", $rec_id, $rating, $job_performance_rating, $salary_rating, $review_text);

// Execute the statement
if ($stmt->execute()) {
    echo "Review submitted successfully!";
} else {
    echo "Error: " . $stmt->error;
}

$stmt->close();
$conn->close();
?>
