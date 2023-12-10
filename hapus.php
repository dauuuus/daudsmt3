<?php
session_start();
// // Jika tidak bisa login maka balik ke login.php
// jika masuk ke halaman ini melalui url, maka langsung menuju halaman login

// Memanggil atau membutuhkan file function.php
require 'koneksi.php';

// Mengambil data dari nis dengan fungsi get
$nis = $_GET['nis'];

// Jika fungsi hapus lebih dari 0/data terhapus, maka munculkan alert dibawah
if (hapus($nis) > 0) {
    echo "<script>
                alert('Data Pekerja berhasil dihapus!');
                document.location.href = 'index.php';
            </script>";
} else {
    // Jika fungsi hapus dibawah dari 0/data tidak terhapus, maka munculkan alert dibawah
    echo "<script>
            alert('Data pekerja gagal dihapus!');
        </script>";
}
