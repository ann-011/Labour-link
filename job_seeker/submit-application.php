<?php
session_start();
include("connection.php");

// Enable error reporting for debugging
error_reporting(E_ALL);
ini_set('display_errors', 1);

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name = trim($_POST["name"]);
    $email = trim($_POST["email"]);
    $phone = trim($_POST["phone"]);
    $job = trim($_POST["job"]);
    $experience = trim($_POST["experience"]);

    $sql = "INSERT INTO apply (name, email, phone, job, experience) VALUES (?, ?, ?, ?, ?)";
    $stmt = $conn->prepare($sql);
    if (!$stmt) {
        die("Error preparing statement: " . $con->error);
    }

    $stmt->bind_param("sssss", $name, $email, $phone, $job, $experience);

    if (!$stmt->execute()) {
        die("Error inserting data: " . $stmt->error);
    }

    $stmt->close();
    $conn->close();

    header("Location: success.html");
    exit();
}
?>
