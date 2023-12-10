<?php
require 'koneksi.php';
$fullname = $_POST['fullname'];
$email1 = $_POST['email1'];
$nomor = $_POST['nomor'];
$email2 = $_POST['email2'];
$message = $_POST['message'];

$sql = "INSERT INTO buku_tamu (fullname, email1, nomor, email2, message) 
        VALUES ('$fullname', '$email1', '$nomor', '$email2', '$message')";

if ($conn->query($sql) === TRUE) {
    header("Location: kk.html");
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

// Tutup koneksi
$conn->close();
?>
