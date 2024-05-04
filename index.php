<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dynamic Side Menu</title>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS -->
    <link rel="stylesheet" href="fontawesome/css/all.min.css">
    <!-- <link rel="stylesheet" href="../bootstrap/css/all.min.css"> -->
    <!-- <script src="https://kit.fontawesome.com/8c521cbf44.js" crossorigin="anonymous"></script> -->
    <style>
        /* Style untuk side menu */
        .sidenav {
            height: 100%;
            width: 250px;
            position: fixed;
            top: 0;
            left: 0;
            background-color: #f8f9fa;
            padding-top: 20px;
        }

        .sidenav a {
            padding: 10px 8px;
            text-decoration: none;
            font-size: 20px;
            color: #000;
            display: block;
        }

        .sidenav a:hover {
            background-color: #ddd;
        }

        /* Content area */
        .content {
            margin-left: 270px;
            padding: 20px;
        }
    </style>
</head>
<body>

<?php include 'sidebar.php';?>

<div class="content">
    <?php
    // Mengecek apakah parameter page telah diberikan dan valid
    if (isset($_GET['page']) && in_array($_GET['page'], ['booking', 'cek_booking', 'cek', 'sale'])) {
        $page = $_GET['page'];
        include "$page.php"; // Menampilkan halaman yang sesuai dengan parameter page
    } else {
        echo "<h2>Welcome to Dynamic Side Menu</h2>";
        echo "<p>Please select a page from the side menu.</p>";
    }
    ?>
</div>

</body>
</html>
