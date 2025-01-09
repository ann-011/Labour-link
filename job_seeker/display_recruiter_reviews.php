<?php
// Database connection
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "labourlink";

$con = new mysqli($servername, $username, $password, $dbname);

if ($con->connect_error) {
    die("Connection failed: " . $con->connect_error);
}

// Fetch reviews and ratings for a specific recruiter
$r_id = 1; // Example recruiter ID (you can dynamically set this)

$sql = "SELECT rating, job_performance_rating, salary_rating, review_text, review_date FROM recruiter_reviews WHERE r_id = ?";
$stmt = $con->prepare($sql);
$stmt->bind_param("i", $r_id);
$stmt->execute();
$result = $stmt->get_result();

$ratings = [];
$job_ratings = [];
$salary_ratings = [];
while ($row = $result->fetch_assoc()) {
    $ratings[] = $row['rating'];
    $job_ratings[] = $row['job_performance_rating'];
    $salary_ratings[] = $row['salary_rating'];
    echo "<p>Overall Rating: " . $row['rating'] . "</p>";
    echo "<p>Job Performance Rating: " . $row['job_performance_rating'] . "</p>";
    echo "<p>Salary Rating: " . $row['salary_rating'] . "</p>";
    echo "<p>Review: " . $row['review_text'] . "</p>";
    echo "<p>Date: " . $row['review_date'] . "</p>";
    echo "<hr>";
}

// Calculate average ratings
if (count($ratings) > 0) {
    $average_rating = array_sum($ratings) / count($ratings);
    $average_job_performance = array_sum($job_ratings) / count($job_ratings);
    $average_salary_rating = array_sum($salary_ratings) / count($salary_ratings);

    echo "<p>Average Overall Rating: " . number_format($average_rating, 2) . "</p>";
    echo "<p>Average Job Performance Rating: " . number_format($average_job_performance, 2) . "</p>";
    echo "<p>Average Salary Rating: " . number_format($average_salary_rating, 2) . "</p>";
} else {
    echo "No reviews available for this recruiter.";
}

$stmt->close();
$con->close();
?>
