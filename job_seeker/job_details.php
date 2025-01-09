<!-- job_details.php -->
<?php
// Connect to your database
$conn = new mysqli('localhost', 'root', '', 'labourlink');

// Check if the job ID is set in the URL
if (isset($_GET['job_id'])) {
    $job_id = $_GET['job_id'];

    // Fetch job details based on the job ID
    $sql = "SELECT job_title, location, description, openings, posted_by, wage FROM job_postings WHERE id = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("i", $job_id);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        $job = $result->fetch_assoc();
    } else {
        echo "Job not found.";
        exit;
    }
} else {
    echo "Invalid job ID.";
    exit;
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Job Details</title>
</head>
<body>
    <h1><?php echo $job["job_title"]; ?></h1>
    <p><strong>Location:</strong> <?php echo $job["location"]; ?></p>
    <p><strong>Description:</strong> <?php echo $job["description"]; ?></p>
    <p><strong>Openings:</strong> <?php echo $job["openings"]; ?></p>
    <p><strong>Posted by:</strong> <?php echo $job["posted_by"]; ?></p>
    <p><strong>Wages:</strong> <?php echo $job["wage"]; ?></p>

    <a href="jobs.php">Back to Listings</a>
</body>
</html>

<?php $conn->close(); ?>
