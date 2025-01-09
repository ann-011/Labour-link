<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Recruiter Reviews - LabourLink</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .header {
            background-color: #007bff;
            color: white;
            padding: 20px;
            text-align: center;
        }

        .review-container {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .review {
            padding: 15px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        .review h3 {
            font-size: 18px;
            color: #333;
        }

        .review p {
            color: #666;
        }
    </style>
</head>
<body>

    <!-- Header -->
    <div class="header">
        <h1>Reviews for Recruiter</h1>
    </div>

    <!-- Reviews -->
    <div class="review-container">
        <?php
        // Database connection
        $conn = new mysqli("localhost", "root", "", "labourlink");

        // Check connection
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }

        // Get recruiter ID from URL
        $rec_id = intval($_GET['rec_id']);

        // Query to fetch reviews for the recruiter
        $sql = "SELECT rating, review_text, review_date FROM reviews WHERE rec_id = ?";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("i", $rec_id);
        $stmt->execute();
        $result = $stmt->get_result();

        if ($result->num_rows > 0) {
            // Loop through all reviews
            while ($row = $result->fetch_assoc()) {
                echo "<div class='review'>";
                echo "<h3>Rating: " . htmlspecialchars($row['rating']) . "/5</h3>";
                echo "<p>" . htmlspecialchars($row['review_text']) . "</p>";
                echo "<p><em>Reviewed on: " . htmlspecialchars($row['review_date']) . "</em></p>";
                echo "</div>";
            }
        } else {
            echo "<p>No reviews yet.</p>";
        }

        // Close connection
        $stmt->close();
        $conn->close();
        ?>
    </div>

</body>
</html>
