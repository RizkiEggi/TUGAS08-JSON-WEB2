-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Des 2019 pada 12.56
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `json`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `drzchat`
--

CREATE TABLE `drzchat` (
  `nomor` int(3) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `pesan` varchar(200) NOT NULL,
  `waktu` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data untuk tabel `drzchat`
--

INSERT INTO `drzchat` (`nomor`, `nama`, `pesan`, `waktu`) VALUES
(1, 'Admin', ' bergabung dalam chat', '02 Decembe'),
(2, 'Admin', '@ bergabung dalam chat', '02 Decembe');

-- --------------------------------------------------------

--
-- Struktur dari tabel `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `chat_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `username` varchar(64) DEFAULT NULL,
  `message` text,
  `post_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `message`
--

INSERT INTO `message` (`message_id`, `chat_id`, `user_id`, `username`, `message`, `post_time`) VALUES
(1, 1, 1, 'Nurmi', 'Hallo apa kabar', '2019-11-13 13:54:00'),
(2, 1, 2, 'Desrizal', 'Kabar Baik', '2019-11-13 13:57:00'),
(3, 1, 1, 'Nurmi', 'Lagi Dimana', '2019-11-13 13:58:00'),
(4, 1, 2, 'Desrizal', 'Belitung', '2019-11-13 13:58:00');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `drzchat`
--
ALTER TABLE `drzchat`
  ADD PRIMARY KEY (`nomor`);

--
-- Indeks untuk tabel `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `drzchat`
--
ALTER TABLE `drzchat`
  MODIFY `nomor` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
