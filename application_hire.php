<?php
include("connection.php"); // Ensure this includes your database connection
session_start();

// Check if recruiter is logged in
if (!isset($_SESSION['email'])) {
    echo "Please log in to view job seekers.";
    exit();
}

// Get the logged-in recruiter's email
$recruiter_email = $_SESSION['email'];

// Prepare the SQL query to fetch job seekers who have applied for jobs posted by the recruiter
$sql = "
    SELECT js.first_name, js.last_name, js.job_title, js.phone, js.address, js.email 
    FROM job_seekers js
    JOIN job_applications ja ON js.email = ja.seeker_email
    WHERE ja.recruiter_email = ?"; // Assuming recruiter_email is in job_applications

$stmt = $con->prepare($sql);

// Check if statement preparation was successful
if ($stmt === false) {
    die("Error preparing statement: " . $con->error);
}

// Bind the recruiter email parameter
$stmt->bind_param("s", $recruiter_email);

$stmt->execute();
$result = $stmt->get_result();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Applied Job Seekers</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #e6ffe6; /* Lighter green background color */
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column; /* Align items vertically */
            height: auto; /* Allow the body height to adjust */
            margin: 0;
            padding: 20px;
        }
        h1 {
            font-size: 24px;
            margin-bottom: 20px;
            color: #00796b;
            text-align: center;
        }
        .back-arrow {
            font-size: 24px;
            text-decoration: none;
            color: #00796b; /* Updated color */
            position: absolute;
            top: 20px;
            left: 20px;
        }
        .back-arrow:hover {
            color: #004d40; /* Updated hover color */
        }
        .container {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 800px; /* Optional max-width for better layout */
            width: 100%;
            text-align: left; /* Align content to the left */
        }
        .job-seeker {
            margin-bottom: 20px; /* Space between each job seeker */
        }
        .job-seeker p {
            margin: 5px 0; /* Space between paragraphs */
        }
        .job-seeker span {
            font-weight: bold;
            color: #444;
        }
    </style>
</head>
<body>

    <!-- Back Arrow Link -->
    <a href="rec_home.html" class="back-arrow">&larr; Back</a>

    <h1>Applied Job Seekers</h1>
    
    <div class="container">
        <?php
        // Check if any job seekers were found
        if ($result->num_rows > 0) {
            // Loop through the results and display each job seeker
            while ($row = $result->fetch_assoc()) {
                echo '<div class="job-seeker">';
                echo '<p><span>Name:</span> ' . htmlspecialchars($row['first_name'] . ' ' . $row['last_name']) . '</p>';
                echo '<p><span>Job Title:</span> ' . htmlspecialchars($row['job_title']) . '</p>';
                echo '<p><span>Phone:</span> ' . htmlspecialchars($row['phone']) . '</p>';
                echo '<p><span>Address:</span> ' . htmlspecialchars($row['address']) . '</p>';
                echo '<p><span>Email:</span> ' . htmlspecialchars($row['email']) . '</p>';
                echo '</div>';
            }
        } else {
            echo '<p>No job seekers found.</p>';
        }
        ?>
    </div>

    <!-- Close the statement and connection -->
    <?php
    // Close the statement and connection
    $stmt->close();
    $con->close();
    ?>
</body>
</html>
