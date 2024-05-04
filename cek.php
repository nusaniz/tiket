<?php

set_error_handler(function(int $errno, string $errstr) {
    if ((strpos($errstr, 'Undefined array key') === false) && (strpos($errstr, 'Undefined variable') === false)) {
        return false;
    } else {
        return true;
    }
}, E_WARNING);

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
    // Mengambil nilai tiket dari formulir
    $ticket_code = $_POST['ticket_code'];

    // Melakukan query untuk memeriksa apakah tiket sudah divalidasi dan mendapatkan informasi detail tiket
    $sql = "SELECT * FROM halo WHERE ticket_code = '$ticket_code'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        // Memeriksa apakah tiket sudah divalidasi sebelumnya
        if ($row["status"] == "") {
            // Tiket valid, update status menjadi "Telah divalidasi" dan catat waktu validasi
            // $update_sql = "UPDATE halo SET status = 'Telah divalidasi', waktu_validasi = NOW() WHERE ticket_code = '$ticket_code'";
            $update_sql = "UPDATE halo SET status = 'Telah divalidasi', waktu_validasi = DATE_FORMAT(NOW(), '%Y-%m-%d %H:%i:%s') WHERE ticket_code = '$ticket_code'";

            if ($conn->query($update_sql) === TRUE) {
                // Menampilkan informasi detail tiket
                echo "Informasi Tiket:<br>";
                echo "Kode Tiket: " . $row["ticket_code"] . "<br>";
                echo "Nama: " . $row["name"] . "<br>";
                echo "Seat: " . $row["seat"] . "<br>";
                echo "<p style='background-color: rgb(144, 255, 151);   padding: 10px;  border-radius: 5px;'>Telah divalidasi</p>";
            } else {
                echo "Error: " . $update_sql . "<br>" . $conn->error;
            }
        } else if ($row["status"] == "Tolak") {
            echo "<p style='background-color: rgb(255, 144, 144);   padding: 10px;  border-radius: 5px;'>" . $row["status"] . "</p>";
        } else {
            // Tiket sudah divalidasi sebelumnya
            echo "Informasi Tiket:<br>";
            echo "Kode Tiket: " . $row["ticket_code"] . "<br>";
            echo "Nama: " . $row["name"] . "<br>";
            echo "Seat: " . $row["seat"] . "<br>";
            // echo "<p style='background-color: #ffde90;   padding: 10px;  border-radius: 5px;'>Tiket sudah divalidasi sebelumnya.</p>";
            echo "<p style='background-color: #ffde90;   padding: 10px;  border-radius: 5px;'>Tiket sudah divalidasi pada " . $row["waktu_validasi"] ."</p>";
        }
    } else {
        // Tiket tidak valid
        echo "<p style='background-color: #ff9090;   padding: 10px;  border-radius: 5px;'>Tiket tidak valid.</p>";
    }
    
}

// Menutup koneksi database
$conn->close();
?>






<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cek Validasi Tiket</title>
	    <!-- <script src="https://cdn.jsdelivr.net/npm/html5-qrcode@2.2.0/html5-qrcode.min.js"></script> -->
	    <script src="bootstrap/html5-qrcode.min.js"></script>
		<script src="fontawesome/8c521cbf44.js" crossorigin="anonymous"></script>

</head>
<body>
    <h2>Cek Validasi Tiket</h2>
    <form method="POST">
        <label for="ticket_code">Kode Tiket:</label>
        <input type="text" id="ticket_code" name="ticket_code" required>
        <button type="submit" class="btn btn-primary"><i class="fa-solid fa-magnifying-glass"></i> Validasi</button>
    </form>
	
			<div id="reader"></div>
	<script>
        var html5QrcodeScanner = new Html5QrcodeScanner("reader", { fps: 10, qrbox: 250 });
        
        function onScanSuccess(decodedText, decodedResult) {
            // Do something with the scanned code
            document.getElementById("ticket_code").value = decodedText;
        }
        
        html5QrcodeScanner.render(onScanSuccess);
    </script>
	
</body>
</html>




<?php
// Koneksi ke database
$servername = "localhost";
$username = "root"; // Ganti dengan username MySQL Anda
$password = ""; // Ganti dengan password MySQL Anda
$database = "test"; // Ganti dengan nama database Anda

$conn = new mysqli($servername, $username, $password, $database);

// Periksa koneksi
if ($conn->connect_error) {
    die("Koneksi Gagal: " . $conn->connect_error);
}

// Proses upload file CSV
if(isset($_POST["submit"])) {
    $target_dir = "uploads/"; // Direktori untuk menyimpan file CSV
    $target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);
    $uploadOk = 1;
    $fileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));

    // Periksa apakah file CSV
    if($fileType != "csv") {
        echo "Maaf, hanya file CSV yang diizinkan.";
        $uploadOk = 0;
    }

    // Coba upload file
    if ($uploadOk == 0) {
        echo "Maaf, file tidak terunggah.";
    } else {
        if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
            echo "File ". basename( $_FILES["fileToUpload"]["name"]). " berhasil diunggah.";
            
            // Baca file CSV dan masukkan ke database
            $file = fopen($target_file, "r");
            while (($data = fgetcsv($file, 1000, ";")) !== FALSE) {
                $sql = "INSERT INTO halo (id, ticket_code, name, photo, seat, status) VALUES ('".$data[0]."', '".$data[1]."', '".$data[2]."', '".$data[3]."', '".$data[4]."', '".$data[5]."')";
                $conn->query($sql);
				//header('Refresh: 0; url=tiket4.php');
            }
            fclose($file);
        } else {
            echo "Maaf, terjadi kesalahan saat mengunggah file.";
        }
    }
}

// Tutup koneksi database
$conn->close();
?>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Upload CSV to MySQL</title>
</head>
<body>
    <h2>Upload File CSV to MySQL</h2>
    <form method="post" enctype="multipart/form-data">
        <input type="file" name="fileToUpload" id="fileToUpload">
        <input type="submit" value="Upload File" name="submit">
    </form>
</body>
</html>





<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Export Data Tabel MySQL ke CSV</title>
</head>
<body>
    <h2>Export Data Tabel MySQL ke CSV</h2>
    
    <!-- Form untuk mengekspor data -->
    <form action="export_table.php" method="POST">
        <label for="table_name">Nama Tabel:</label>
        <input type="text" id="table_name" name="table_name" value="halo" required>
        <button type="submit">Export CSV</button>
    </form>
</body>
</html>