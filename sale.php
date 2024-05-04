<?php
// Koneksi ke database
$servername = "localhost";
$username = "root"; // Ganti dengan username MySQL Anda
$password = ""; // Ganti dengan password MySQL Anda
$database = "test"; // Ganti dengan nama database Anda

// Membuat koneksi
$conn = new mysqli($servername, $username, $password, $database);

// Memeriksa koneksi
if ($conn->connect_error) {
    die("Koneksi gagal: " . $conn->connect_error);
}



// $quota = $_GET['quota'];
// if (isset($_GET['quota'])) {
//     $quota = $_GET['quota'];
// }

require 'app/kuota.php';

// Mengecek kuota tiket yang tersedia
$sql = "SELECT COUNT(*) AS total FROM halo";
$result = $conn->query($sql);
$row = $result->fetch_assoc();
// $available_tickets =  $quota - $row['total']; // Kuota tiket tersedia
$available_tickets = $quota - $row['total']; // Kuota tiket tersedia

// Menutup koneksi database
$conn->close();
?>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Penjualan Tiket</title>
</head>
<body>
    <h2>Penjualan Tiket</h2>
    <?php
// Memeriksa apakah parameter "tiket" telah ditetapkan dalam URL
if (isset($_GET['tiket'])) {
    $ticket_code = $_GET['tiket'];
    // Menampilkan pesan HTML jika parameter "tiket" ada dalam URL
    echo "<p>Kode tiket Anda: $ticket_code</p>";
}
?>

    <?php if ($available_tickets > 0): ?>
        <form method="POST" action="sale_ticket.php">
            <div class="form-group">
                <label for="name">Nama:</label>
                <input type="text" class="form-control" id="name" name="name" required>
            </div>
            <div class="form-group">
                <label for="seat">Kursi:</label>
                <input type="text" class="form-control" id="seat" name="seat" required>
            </div>
            <button type="submit" class="btn btn-primary">Beli Tiket</button>
        </form>
        <p>Kuota tiket: <?php echo $quota; ?></p>
        <p>Sisa kuota tiket: <?php echo $available_tickets; ?></p>
    <?php else: ?>
        <p>Maaf, tiket sudah habis terjual.</p>
    <?php endif; ?>
</body>
</html>
