<?php
// Database connection
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "labourlink";

$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Start session to retrieve the email
session_start();

// Check if email is set in the session
if (!isset($_SESSION['email'])) {
    die("Seeker is not logged in. Please log in to see applied jobs.");
}
$email = $_SESSION['email'];

// SQL query to fetch jobs applied by the seeker
$sql = "SELECT name, email, job FROM apply WHERE email = ?";

$stmt = $conn->prepare($sql);
$stmt->bind_param("s", $email);
$stmt->execute();
$result = $stmt->get_result();

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Applied Jobs</title>
</head>
<body>

<h2>Jobs You've Applied For</h2>

<?php
if ($result->num_rows > 0) {
    echo "<table border='1'>
            <tr>
                <th>Name</th>
                <th>Email</th>
                <th>Job </th>
            </tr>";
    
    // Output data of each row
    while($row = $result->fetch_assoc()) {
        echo "<tr>
                <td>" . htmlspecialchars($row["name"]) . "</td>
                <td>" . htmlspecialchars($row["email"]) . "</td>
                <td>" . htmlspecialchars($row["job"]) . "</td>
              </tr>";
    }
    echo "</table>";
} else {
    echo "You have not applied for any jobs yet.";
}

$stmt->close();
$conn->close();
?>

</body>
</html>
