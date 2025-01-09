<?php
session_start();
include 'connection.php';

// Check if the user is logged in
if (!isset($_SESSION['email'])) {
    header("Location: login.php");
    exit();
}

// Check if job_id is set
if (isset($_POST['job_id'])) {
    $job_id = $_POST['job_id'];

    // Fetch job details based on job_id
    $job_query = "SELECT job_title, description, location, wage, skills_required, openings, hours, posted_by FROM job_postings WHERE job_id = ?";
    $stmt = $con->prepare($job_query);
    $stmt->bind_param("i", $job_id);  // Bind job_id to the query
    $stmt->execute();
    $result = $stmt->get_result();

    // If job is found
    if ($result->num_rows > 0) {
        $job = $result->fetch_assoc();
    } else {
        echo "Job not found.";
        exit();
    }

} else {
    echo "No job selected.";
    exit();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Job Details</title>
    <style>
        /* Background gradient */
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(120deg, #d4fc79 0%, #96e6a1 100%);
            padding: 20px;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        /* Container styling */
        .job-details-container {
            max-width: 800px;
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            text-align: center;
        }

        h1 {
            font-size: 2em;
            color: #333;
            margin-bottom: 20px;
        }

        .job-details {
            padding: 20px;
            border-radius: 5px;
            background-color: #f9f9f9;
            margin-bottom: 20px;
        }

        /* Job detail text styling */
        .job-details p {
            font-size: 1.1em;
            margin: 10px 0;
            color: #555;
        }
        .job-details p strong {
            color: #333;
        }

        /* Button styling */
        .back-btn, .apply-btn {
            display: inline-block;
            padding: 12px 20px;
            margin-top: 20px;
            font-size: 1em;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
            box-shadow: 0px 5px 10px rgba(0, 0, 0, 0.2);
        }
        .back-btn {
            background-color:green;
        }
        .back-btn:hover {
            background-color: #0056b3;
        }
        .apply-btn {
            background-color: #28a745;
            cursor: pointer;
            border: none;
        }
        .apply-btn:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>

<div class="job-details-container">
    <h1>Job Details</h1>

    <div class="job-details">
        <p><strong>Job Title:</strong> <?php echo $job['job_title']; ?></p>
        <p><strong>Description:</strong> <?php echo $job['description']; ?></p>
        <p><strong>Location:</strong> <?php echo $job['location']; ?></p>
        <p><strong>Wage:</strong> ₹<?php echo $job['wage']; ?></p>
        <p><strong>No of Openings:</strong> <?php echo $job['openings']; ?></p>
        <p><strong>Skills Required:</strong> <?php echo $job['skills_required']; ?></p>
        <p><strong>Hours Required:</strong> <?php echo $job['hours']; ?></p>
        <p><strong>Posted By:</strong> <?php echo $job['posted_by']; ?></p>

        <!-- Apply Button -->
        <form method="POST" action="apply.php">
            <input type="hidden" name="job_id" value="<?php echo $job_id; ?>">
            <button type="submit" class="apply-btn">Apply Now</button>
        </form>
    </div>

    <!-- Back to Job Listings -->
    <a href="job_listings.php" class="back-btn">Back to Job Listings</a>
</div>

<?php mysqli_close($con); ?>
</body>
</html>
