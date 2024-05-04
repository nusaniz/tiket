<?php
// Koneksi ke database
$servername = "localhost";
$username = "root"; // Ganti dengan username MySQL Anda
$password = ""; // Ganti dengan password MySQL Anda
$database = "test"; // Ganti dengan nama database Anda

// Membuat koneksi
$conn = new mysqli($servername, $username, $password, $database);

// Memeriksa apakah formulir telah disubmit
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Ambil data dari formulir
    $name = $_POST['name'];
    $seat = $_POST['seat'];

    // Generate ticket_code secara otomatis
    $ticket_code = generateTicketCode();

    // Insert data baru ke dalam tabel
    $sql = "INSERT INTO halo (ticket_code, name, seat) VALUES ('$ticket_code', '$name', '$seat')";
    if (mysqli_query($conn, $sql)) {
        // echo "Tiket berhasil dibeli. Kode tiket Anda: $ticket_code";
        header("Location: index.php?page=sale&tiket=" . $ticket_code);
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }
}

// Fungsi untuk menghasilkan ticket_code secara acak
function generateTicketCode() {
    $characters = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $ticket_code = '';
    $length = 8; // Panjang ticket_code yang diinginkan

    // Generate ticket_code secara acak dengan panjang yang ditentukan
    for ($i = 0; $i < $length; $i++) {
        $ticket_code .= $characters[rand(0, strlen($characters) - 1)];
    }

    return $ticket_code;
}




use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

// Mengirim email konfirmasi pembelian tiket
sendEmail($name, $ticket_code);

// Fungsi untuk mengirim email
function sendEmail($name, $ticket_code) {
    // Load library PHPMailer
    require '../PHPMailer/PHPMailer/PHPMailer.php';
    require '../PHPMailer/PHPMailer/SMTP.php';
    require '../PHPMailer/PHPMailer/Exception.php';
    require '../mailConf/config_email.php';

    // Konfigurasi SMTP
    $mail = new PHPMailer();
    $mail->isSMTP();
    $mail->Host = 'smtp.gmail.com';  // Ganti dengan alamat SMTP server Anda
    $mail->SMTPAuth = true;
    $mail->Username = $username; // Ganti dengan username email Anda
    $mail->Password = $password; // Ganti dengan password email Anda
    $mail->SMTPSecure = 'tls';
    $mail->Port = 587;

    // Set pengirim email
    $mail->setFrom($email_pengirim, $nama_pengirim);

    // Set penerima email
    $mail->addAddress('tagar60384@lewenbo.com', $name); // Ganti dengan email pembeli dan namanya

    // Konten email
    $mail->isHTML(true);
    $mail->Subject = "Konfirmasi Pembelian Tiket $name";
    $mail->Body    = "Halo $name,<br><br>Terima kasih telah membeli tiket. Berikut adalah kode tiket Anda: $ticket_code. Simpan kode ini dengan baik untuk verifikasi.<br><br>Terima kasih,<br>Your Company";

    // Kirim email
    if(!$mail->send()) {
        echo 'Email tidak dapat dikirim.';
        echo 'Mailer Error: ' . $mail->ErrorInfo;
    } else {
        echo 'Email berhasil dikirim.';
    }
}

?>
