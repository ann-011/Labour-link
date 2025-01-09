<?php
include('connection.php');
session_start();

// Check if necessary POST parameters are set
if (isset($_POST['email']) && isset($_POST['role']) && isset($_POST['message'])) {
    $email = $_POST['email'];
    $role = $_POST['role'];
    $message = $_POST['message'];

    // Determine the table based on the role
    if ($role === 'seeker') {
        $table = 'register'; // Updated to 'register' for job seekers
    } elseif ($role === 'recruiter') {
        $table = 'rec_reg'; // No change needed for recruiters
    } else {
        echo json_encode(['success' => false, 'message' => 'Invalid role specified.']);
        exit;
    }

    // Prepare email content
    $subject = "Notification from LabourLink";
    $headers = "From: no-reply@labourlink.com\r\n";
    $headers .= "Content-Type: text/html; charset=UTF-8\r\n";
    $email_message = "Hello,<br><br>" . $message;

    // Set ban dates
    $ban_start_date = date('Y-m-d H:i:s');
    $ban_end_date = date('Y-m-d H:i:s', strtotime('+10 days'));

    // Update the user's record with ban details
    $sql = "UPDATE $table SET ban_start_date = ?, ban_end_date = ?, permanently_banned = 0 WHERE email = ?"; // Corrected field name for job seekers
    $stmt = $con->prepare($sql);
    $stmt->bind_param("sss", $ban_start_date, $ban_end_date, $email);

    if ($stmt->execute()) {
        // Send email notification
        if (mail($email, $subject, $email_message, $headers)) {
            echo json_encode(['success' => true, 'message' => 'User banned and notified successfully.']);
        } else {
            echo json_encode(['success' => true, 'message' => 'User banned, but failed to send notification email.']);
        }
    } else {
        echo json_encode(['success' => false, 'message' => 'Failed to ban user.']);
    }

    $stmt->close();
    $con->close();
} else {
    echo json_encode(['success' => false, 'message' => 'Missing parameters.']);
}
?>
