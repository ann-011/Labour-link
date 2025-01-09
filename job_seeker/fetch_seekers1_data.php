<?php
header('Content-Type: application/json');

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "labourlink";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    http_response_code(500);
    echo json_encode(["error" => "Connection failed: " . $conn->connect_error]);
    exit();
}

// Adjust the SQL query to fetch fname, email, job_title, and location
$sql = "SELECT name, s_id, job_title, location FROM job_seekers";
$result = $conn->query($sql);

$seekers = [];

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $row['s_id'] = "<a href='details.php?s_id=" . $row['s_id'] . "'>" . $row['s_id'] . "</a>";
        $seekers[] = $row;
    }
} else {
    http_response_code(404);
    echo json_encode(["message" => "No records found"]);
    exit();
}

echo json_encode($seekers);

$conn->close();
?>
