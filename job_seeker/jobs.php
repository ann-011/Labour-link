<!-- jobs.php -->
<?php
// Connect to your database
$conn = new mysqli('localhost', 'root', '', 'labourlink');

// Fetch job postings from the job_posting table
$sql = "SELECT job_id, job_title, location FROM job_postings";
$result = $conn->query($sql);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Job Listings</title>
</head>
<body>
    <h1>Job Listings</h1>
    <div class="job-listings">
        <?php
        if ($result->num_rows > 0) {
            while($row = $result->fetch_assoc()) {
                echo '
                <div class="job-card">
                    <h2>' . $row["job_title"] . '</h2>
                    <p>Location: ' . $row["location"] . '</p>
                    <a href="job_details.php?id=' . $row["job_id"] . '">View Details</a>
                </div>';
            }
        } else {
            echo "No job postings found.";
        }
        ?>
    </div>
</body>
</html>

<?php $conn->close(); ?>
