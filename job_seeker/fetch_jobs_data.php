<?php
// Database connection
$servername = "localhost"; // Your DB host
$username = "root";        // Your DB username
$password = "";            // Your DB password
$dbname = "labourlink";    // Your DB name

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Fetch job title and location from the job_posting table
$sql = "SELECT job_title, location FROM job_postings";
$result = $conn->query($sql);

// Initialize an array to hold job data
$jobs = [];

if ($result->num_rows > 0) {
    // Fetch each row and add to jobs array
    while($row = $result->fetch_assoc()) {
        $jobs[] = $row;
    }
}

// Close the connection
$conn->close();

// Return data as JSON
echo json_encode($jobs);
?>
