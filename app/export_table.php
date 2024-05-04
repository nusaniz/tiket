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

// Query untuk mendapatkan data dari tabel (ganti 'nama_tabel' dengan nama tabel yang ingin diekspor)
$sql = "SELECT * FROM halo";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // Header untuk file CSV
    header('Content-Type: text/csv');
    header('Content-Disposition: attachment; filename="data_tabel.csv"');

    // Membuat file CSV
    $output = fopen('php://output', 'w');

    // Menulis header kolom
    $column_headers = array();
    while ($column = $result->fetch_field()) {
        $column_headers[] = $column->name;
    }
    fputcsv($output, $column_headers);

    // Menulis baris data
    while ($row = $result->fetch_assoc()) {
        fputcsv($output, $row);
    }

    // Menutup file CSV
    fclose($output);
} else {
    echo "Tidak ada data yang tersedia untuk diekspor.";
}

// Menutup koneksi database
$conn->close();
?>





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

// Memeriksa apakah form telah disubmit
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Mengambil nama tabel dari formulir
    $table_name = $_POST['table_name'];

    // Query untuk mengambil data dari tabel
    $sql = "SELECT * FROM $table_name";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        // Nama file untuk menyimpan data CSV
        $filename = $table_name . "_export_" . date('Y-m-d') . ".csv";

        // Header untuk file CSV
        header("Content-Disposition: attachment; filename=\"$filename\"");
        header("Content-Type: text/csv");

        // Membuka file output
        $output = fopen("php://output", "w");

        // Menulis header kolom ke file CSV
        $header = array();
        $row = $result->fetch_assoc();
        foreach ($row as $key => $value) {
            $header[] = $key;
        }
        fputcsv($output, $header, ";");

        // Menulis baris data ke file CSV
        do {
            $row_data = array();
            foreach ($row as $value) {
                $row_data[] = $value;
            }
            fputcsv($output, $row_data, ";");
        } while ($row = $result->fetch_assoc());

        // Menutup file output
        fclose($output);
    } else {
        echo "Tidak ada data yang ditemukan dalam tabel.";
    }
}

// Menutup koneksi database
$conn->close();
?>
