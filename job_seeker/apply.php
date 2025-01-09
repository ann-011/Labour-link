<?php
// Database connection
$conn = new mysqli("localhost", "root", "", "labourlink");

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Check if job_title is set in the query string
if (isset($_GET['job_title'])) {
    $job_title = $conn->real_escape_string($_GET['job_title']);

    // Insert application into the database
    $sql = "INSERT INTO job_applications (job_title, application_date) VALUES ('$job_title', NOW())";

    if ($conn->query($sql) === TRUE) {
        echo "<p>Application submitted successfully for the job: " . htmlspecialchars($job_title) . "</p>";
    } else {
        echo "<p>Error: " . $conn->error . "</p>";
    }
} else {
    echo "<p>Invalid job title.</p>";
}

// Close the database connection
$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Application Submitted - LabourLink</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            text-align: center;
            padding: 50px;
        }
        .message {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .back-btn {
            background-color: #007bff;
            color: white;
            padding: 10px 15px;
            text-decoration: none;
            border-radius: 5px;
            margin-top: 10px;
            display: inline-block;
        }
        .back-btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

    <div class="message">
        <?php
        // Output the result message
        if (isset($_GET['job_title'])) {
            echo "<p>Application submitted successfully for the job: " . htmlspecialchars($_GET['job_title']) . "</p>";
        } else {
            echo "<p>Invalid job title.</p>";
        }
        ?>
        <a href="seeker_home.html" class="back-btn">Back to Home</a>
    </div>

</body>
</html>
