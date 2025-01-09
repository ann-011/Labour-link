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
    echo "Please log in to edit job postings.";
    exit;
}

// Get the logged-in user's email
$user_email = $_SESSION['email'];

// Get current date and time for checking expired jobs
$currentDateTime = new DateTime();
$currentDateTimeFormatted = $currentDateTime->format('Y-m-d H:i:s');

// Handle the form submission for loading the job
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['job_id'])) {
    $job_id = $_POST['job_id'];

    // Fetch job details for the selected job_id
    $sql = "SELECT job_title, description, location, skills_required, openings, date_time, hours, wage FROM job_postings WHERE job_id = ? AND posted_by = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("is", $job_id, $user_email);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        $job = $result->fetch_assoc();
    } else {
        echo "Job not found for Job ID: " . htmlspecialchars($job_id);
        exit;
    }
}

// Handle the form submission for updating the job
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['update_job'])) {
    $job_title = $_POST['job_title'];
    $description = $_POST['description'];
    $location = $_POST['location'];
    $skills_required = $_POST['skills_required'];
    $openings = (int)$_POST['openings'];
    $date_time = $_POST['date_time'];
    $hours = (int)$_POST['hours'];
    $wage = (float)$_POST['wage'];

    $update_sql = "UPDATE job_postings SET job_title=?, description=?, location=?, skills_required=?, openings=?, date_time=?, hours=?, wage=? WHERE job_id=? AND posted_by=?";
    $update_stmt = $conn->prepare($update_sql);
    $update_stmt->bind_param("ssssissssi", $job_title, $description, $location, $skills_required, $openings, $date_time, $hours, $wage, $job_id, $user_email);

    if ($update_stmt->execute()) {
        $_SESSION['update_success'] = true;
    } else {
        echo "Error updating job: " . $conn->error;
    }
}

// Fetch only active jobs posted by the logged-in user for selection (not expired)
$sql = "SELECT job_id, job_title FROM job_postings WHERE posted_by = ? AND date_time > ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("ss", $user_email, $currentDateTimeFormatted); // Use the variable here
$stmt->execute();
$result = $stmt->get_result();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Job Posting</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #e9ecef;
            margin: 0;
            padding: 20px;
        }
        h1 {
            color: #333;
            text-align: center;
            margin-bottom: 20px;
        }
        form {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            margin: auto;
            transition: transform 0.3s;
        }
        form:hover {
            transform: scale(1.02);
        }
        label {
            font-weight: bold;
            margin-bottom: 5px;
            display: block;
            color: #555;
        }
        input, textarea, select {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            font-size: 16px;
        }
        input[type="submit"] {
            background-color: #28a745;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
        }
        input[type="submit"]:hover {
            background-color: #218838;
        }
        a {
            display: inline-block;
            margin-top: 20px;
            color: #007bff;
            text-decoration: none;
            text-align: center;
            font-size: 18px;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
    <script>
        window.onload = function() {
            <?php if (isset($_SESSION['update_success'])): ?>
                alert('Job updated successfully.');
                <?php unset($_SESSION['update_success']); ?>
                window.location.href = 'history.php'; // Redirect immediately
            <?php endif; ?>
        };
    </script>
</head>
<body>
    <h1>Edit Job Posting</h1>

    <!-- Job selection form -->
    <form method="POST">
        <label for="job_id">Select Job to Edit:</label>
        <select id="job_id" name="job_id" required>
            <option value="">Select a job</option>
            <?php while ($row = $result->fetch_assoc()): ?>
                <option value="<?php echo $row['job_id']; ?>"><?php echo htmlspecialchars($row['job_title']); ?></option>
            <?php endwhile; ?>
        </select>
        <input type="submit" value="Load Job">
    </form>

    <?php if (isset($job)): ?>
        <!-- Job details form -->
        <form method="POST">
            <input type="hidden" name="job_id" value="<?php echo $job_id; ?>">
            <label for="job_title">Job Title:</label>
            <input type="text" id="job_title" name="job_title" value="<?php echo htmlspecialchars($job['job_title']); ?>" required>

            <label for="description">Description:</label>
            <textarea id="description" name="description" required><?php echo htmlspecialchars($job['description']); ?></textarea>

            <label for="location">Location:</label>
            <input type="text" id="location" name="location" value="<?php echo htmlspecialchars($job['location']); ?>" required>

            <label for="skills_required">Skills Required:</label>
            <input type="text" id="skills_required" name="skills_required" value="<?php echo htmlspecialchars($job['skills_required']); ?>" required>

            <label for="openings">Openings:</label>
            <input type="number" id="openings" name="openings" value="<?php echo htmlspecialchars($job['openings']); ?>" required>

            <label for="date_time">Date & Time:</label>
            <input type="datetime-local" id="date_time" name="date_time" value="<?php echo date('Y-m-d\TH:i', strtotime($job['date_time'])); ?>" required>

            <label for="hours">Hours:</label>
            <input type="number" id="hours" name="hours" value="<?php echo htmlspecialchars($job['hours']); ?>" required>

            <label for="wage">Wage:</label>
            <input type="text" id="wage" name="wage" value="<?php echo htmlspecialchars($job['wage']); ?>" required>

            <input type="submit" name="update_job" value="Update Job">
        </form>
    <?php endif; ?>

    <a href="history.php">Back to Job Postings</a>
</body>
</html>

<?php
// Close the statement and connection
if (isset($stmt)) {
    $stmt->close();
}
$conn->close();
?>
