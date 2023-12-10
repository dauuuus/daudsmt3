-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Des 2023 pada 12.48
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_users`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku_tamu`
--

CREATE TABLE `buku_tamu` (
  `fullname` varchar(50) NOT NULL,
  `email1` varchar(50) NOT NULL,
  `nomor` int(12) NOT NULL,
  `email2` varchar(50) NOT NULL,
  `message` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `buku_tamu`
--

INSERT INTO `buku_tamu` (`fullname`, `email1`, `nomor`, `email2`, `message`) VALUES
('', '', 0, '', ''),
('icang', 'icang@gmail.com', 2147483647, 'wawang@gmail.com', 'heloo'),
('kadarmansyah', 'kadarman@gmail.com', 2147483647, 'kadar@gmail.com', ''),
('kadarmansyahd', 'kadarrman@gmail.com', 2147483647, 'kadrar@gmail.com', 'helloooo'),
('kadarmansyahdq', 'kadaqqrrman@gmail.com', 2147483647, 'kadrqar@gmail.com', 'helloooo g'),
('kadarmansyahdqx', 'kadaqqrrman@gmail.com', 2147483647, 'kadrqar@gmail.com', 'helloooo g'),
('kadarmdddansyah', 'kddddadaqqrrman@gmail.com', 494844333, 'kadrqdddar@gmail.com', 'kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkddddddddddddddddddd'),
('rrr', 'rrr@gmail.com', 555, 'rr@gmail,com', 'rrrrr\r\nrrrrr\r\nrrr');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `nis` varchar(50) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tmpt_Lahir` varchar(50) NOT NULL,
  `tgl_Lahir` date NOT NULL,
  `jekel` enum('Laki - Laki','Perempuan') NOT NULL,
  `jurusan` enum('Teknik Listrik','Teknik Komputer dan Jaringan','Multimedia','Rekayasa Perangkat Lunak','Geomatika','Mesin') NOT NULL,
  `email` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`nis`, `nama`, `tmpt_Lahir`, `tgl_Lahir`, `jekel`, `jurusan`, `email`, `gambar`, `alamat`) VALUES
('1121', 'iki', 'Baturaja', '2000-06-07', 'Laki - Laki', 'Rekayasa Perangkat Lunak', 'phonixiki@gmail.com', '65748430c6da2.jpg', 'jl.samarinda '),
('1', 'edora', 'rumah nya dewa zeus', '2022-03-22', 'Perempuan', 'Teknik Listrik', 'edourasipetir@gmail.com', '6574876a2a1de.jpg', 'jl.rumah zeus '),
('33', 'iki', 'atena', '2001-01-01', 'Laki - Laki', 'Rekayasa Perangkat Lunak', 'iki11@gmail.com', '6575480504209.jpg', 'rumah atena');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_users`
--

CREATE TABLE `tbl_users` (
  `fullname` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_users`
--

INSERT INTO `tbl_users` (`fullname`, `username`, `email`, `password`) VALUES
('kadar', '', 'kadar@gmail.com', 'ee'),
('kadarmansyah', '', 'kadarman@gmail.com', 'kadarman'),
('kadarmen', '', 'ddd@gmail.com', 'ddd'),
('sss', '', 'kkmana', 'dddd');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku_tamu`
--
ALTER TABLE `buku_tamu`
  ADD PRIMARY KEY (`fullname`);

--
-- Indeks untuk tabel `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`fullname`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
