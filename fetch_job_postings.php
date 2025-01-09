<?php
include 'connection.php'; // Include your database connection file

$sql = "SELECT job_id, title, location FROM job_postings";
$result = mysqli_query($conn, $sql);

$jobs = array();

while ($row = mysqli_fetch_assoc($result)) {
    $jobs[] = $row;
}

echo json_encode($jobs);
?>
