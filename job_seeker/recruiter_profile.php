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

$recruiter_id = $_GET['recruiter_id'];

// Fetch recruiter's details
$sql = "SELECT name, company, bio FROM rec_reg WHERE recruiter_id = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("i", $recruiter_id);
$stmt->execute();
$result = $stmt->get_result();
$recruiter = $result->fetch_assoc();

// Fetch recruiter's job postings
$sql_jobs = "SELECT job_title, location FROM job_posting WHERE recruiter_id = ?";
$stmt_jobs = $conn->prepare($sql_jobs);
$stmt_jobs->bind_param("i", $recruiter_id);
$stmt_jobs->execute();
$result_jobs = $stmt_jobs->get_result();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Recruiter Profile</title>
</head>
<body>
    <h1><?php echo $recruiter['name']; ?>'s Profile</h1>
    <p>Company: <?php echo $recruiter['company']; ?></p>
    <p>Bio: <?php echo $recruiter['bio']; ?></p>

    <h2>Job Postings</h2>
    <ul>
        <?php while($job = $result_jobs->fetch_assoc()): ?>
            <li><?php echo $job['job_title'] . " - " . $job['location']; ?></li>
        <?php endwhile; ?>
    </ul>

    <form action="apply_for_job.php" method="POST">
        <input type="hidden" name="recruiter_id" value="<?php echo $recruiter_id; ?>">
        <button type="submit">Apply for Jobs</button>
    </form>
</body>
</html>

<?php
$stmt->close();
$conn->close();
?>
