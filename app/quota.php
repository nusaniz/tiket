<?php
// session_start();
// Memeriksa apakah user sudah login atau belum
if (!isset($_SESSION['username'])) {
    header("Location: ../login/");
    exit();
}
?>

<!-- <?php require 'kuota.php';?> -->
<!-- <?php require 'sale.php';?> -->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kuota Tiket</title>
</head>
<body>
    <h2>Kuota Tiket</h2>
    <p>Kuota Tiket: <?php echo $quota;?></p>
    <p>Sisa kuota tiket: <?php echo $available_tickets; ?></p>

    <!-- Form untuk mengubah nilai available_tickets -->
    <form method="POST" action="update_quota.php">
        <div class="form-group">
            <label for="quota">Kuota Tiket:</label>
            <!-- <input type="number" class="form-control" id="quota" name="quota" value="<?php echo $available_tickets; ?>" required> -->
            <input type="number" class="form-control" id="quota" name="quota" value="<?php echo $quota; ?>" required>
        </div>
        <button type="submit" class="btn btn-primary">Simpan</button>
    </form>
</body>
</html>
