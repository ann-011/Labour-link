<?php
// Include database connection
include 'connection.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Retrieve and sanitize input
    $complainer_email = trim($_POST['complainer_email']);
    $complainer_role = $_POST['complainer_role'];
    $complained_against_email = trim($_POST['complained_against_email']);
    $complaint_text = trim($_POST['complaint']);
    $rating = (int)$_POST['rating'];
    
    // Initialize an array to store validation errors
    $errors = [];

    // Input validation
    if (empty($complainer_email) || !filter_var($complainer_email, FILTER_VALIDATE_EMAIL)) {
        $errors[] = "Valid complainer email is required.";
    }
    if (empty($complainer_role)) {
        $errors[] = "Please select your role.";
    }
    if (empty($complained_against_email) || !filter_var($complained_against_email, FILTER_VALIDATE_EMAIL)) {
        $errors[] = "Valid complained against email is required.";
    }
    if (empty($complaint_text)) {
        $errors[] = "Complaint text cannot be empty.";
    }
    if ($rating < 1 || $rating > 5) {
        $errors[] = "Rating must be between 1 and 5.";
    }

    // Check if there are any validation errors
    if (count($errors) > 0) {
        // Display errors
        foreach ($errors as $error) {
            echo "<p style='color:red;'>$error</p>";
        }
    } else {
        // Prepare and execute the SQL query
        $sql = "INSERT INTO seeker_complaints (complainer_email, complainer_role, complained_against_email, complaint, rating, date_submitted) 
                VALUES (?, ?, ?, ?, ?, NOW())";

        if ($stmt = mysqli_prepare($conn, $sql)) {
            mysqli_stmt_bind_param($stmt, "ssssi", $complainer_email, $complainer_role, $complained_against_email, $complaint_text, $rating);
            if (mysqli_stmt_execute($stmt)) {
                echo "<script>alert('Complaint submitted successfully.'); window.location.href='seeker_home.html';</script>";
            } else {
                echo "<p style='color:red;'>Error: " . mysqli_error($conn) . "</p>";
            }
            mysqli_stmt_close($stmt);
        } else {
            echo "<p style='color:red;'>Error preparing statement: " . mysqli_error($conn) . "</p>";
        }
    }

    // Close the database connection
    mysqli_close($conn);
}
?>
