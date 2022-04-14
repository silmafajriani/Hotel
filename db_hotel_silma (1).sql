-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Apr 2022 pada 03.28
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_hotel_silma`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_jenis_kamar`
--

CREATE TABLE `tbl_jenis_kamar` (
  `id_jenis` int(11) NOT NULL,
  `kamar` varchar(100) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `foto` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_jenis_kamar`
--

INSERT INTO `tbl_jenis_kamar` (`id_jenis`, `kamar`, `keterangan`, `harga`, `foto`) VALUES
(1, 'singgle', '?', 500000000, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kamar`
--

CREATE TABLE `tbl_kamar` (
  `id_kamar` int(11) NOT NULL,
  `nomor_kamar` varchar(100) NOT NULL,
  `id_jenis` int(11) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_kamar`
--

INSERT INTO `tbl_kamar` (`id_kamar`, `nomor_kamar`, `id_jenis`, `keterangan`) VALUES
(10, '01', 11, '-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_konsumen`
--

CREATE TABLE `tbl_konsumen` (
  `id_konsumen` int(11) NOT NULL,
  `nama_depan` varchar(50) NOT NULL,
  `nama_tengah` varchar(50) NOT NULL,
  `nama_belakang` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `kota` varchar(100) NOT NULL,
  `provinsi` varchar(100) NOT NULL,
  `negara` varchar(100) NOT NULL,
  `no_identitas` varchar(100) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_konsumen`
--

INSERT INTO `tbl_konsumen` (`id_konsumen`, `nama_depan`, `nama_tengah`, `nama_belakang`, `alamat`, `kota`, `provinsi`, `negara`, `no_identitas`, `no_telp`, `email`) VALUES
(1, 'silma', 'fajri', 'ani', 'gunung tanjung', 'tasikmalaya', 'jawa barat', 'indonesia', '1', '5576987978', 'silma@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_transaksi`
--

CREATE TABLE `tbl_transaksi` (
  `no_ktp` int(19) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `no_hp` int(11) NOT NULL,
  `jenis_kamar` varchar(100) NOT NULL,
  `no_kamar` int(11) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `tanggal_keluar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_transaksi`
--

INSERT INTO `tbl_transaksi` (`no_ktp`, `nama`, `alamat`, `no_hp`, `jenis_kamar`, `no_kamar`, `tanggal_masuk`, `tanggal_keluar`) VALUES
(87656778, 'rahma', 'tasikmalaya', 897654321, 'single', 8, '2022-04-05', '2022-04-12'),
(987654321, 'uuuuu', 'iiiiii', 97643682, '...', 0, '2022-04-07', '2022-04-23'),
(2147483647, 'dezhf', 'sxzwed', 2147483647, '...', 0, '2022-04-23', '2022-04-15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `hak_akses` enum('user','admin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `email`, `password`, `nama_lengkap`, `no_hp`, `hak_akses`) VALUES
(1, 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'Silma Fajrianii', '0897654321', 'admin'),
(2, 'user@gmail.com', 'ee11cbb19052e40b07aac0ca060c23ee', 'Silma Fajriani', '08976543213', 'user'),
(10, 'silma@gmail.com', '8044dc6da0fadb88d033a11f9fd4a6cf', 'melinda', '33556', 'user');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_jenis_kamar`
--
ALTER TABLE `tbl_jenis_kamar`
  ADD PRIMARY KEY (`id_jenis`);

--
-- Indeks untuk tabel `tbl_kamar`
--
ALTER TABLE `tbl_kamar`
  ADD PRIMARY KEY (`id_kamar`);

--
-- Indeks untuk tabel `tbl_konsumen`
--
ALTER TABLE `tbl_konsumen`
  ADD PRIMARY KEY (`id_konsumen`);

--
-- Indeks untuk tabel `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  ADD PRIMARY KEY (`no_ktp`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_jenis_kamar`
--
ALTER TABLE `tbl_jenis_kamar`
  MODIFY `id_jenis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `tbl_kamar`
--
ALTER TABLE `tbl_kamar`
  MODIFY `id_kamar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `tbl_konsumen`
--
ALTER TABLE `tbl_konsumen`
  MODIFY `id_konsumen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
