<?php
// Koneksi ke database
require "../conf/db_connection.php";

// Memeriksa koneksi
if ($conn->connect_error) {
    die("Koneksi gagal: " . $conn->connect_error);
}

// Memeriksa apakah ada parameter ID yang dikirimkan
if(isset($_GET['id'])) {
    $id = $_GET['id'];

    // Mengeksekusi query untuk mendapatkan data berdasarkan ID
    $sql = "SELECT * FROM halo WHERE id = $id";
    $result = $conn->query($sql);

    // Memeriksa apakah data ditemukan
    if ($result->num_rows > 0) {
        // Mendapatkan data dari hasil query
        $row = $result->fetch_assoc();
        $name = $row['name'];
        $seat = $row['seat'];
        $email = $row['email'];

        // Periksa apakah ada pesan dari halaman update
        if (isset($_GET['message'])) {
            $message = $_GET['message'];
        }
    } else {
        echo "Data tidak ditemukan.";
        exit;
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
    <title>Edit Data</title>
</head>
<body>
    <h2>Edit Data</h2>
    <?php if(isset($message)): ?>
        <p class="alert alert-success" role="alert"><?php echo $message; ?></p>
    <?php endif; ?>
    <form method="POST" action="update.php">
        <input type="hidden" name="id" value="<?php echo $id; ?>">
        <!-- <div>
            <label for="name">name:</label>
            <input type="text" id="name" name="name" value="<?php echo $name; ?>">
        </div>
        <div>
            <label for="seat">seat:</label>
            <input type="text" id="seat" name="seat" value="<?php echo $seat; ?>">
        </div>
        <div>
            <label for="email">Email:</label>
            <input type="text" id="email" name="email" value="<?php echo $email; ?>">
        </div> -->

        <div class="form-group">
    <label for="name">name</label>
    <input type="text" class="form-control" id="name" name="name" value="<?php echo $name; ?>">
</div>
<div class="form-group">
    <label for="seat">seat</label>
    <input type="text" class="form-control" id="seat" name="seat" value="<?php echo $seat; ?>">
</div>
<div class="form-group">
    <label for="email">Email</label>
    <input type="text" class="form-control" id="email" name="email" value="<?php echo $email; ?>">
</div>





        <button type="submit" class="btn btn-primary mt-4"><i class="fa-regular fa-floppy-disk"></i> Simpan Perubahan</button>
    </form>
    <a href="index.php?page=admin" class="btn btn-secondary mt-2"><i class="fa-regular fa-circle-left"></i> Kembali</a>
</body>
</html>
