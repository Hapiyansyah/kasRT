-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Jun 2023 pada 07.34
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kelompok7`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `datawarga`
--

CREATE TABLE `datawarga` (
  `id_warga` varchar(10) NOT NULL,
  `nama` varchar(25) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `no_kk` varchar(20) DEFAULT NULL,
  `no_telp` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_iuran`
--

CREATE TABLE `jenis_iuran` (
  `id_iuran` varchar(10) NOT NULL,
  `nama_iuran` varchar(30) DEFAULT NULL,
  `jumlah_iuran` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporan_transaksi`
--

CREATE TABLE `laporan_transaksi` (
  `id_laporan` varchar(10) NOT NULL,
  `id_transaksi` varchar(10) DEFAULT NULL,
  `tgl_laporan` date DEFAULT NULL,
  `keterangan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_iuran`
--

CREATE TABLE `transaksi_iuran` (
  `id_transaksi` varchar(10) NOT NULL,
  `id_warga` varchar(10) DEFAULT NULL,
  `id_iuran` varchar(10) DEFAULT NULL,
  `tgl_transaksi` date DEFAULT NULL,
  `jumlah_pembayaran` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `datawarga`
--
ALTER TABLE `datawarga`
  ADD PRIMARY KEY (`id_warga`);

--
-- Indeks untuk tabel `jenis_iuran`
--
ALTER TABLE `jenis_iuran`
  ADD PRIMARY KEY (`id_iuran`);

--
-- Indeks untuk tabel `laporan_transaksi`
--
ALTER TABLE `laporan_transaksi`
  ADD PRIMARY KEY (`id_laporan`),
  ADD KEY `id_transaksi` (`id_transaksi`);

--
-- Indeks untuk tabel `transaksi_iuran`
--
ALTER TABLE `transaksi_iuran`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_warga` (`id_warga`),
  ADD KEY `id_iuran` (`id_iuran`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `laporan_transaksi`
--
ALTER TABLE `laporan_transaksi`
  ADD CONSTRAINT `laporan_transaksi_ibfk_1` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi_iuran` (`id_transaksi`);

--
-- Ketidakleluasaan untuk tabel `transaksi_iuran`
--
ALTER TABLE `transaksi_iuran`
  ADD CONSTRAINT `transaksi_iuran_ibfk_1` FOREIGN KEY (`id_warga`) REFERENCES `datawarga` (`id_warga`),
  ADD CONSTRAINT `transaksi_iuran_ibfk_2` FOREIGN KEY (`id_iuran`) REFERENCES `jenis_iuran` (`id_iuran`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
