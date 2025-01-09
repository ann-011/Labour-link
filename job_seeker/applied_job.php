<?php
session_start();
include 'connection.php';

// Get the seeker email from the session
$seeker_email = $_SESSION['email'];
$job_id = $_POST['job_id'];

// Check if the seeker already applied for this job
$check_query = "SELECT * FROM job_applications WHERE seeker_email = '$seeker_email' AND job_id = '$job_id'";
$check_result = mysqli_query($conn, $check_query);

if (mysqli_num_rows($check_result) > 0) {
    // If the seeker already applied, show a message
    echo "<script>alert('You have already applied for this job!'); window.location.href = 'job_listings.php';</script>";
} else {
    // Insert into job_applications table
    $apply_query = "INSERT INTO job_applications (seeker_email, job_id, application_date) VALUES ('$seeker_email', '$job_id', NOW())";
    $apply_result = mysqli_query($conn, $apply_query);

    if ($apply_result) {
        echo "<script>alert('You have successfully applied for this job!'); window.location.href = 'job_listings.php';</script>";
    } else {
        echo "Error applying for the job: " . mysqli_error($conn);
    }
}

mysqli_close($conn);
?>
