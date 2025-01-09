<?php
// Database connection
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "labourlink";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Get job_id and seeker_id (assuming seeker_id is stored in session after login)
session_start();
$seeker_id = $_SESSION['seeker_id'];
$job_id = $_POST['job_id'];

// Insert job application into applications table
$sql = "INSERT INTO applications (seeker_id, job_id) VALUES (?, ?)";
$stmt = $conn->prepare($sql);
$stmt->bind_param("ii", $seeker_id, $job_id);

if ($stmt->execute()) {
    echo "You have successfully applied for the job!";
} else {
    echo "Failed to apply for the job.";
}

$stmt->close();
$conn->close();
?>
