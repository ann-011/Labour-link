<?php
include('connection.php');
session_start();

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $complainer_email = $_POST['complainer_email'];
    $complainer_role = $_POST['complainer_role'];
    $complained_against_email = $_POST['complained_against_email'];
    $complaint = $_POST['complaint'];
    $rating = $_POST['rating'];

    // Insert the complaint into the complaints table
    $sql = "INSERT INTO complaints (complainer_email, complainer_role, complained_against_email, complaint, rating)
            VALUES ('$complainer_email', '$complainer_role', '$complained_against_email', '$complaint', '$rating')";

    if (mysqli_query($con, $sql)) {
        // If the rating is 1, update the one_star_ratings table
        if ($rating == 1) {
            $check_sql = "SELECT * FROM one_star_ratings WHERE complained_against_email = '$complained_against_email'";
            $check_result = mysqli_query($con, $check_sql);
            if (mysqli_num_rows($check_result) > 0) {
                $update_sql = "UPDATE one_star_ratings
                               SET one_star_count = one_star_count + 1
                               WHERE complained_against_email = '$complained_against_email'";
                mysqli_query($con, $update_sql);
            } else {
                $insert_sql = "INSERT INTO one_star_ratings (complained_against_email, one_star_count)
                               VALUES ('$complained_against_email', 1)";
                mysqli_query($con, $insert_sql);
            }
        }
        echo json_encode(['success' => true, 'message' => 'Complaint submitted successfully.']);
    } else {
        echo json_encode(['success' => false, 'message' => 'Failed to submit complaint.']);
    }
}
?>
