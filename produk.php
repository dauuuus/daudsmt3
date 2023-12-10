<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" countent="IE-edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css" media="screen" title="no title">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
    <title>login</title>
</head>
<body>
    <div class="input">
        <h1>produk</h1>
       
        <form action="" method="post">
            <table>
                <tr>
                    <td width="120"> Kode Barang </td>
                    <td> <input type="text" name="kode_barang"> </td>
                </tr>
                <tr>
                    <td> Nama Barang </td>
                    <td> <input type="text" name="nama_barang"> </td>
                </tr>
                <tr>
                    <td> Harga </td>
                    <td> <input type="text" name="harga"> </td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" name="proses" value="Simpan"> </td>
                </tr>
            </table>
            
        </form>

    </div>
</body>
</html>

<?php
include "koneksi.php";

if(isset($_POST['proses'])){
mysqli_query($koneksi, "insert into barang set  
kode_barang = '$_POST[kode_barang]',
nama_barang = '$_POST[nama_barang]',
harga_barang = '$_POST[harga_barang]'");

echo "Data barang baru telah tersimpan";

}

?>