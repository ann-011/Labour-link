<?php
session_start();

$host = "localhost";
$user = "root";
$password = '';
$db_name = "labourlink";
$conn = new mysqli($host, $user, $password, $db_name);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Ensure the user is logged in
if (!isset($_SESSION['email'])) {
    echo "Please log in to view your job postings.";
    exit;
}

$posted_by = $_SESSION['email'];

// Prepare and execute the SQL query to fetch job postings for the logged-in user
$sql = "SELECT job_title, description, location, skills_required, openings, date_time, hours, wage FROM job_postings WHERE posted_by = ? ORDER BY date_time DESC";
$stmt = $conn->prepare($sql);
$stmt->bind_param("s", $posted_by);
$stmt->execute();
$result = $stmt->get_result();

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Job Postings History</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid black;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
        .expired {
            background-color: #ffcccc; /* Light red background for expired job postings */
        }
    </style>
</head>
<body>
    <h1>Your Job Postings History</h1>
    <?php
    if ($result->num_rows > 0) {
        echo '<table>';
        echo '<tr><th>Job Title</th><th>Description</th><th>Location</th><th>Skills Required</th><th>Openings</th><th>Date & Time</th><th>Hours</th><th>Wage</th></tr>';

        while($row = $result->fetch_assoc()) {
            // Get the current date and job posting date
            $currentDateTime = new DateTime();
            $jobDeadline = new DateTime($row["date_time"]);

            // Check if the job posting is expired
            $rowClass = '';
            if ($currentDateTime > $jobDeadline) {
                $rowClass = 'expired';
            }

            // Output the row
            echo '<tr class="' . $rowClass . '">';
            echo '<td>' . htmlspecialchars($row["job_title"]) . '</td>';
            echo '<td>' . htmlspecialchars($row["description"]) . '</td>';
            echo '<td>' . htmlspecialchars($row["location"]) . '</td>';
            echo '<td>' . htmlspecialchars($row["skills_required"]) . '</td>';
            echo '<td>' . htmlspecialchars($row["openings"]) . '</td>';
            echo '<td>' . htmlspecialchars($row["date_time"]) . '</td>';
            echo '<td>' . htmlspecialchars($row["hours"]) . '</td>';
            echo '<td>' . htmlspecialchars($row["wage"]) . '</td>';
            echo '</tr>';
        }
        echo '</table>';
    } else {
        echo 'No job postings found.';
    }
    ?>
</body>
</html>

<?php
// Close the statement and connection
$stmt->close();
$conn->close();
?>
