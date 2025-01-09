<?php
session_start();
include('connection.php');

// Set the response header to JSON
header('Content-Type: application/json');

// Check if the user is logged in
if (isset($_SESSION['email']) && !empty($_SESSION['email'])) {
    $email = $_SESSION['email'];

    // Prepare and execute a safe SQL statement to prevent SQL injection
    $sql = "SELECT first_name, email FROM job_seekers WHERE email = ?";
    $stmt = $conn->prepare($sql);
    
    if ($stmt) {
        $stmt->bind_param('s', $email);
        $stmt->execute();
        $result = $stmt->get_result();
        
        // Check if a user is found
        if ($result->num_rows > 0) {
            $user = $result->fetch_assoc();
            echo json_encode(['name' => $user['first_name'], 'email' => $user['email']]);
        } else {
            // User not found in the database
            echo json_encode(['error' => 'User not found']);
        }

        $stmt->close();
    } else {
        // Error preparing the statement
        echo json_encode(['error' => 'Failed to prepare statement']);
    }

    $conn->close();
} else {
    // User is not logged in
    echo json_encode(['error' => 'User not logged in']);
}
?>
