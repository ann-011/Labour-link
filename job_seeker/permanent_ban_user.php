<?php
include('connection.php');
session_start();

// Check if email and role are set
if (isset($_POST['email']) && isset($_POST['role'])) {
    $email = mysqli_real_escape_string($conn, $_POST['email']);
    $role = mysqli_real_escape_string($conn, $_POST['role']);
    
    // Define table name based on the role
    $table = $role === 'seeker' ? 'job_seekers' : 'rec_reg';
    
    // Check if the user exists in the corresponding table
    $query_check = "SELECT * FROM $table WHERE email = '$email' LIMIT 1";
    $result_check = mysqli_query($conn, $query_check);
    
    if (mysqli_num_rows($result_check) > 0) {
        // Update the permanently_banned status for the user
        $query_ban = "UPDATE $table SET permanently_banned = 1 WHERE email = '$email'";
        if (mysqli_query($conn, $query_ban)) {
            // Send success response
            $response = [
                'success' => true,
                'message' => "User with email $email has been permanently banned."
            ];
        } else {
            // Send error response for query failure
            $response = [
                'success' => false,
                'message' => 'Failed to update the ban status.'
            ];
        }
    } else {
        // Send error response if user doesn't exist
        $response = [
            'success' => false,
            'message' => "No user found with email $email."
        ];
    }
} else {
    // Send error response if email or role is not provided
    $response = [
        'success' => false,
        'message' => 'Invalid request: email or role is missing.'
    ];
}

// Output JSON response
header('Content-Type: application/json');
echo json_encode($response);

mysqli_close($conn);
?>
