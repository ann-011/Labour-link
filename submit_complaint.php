<?php
include('connection.php');
session_start();

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $complainer_email = $_POST['complainer_email'];
    $complainer_role = $_POST['complainer_role'];
    $complained_against_email = $_POST['complained_against_email'];
    $complaint = $_POST['complaint'];
    $rating = $_POST['rating'];

    // Check if the user has already submitted a complaint against this recruiter
    $check_sql = "SELECT * FROM complaints 
                  WHERE complainer_email = ? 
                  AND complained_against_email = ?";
    $check_stmt = $con->prepare($check_sql);
    $check_stmt->bind_param("ss", $complainer_email, $complained_against_email);
    $check_stmt->execute();
    $check_result = $check_stmt->get_result();

    // If a complaint exists, prevent submission
    if ($check_result->num_rows > 0) {
        echo json_encode(['success' => false, 'message' => 'You have already submitted a complaint against this recruiter.']);
    } else {
        // Proceed to insert the complaint
        $sql = "INSERT INTO complaints (complainer_email, complainer_role, complained_against_email, complaint, rating)
                VALUES (?, ?, ?, ?, ?)";
        $stmt = $con->prepare($sql);
        $stmt->bind_param("ssssi", $complainer_email, $complainer_role, $complained_against_email, $complaint, $rating);

        if ($stmt->execute()) {
            // Respond with success and include a link to the home page
            echo json_encode([
                'success' => true, 
                'message' => 'Complaint submitted successfully.',
                'redirect' => 'home.php' // Change to your home page URL
            ]);
        } else {
            echo json_encode(['success' => false, 'message' => 'Failed to submit complaint.']);
        }

        $stmt->close();
    }

    $check_stmt->close();
}

mysqli_close($con);
?>
