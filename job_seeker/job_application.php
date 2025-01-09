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

// Get job_id from URL
$job_id = $_GET['job_id'];

// Fetch job details
$sql = "SELECT job_title, description, wage, salary, location FROM job_posting WHERE job_id = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("i", $job_id);
$stmt->execute();
$result = $stmt->get_result();
$job = $result->fetch_assoc();

if (!$job) {
    echo "Job not found!";
    exit();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo $job['job_title']; ?> - Job Application</title>
</head>
<body>

    <h1>Apply for <?php echo $job['job_title']; ?></h1>

    <p><strong>Location:</strong> <?php echo $job['location']; ?></p>
    <p><strong>Description:</strong> <?php echo $job['description']; ?></p>
    <p><strong>Wage:</strong> <?php echo $job['wage']; ?></p>
    <p><strong>Salary:</strong> <?php echo $job['salary']; ?></p>

    <!-- Job Application Form -->
    <form action="submit_application.php" method="POST">
        <input type="hidden" name="job_id" value="<?php echo $job_id; ?>">
        <label for="cover_letter">Cover Letter:</label><br>
        <textarea name="cover_letter" id="cover_letter" rows="5" cols="40" required></textarea><br><br>
        <button type="submit">Apply for Job</button>
    </form>

</body>
</html>

<?php
$stmt->close();
$conn->close();
?>
