<?php
// Database connection
$servername = "localhost"; // Change to your server name if different
$username = "root";        // Your MySQL username
$password = "";            // Your MySQL password
$dbname = "labourlink";     // Your database name

// Create connection
$con = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($con->connect_error) {
    die("Connection failed: " . $con->connect_error);
}

// Fetch reviews and ratings for a specific seeker
$s_id = 1; // Example seeker ID (you can dynamically set this based on the seeker being viewed)

$sql = "SELECT rating, review_text, review_date FROM seeker_reviews WHERE s_id = ?";
$stmt = $con->prepare($sql);
$stmt->bind_param("i", $s_id);
$stmt->execute();
$result = $stmt->get_result();

$ratings = [];
while ($row = $result->fetch_assoc()) {
    $ratings[] = $row['rating'];
    echo "<p>Rating: " . $row['rating'] . "</p>";
    echo "<p>Review: " . $row['review_text'] . "</p>";
    echo "<p>Date: " . $row['review_date'] . "</p>";
    echo "<hr>";
}

// Calculate average rating
if (count($ratings) > 0) {
    $average_rating = array_sum($ratings) / count($ratings);
    echo "<p>Average Rating: " . number_format($average_rating, 2) . "</p>";
} else {
    echo "No reviews available for this seeker.";
}

$stmt->close();
$con->close();
?>
