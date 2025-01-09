<?php
// Set the header to display the page as HTML
header('Content-Type: text/html; charset=UTF-8');

// Database connection details
$host = 'your_host';
$dbname = 'labourlink';
$username = 'your_username';
$password = 'your_password';

try {
    $conn = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
    // Check if job_id is passed via GET
    if (isset($_GET['job_id'])) {
        $jobId = intval($_GET['job_id']); // Ensure it's an integer

        // Prepare and execute the update statement
        $stmt = $conn->prepare("UPDATE job_postings SET openings = openings - 1 WHERE job_id = :job_id AND openings > 0");
        $stmt->bindParam(':job_id', $jobId);
        $stmt->execute();

        // Check if any row was updated
        if ($stmt->rowCount() > 0) {
            $successMessage = "Successfully decreased the number of openings.";
        } else {
            $errorMessage = "No openings were decreased. Check if the job has openings left.";
        }
    } else {
        $errorMessage = "Job ID not provided.";
    }
} catch (PDOException $e) {
    $errorMessage = "Error: " . $e->getMessage();
}

// Close the database connection
$conn = null;
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Confirm Hire</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #e6ffe6; /* Lighter green background color */
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 500px;
            width: 100%;
            text-align: center;
        }
        .container h1 {
            font-size: 24px;
            margin-bottom: 20px;
            color: #00796b;
        }
        .container p {
            font-size: 18px;
            margin-bottom: 20px;
        }
        .button {
            width: 50%;
            padding: 10px;
            text-align: center;
            background-color: #00796b;
            color: #ffffff;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            text-decoration: none;
            transition: background-color 0.3s;
            display: inline-block;
            margin: 0 10px;
        }
        .button:hover {
            background-color: #004d40;
        }
        .button.cancel {
            background-color: #d32f2f;
        }
        .button.cancel:hover {
            background-color: #b71c1c;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Confirm Hiring</h1>
        <p>Are you sure you want to contact this job seeker?</p>
        <?php if (isset($successMessage)): ?>
            <p style="color: green;"><?php echo $successMessage; ?></p>
        <?php elseif (isset($errorMessage)): ?>
            <p style="color: red;"><?php echo $errorMessage; ?></p>
        <?php endif; ?>
        <div>
            <a href="application_hire.php?job_id=<?php echo $jobId; ?>" class="button">Yes, Contact</a>
            <a href="javascript:history.back()" class="button cancel">Cancel</a>
        </div>
    </div>
</body>
</html>
