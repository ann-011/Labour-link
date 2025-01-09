<?php
include('connection.php');
session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>View Complaints</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css">
<style>
    body {
        background: url('desktop-wallpaper-construction-worker-construction-work - Copy.jpg') no-repeat center center fixed;
        background-size: cover;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        margin: 0;
        padding: 0;
    }
    .container {
        margin-top: 50px;
        max-width: 90%;
        background-color: rgba(255, 255, 255, 0.8);
        padding: 20px;
        border-radius: 10px;
        margin-bottom: 20px;
    }
    h2 {
        text-align: center;
        margin-bottom: 30px;
        color: #333;
        font-weight: bold;
        font-size: 2.5rem;
        text-transform: uppercase;
        letter-spacing: 2px;
    }
    table {
        width: 100%;
        border-collapse: separate;
        border-spacing: 0 15px;
        background-color: #ffffff;
        border-radius: 10px;
        box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
        overflow: hidden;
    }
    th {
        background-color: #007bff;
        color: #ffffff;
        text-transform: uppercase;
        letter-spacing: 1px;
        padding: 15px;
    }
    td, th {
        text-align: center;
        padding: 15px;
    }
    tr {
        transition: background-color 0.3s ease;
    }
    tr:hover {
        background-color: #f1f1f1;
    }
    .highlight-five {
        background-color: #ffdddd !important;
    }
    .highlight-ten {
        background-color: #ddffdd !important;
    }
    .back-button {
        margin-bottom: 20px;
        padding: 10px 20px;
        font-size: 1.2rem;
        border-radius: 5px;
        transition: background-color 0.3s ease, color 0.3s ease;
    }
    .back-button:hover {
        background-color: #0056b3;
        color: #ffffff;
    }
    .scroll-to-top {
        position: fixed;
        bottom: 20px;
        right: 20px;
        display: none;
        padding: 10px 20px;
        font-size: 1.2rem;
        background-color: #007bff;
        color: #ffffff;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: opacity 0.3s ease;
        z-index: 1000;
    }
    .scroll-to-top:hover {
        opacity: 0.8;
    }
    .rating-distribution {
        text-align: left;
        padding-left: 20px;
    }
    @media (max-width: 768px) {
        table, th, td {
            display: block;
        }
        th {
            text-align: right;
            padding-right: 10px;
        }
        th::before {
            content: attr(data-label);
            float: left;
            text-transform: uppercase;
            font-weight: bold;
            color: #555;
        }
        td {
            text-align: right;
            padding-left: 50%;
            position: relative;
        }
        td::before {
            content: attr(data-label);
            position: absolute;
            left: 0;
            width: 45%;
            padding-left: 10px;
            font-weight: bold;
            text-transform: uppercase;
            color: #333;
        }
    }
    @media (max-width: 576px) {
        h2 {
            font-size: 1.5rem;
        }
        .back-button {
            font-size: 1rem;
        }
    }
</style>
</head>
<body>
<div class="container">
    <button class="btn btn-primary back-button" onclick="history.back()">Back</button>
    <h2>Complaints</h2>
    <table class="table">
        <thead>
        <tr>
            <th scope="col">Complainer Email</th>
            <th scope="col">Complainer Role</th>
            <th scope="col">Complained Against Email</th>
            <th scope="col">Complaint</th>
            <th scope="col">Rating</th>
            <th scope="col">Date</th>
            <th scope="col">Rating Distribution</th>
        </tr>
        </thead>
        <tbody>
        <?php
        // Function to get the rating distribution for a user
        function getRatingDistribution($email, $con) {
            $ratings = [1 => 0, 2 => 0, 3 => 0, 4 => 0, 5 => 0];
            $sql = "SELECT rating, COUNT(*) as count FROM complaints WHERE complained_against_email = '$email' GROUP BY rating";
            $result = mysqli_query($con, $sql);
            if ($result) {
                while ($row = mysqli_fetch_assoc($result)) {
                    $ratings[$row['rating']] = $row['count'];
                }
            }
            return $ratings;
        }

        // Fetch users with 5 or more one-star ratings
        $sql_one_star = "SELECT complained_against_email FROM one_star_ratings WHERE one_star_count >= 5";
        $result_one_star = mysqli_query($conn, $sql_one_star);
        if ($result_one_star) {
            while ($row_one_star = mysqli_fetch_assoc($result_one_star)) {
                $email = $row_one_star['complained_against_email'];
                $ratings = getRatingDistribution($email, $conn);
                $complaint_sql = "SELECT * FROM complaints WHERE complained_against_email = '$email'";
                $complaint_result = mysqli_query($conn, $complaint_sql);
                if ($complaint_result) {
                    while ($row = mysqli_fetch_assoc($complaint_result)) {
                        echo '<tr class="highlight-five">
                                <td data-label="Complainer Email">'.$row['complainer_email'].'</td>
                                <td data-label="Complainer Role">'.$row['complainer_role'].'</td>
                                <td data-label="Complained Against Email">'.$row['complained_against_email'].'</td>
                                <td data-label="Complaint">'.$row['complaint'].'</td>
                                <td data-label="Rating">'.$row['rating'].'</td>
                                <td data-label="Date">'.$row['created_at'].'</td>
                                <td data-label="Rating Distribution" class="rating-distribution">
                                    1 star: '.$ratings[1].'<br>
                                    2 star: '.$ratings[2].'<br>
                                    3 star: '.$ratings[3].'<br>
                                    4 star: '.$ratings[4].'<br>
                                    5 star: '.$ratings[5].'
                                </td>
                              </tr>';
                    }
                }
            }
        }

        // Fetch users with only one-star ratings out of 10 or more complaints
        $sql_only_one_star = "SELECT complained_against_email FROM complaints GROUP BY complained_against_email HAVING COUNT(*) >= 10 AND SUM(CASE WHEN rating = 1 THEN 1 ELSE 0 END) = COUNT(*)";
        $result_only_one_star = mysqli_query($conn, $sql_only_one_star);
        if ($result_only_one_star) {
            while ($row_only_one_star = mysqli_fetch_assoc($result_only_one_star)) {
                $email = $row_only_one_star['complained_against_email'];
                $ratings = getRatingDistribution($email, $conn);
                $complaint_sql = "SELECT * FROM complaints WHERE complained_against_email = '$email'";
                $complaint_result = mysqli_query($conn, $complaint_sql);
                if ($complaint_result) {
                    while ($row = mysqli_fetch_assoc($complaint_result)) {
                        echo '<tr class="highlight-ten">
                                <td data-label="Complainer Email">'.$row['complainer_email'].'</td>
                                <td data-label="Complainer Role">'.$row['complainer_role'].'</td>
                                <td data-label="Complained Against Email">'.$row['complained_against_email'].'</td>
                                <td data-label="Complaint">'.$row['complaint'].'</td>
                                <td data-label="Rating">'.$row['rating'].'</td>
                                <td data-label="Date">'.$row['created_at'].'</td>
                                <td data-label="Rating Distribution" class="rating-distribution">
                                    1 star: '.$ratings[1].'<br>
                                    2 star: '.$ratings[2].'<br>
                                    3 star: '.$ratings[3].'<br>
                                    4 star: '.$ratings[4].'<br>
                                    5 star: '.$ratings[5].'
                                </td>
                              </tr>';
                    }
                }
            }
        }

        // Fetch all complaints
        $sql = "SELECT * FROM complaints ORDER BY created_at DESC";
        $result = mysqli_query($conn, $sql);
        if ($result) {
            while ($row = mysqli_fetch_assoc($result)) {
                $email = $row['complained_against_email'];
                $ratings = getRatingDistribution($email, $conn);
                echo '<tr>
                        <td data-label="Complainer Email">'.$row['complainer_email'].'</td>
                        <td data-label="Complainer Role">'.$row['complainer_role'].'</td>
                        <td data-label="Complained Against Email">'.$row['complained_against_email'].'</td>
                        <td data-label="Complaint">'.$row['complaint'].'</td>
                        <td data-label="Rating">'.$row['rating'].'</td>
                        <td data-label="Date">'.$row['created_at'].'</td>
                        <td data-label="Rating Distribution" class="rating-distribution">
                            1 star: '.$ratings[1].'<br>
                            2 star: '.$ratings[2].'<br>
                            3 star: '.$ratings[3].'<br>
                            4 star: '.$ratings[4].'<br>
                            5 star: '.$ratings[5].'
                        </td>
                      </tr>';
            }
        }
        ?>
        </tbody>
    </table>
</div>

<button class="scroll-to-top" onclick="scrollToTop()">Top</button>

<script>
    // Show or hide the scroll-to-top button
    window.onscroll = function() {
        var scrollBtn = document.querySelector('.scroll-to-top');
        if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
            scrollBtn.style.display = "block";
        } else {
            scrollBtn.style.display = "none";
        }
    };

    // Scroll to the top of the document
    function scrollToTop() {
        document.body.scrollTop = 0;
        document.documentElement.scrollTop = 0;
    }
</script>
</body>
</html>
