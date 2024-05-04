<?php
// Memeriksa apakah form telah disubmit
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Mengambil nilai kuota tiket dari formulir
    $quota = $_POST['quota'];

    // Menyimpan nilai kuota tiket baru ke dalam file
    // file_put_contents("sale.php", $quota);
    // file_put_contents("kuota.php","kuota: " . $quota);
    file_put_contents("kuota.php","<?php $" . "quota = " . $quota . ";?>");

    // Mengarahkan kembali ke halaman penjualan tiket
    // header("Location: index.php?page=sale&&quota=" . $quota);
    header("Location: index.php?page=quota");
}
?>