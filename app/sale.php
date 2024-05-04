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

require 'kuota.php';

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
// if (isset($_GET['tiket'])) {
//     $ticket_code = $_GET['tiket'];
//     // Menampilkan pesan HTML jika parameter "tiket" ada dalam URL
//     echo "<p>Kode tiket Anda: $ticket_code</p>";
// }
// ?>

<?php if (isset($_GET['tiket'])): ?>
        <?php $ticket_code = $_GET['tiket'];?>
        <!-- Tambahkan tombol "Salin Kode Tiket" -->
        <div class="d-flex alert alert-success" role="alert">
            <p style="margin: 0 10px 0 0;" >Kode tiket Anda: <?php echo $ticket_code; ?></p>
            <button class="btn btn-primary btn-sm" onclick="copyToClipboard('<?php echo $ticket_code; ?>')">Salin Kode Tiket</button>
        </div>
    <?php endif; ?>

    <!-- Script JavaScript untuk menyalin kode tiket ke clipboard -->
    <script>
        function copyToClipboard(text) {
            var textField = document.createElement('textarea');
            textField.innerText = text;
            document.body.appendChild(textField);
            textField.select();
            document.execCommand('copy');
            textField.remove();
            alert('Kode tiket berhasil disalin!');
        }
    </script>

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
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="text" class="form-control" id="email" name="email" required>
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
