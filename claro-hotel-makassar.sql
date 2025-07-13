-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 05, 2025 at 04:27 PM
-- Server version: 8.0.30
-- PHP Version: 8.2.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `claro-hotel-makassar`
--

-- --------------------------------------------------------

--
-- Table structure for table `fasilitas`
--

CREATE TABLE `fasilitas` (
  `id_fasilitas` int NOT NULL,
  `nama_fasilitas` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `fasilitas`
--

INSERT INTO `fasilitas` (`id_fasilitas`, `nama_fasilitas`) VALUES
(16, 'Akses Kursi Roda'),
(6, 'Area Bebas Rokok'),
(12, 'ATM di Lokasi'),
(19, 'Kantin Karyawan'),
(2, 'Kolam Renang Anak'),
(20, 'Layanan Antar Kamar 24 Jam'),
(1, 'Layanan Kebersihan Harian'),
(8, 'Layanan Panggilan Dokter'),
(11, 'Layanan Penitipan Anak'),
(13, 'Lift'),
(17, 'Penyewaan Mobil'),
(4, 'Penyewaan Sepeda'),
(9, 'Pusat Bisnis'),
(5, 'Ruang Merokok'),
(15, 'Ruang Serbaguna'),
(7, 'Ruang Tunggu Tamu'),
(3, 'Tempat Bermain Anak'),
(10, 'Tempat Ibadah'),
(14, 'Teras'),
(18, 'Toko Oleh-Oleh');

-- --------------------------------------------------------

--
-- Table structure for table `fasilitas_kamar`
--

CREATE TABLE `fasilitas_kamar` (
  `id_kamar` varchar(20) NOT NULL,
  `id_fasilitas` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `fasilitas_kamar`
--

INSERT INTO `fasilitas_kamar` (`id_kamar`, `id_fasilitas`) VALUES
('RM-00001', 1),
('RM-00002', 1),
('RM-00002', 6),
('RM-00003', 6),
('RM-00003', 10),
('RM-00001', 11),
('RM-00002', 11),
('RM-00001', 13),
('RM-00002', 13),
('RM-00003', 13),
('RM-00001', 14),
('RM-00001', 17),
('RM-00003', 17),
('RM-00002', 18),
('RM-00001', 19),
('RM-00001', 20),
('RM-00003', 20);

-- --------------------------------------------------------

--
-- Table structure for table `gambar_kamar`
--

CREATE TABLE `gambar_kamar` (
  `id_gambar` int NOT NULL,
  `id_kamar` varchar(20) NOT NULL,
  `url_gambar` text NOT NULL,
  `utama` tinyint(1) DEFAULT '0',
  `dibuat_pada` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `gambar_kamar`
--

INSERT INTO `gambar_kamar` (`id_gambar`, `id_kamar`, `url_gambar`, `utama`, `dibuat_pada`) VALUES
(45, 'RM-00001', 'rooms/683b1d8a888f1.jpg', 1, '2025-05-31 15:17:30'),
(46, 'RM-00001', 'rooms/683b1d8ab2f8a.jpg', 0, '2025-05-31 15:17:30'),
(47, 'RM-00001', 'rooms/683b1d8abc46c.jpg', 0, '2025-05-31 15:17:30'),
(48, 'RM-00002', 'rooms/683b26bf34d09.jpg', 1, '2025-05-31 15:56:47'),
(49, 'RM-00002', 'rooms/683b26bf6366e.jpg', 0, '2025-05-31 15:56:47'),
(50, 'RM-00003', 'rooms/683b2719ecdb9.jpg', 1, '2025-05-31 15:58:18'),
(51, 'RM-00003', 'rooms/683b271a2b406.jpg', 0, '2025-05-31 15:58:18'),
(52, 'RM-00003', 'rooms/683b271a32d07.jpg', 0, '2025-05-31 15:58:18'),
(53, 'RM-00003', 'rooms/683b271a36d81.jpg', 0, '2025-05-31 15:58:18');

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `id_hotel` varchar(20) NOT NULL,
  `nama_hotel` varchar(255) NOT NULL,
  `lokasi` varchar(100) NOT NULL,
  `dibuat_pada` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `diperbarui_pada` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`id_hotel`, `nama_hotel`, `lokasi`, `dibuat_pada`, `diperbarui_pada`) VALUES
('HTL-0001', 'CLARO Makassar', 'Makassar', '2025-05-31 15:17:30', '2025-05-31 15:17:30');

-- --------------------------------------------------------

--
-- Table structure for table `kamar`
--

CREATE TABLE `kamar` (
  `id_kamar` varchar(20) NOT NULL,
  `id_hotel` varchar(20) NOT NULL,
  `nama_kamar` varchar(255) NOT NULL,
  `deskripsi` text,
  `tipe_kamar` varchar(50) NOT NULL,
  `lantai` int NOT NULL,
  `nomor_kamar` varchar(20) NOT NULL,
  `harga` decimal(10,2) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Tersedia',
  `dibuat_pada` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `diperbarui_pada` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kamar`
--

INSERT INTO `kamar` (`id_kamar`, `id_hotel`, `nama_kamar`, `deskripsi`, `tipe_kamar`, `lantai`, `nomor_kamar`, `harga`, `status`, `dibuat_pada`, `diperbarui_pada`) VALUES
('RM-00001', 'HTL-0001', 'Deluxe Twin Bed', 'Additional breakfast untuk anak-anak akan di kenakan sesuai dengan ketinggian badan sebagai berikut:* 0 cm-100 cm Free * 100 cm -140 cm charge 50%* Diatas 140 cm charge 100%', 'Deluxe', 1, '1A', '532000.00', 'Available', '2025-05-31 15:17:30', '2025-05-31 15:17:30'),
('RM-00002', 'HTL-0001', 'Deluxe King Bed', 'Additional breakfast untuk anak-anak akan di kenakan sesuai dengan ketinggian badan sebagai berikut:* 0 cm-100 cm Free * 100 cm -140 cm charge 50%* Diatas 140 cm charge 100%', 'Deluxe', 1, '1B', '580000.00', 'Available', '2025-05-31 15:56:47', '2025-06-01 18:34:27'),
('RM-00003', 'HTL-0001', 'Deluxe King Pool View', 'Room with Balcony Terrace based on avaibility upon check inAdditional breakfast untuk anak-anak akan di kenakan sesuai dengan ketinggian badan sebagai berikut:* 0 cm-100 cm Free * 100 cm -140 cm charge 50%* Diatas 140 cm charge 100% ', 'Deluxe', 1, '1C', '800000.00', 'Available', '2025-05-31 15:58:18', '2025-06-01 18:34:30');

-- --------------------------------------------------------

--
-- Table structure for table `pajak`
--

CREATE TABLE `pajak` (
  `id_pajak` int NOT NULL,
  `nama_pajak` varchar(100) NOT NULL,
  `nilai` decimal(15,2) NOT NULL,
  `tipe` enum('fixed','percentage') NOT NULL DEFAULT 'fixed',
  `aktif` tinyint(1) NOT NULL DEFAULT '1',
  `tanggal_update` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pajak`
--

INSERT INTO `pajak` (`id_pajak`, `nama_pajak`, `nilai`, `tipe`, `aktif`, `tanggal_update`) VALUES
(1, 'PPn Top Up', '6500.00', 'fixed', 1, '2025-06-01 03:28:41');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` varchar(30) NOT NULL,
  `id_pemesanan` varchar(20) NOT NULL,
  `metode_pembayaran` varchar(50) NOT NULL,
  `status` enum('pending','success','failed','cancelled') DEFAULT 'pending',
  `jumlah` decimal(15,2) NOT NULL,
  `token_pembayaran` varchar(255) DEFAULT NULL,
  `url_pembayaran` varchar(255) DEFAULT NULL,
  `waktu_dibayar` timestamp NULL DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `dibuat_pada` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `diperbarui_pada` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `id_pemesanan`, `metode_pembayaran`, `status`, `jumlah`, `token_pembayaran`, `url_pembayaran`, `waktu_dibayar`, `keterangan`, `dibuat_pada`, `diperbarui_pada`) VALUES
('CN250602187', 'BK250602202', 'Cancellation', 'success', '806500.00', NULL, NULL, '2025-06-02 10:46:17', 'Pembatalan: Dibatalkan oleh pengguna: ssssas', '2025-06-02 10:46:17', '2025-06-02 10:46:17'),
('CN250616128', '1001', 'Cancellation', 'success', '685525.00', NULL, NULL, '2025-06-16 00:06:43', 'Pembatalan dengan biaya 15%: Dibatalkan oleh pengguna: adfd pada 2025-06-16T08:06:43.650 | Total: Rp806.500 | Biaya: Rp120.975 | Dikembalikan: Rp685.525', '2025-06-16 00:06:43', '2025-06-16 00:06:43'),
('PY250601151', 'BK250601897', 'Saldo', 'success', '586500.00', NULL, NULL, '2025-06-01 20:21:53', 'Menunggu konfirmasi pembayaran', '2025-06-01 20:21:47', '2025-06-01 20:21:53'),
('PY250601181', 'BK250601274', 'Saldo', 'success', '586500.00', NULL, NULL, '2025-06-01 17:01:46', NULL, '2025-06-01 17:01:46', '2025-06-01 17:01:46'),
('PY250601287', 'BK250601958', 'Saldo', 'success', '6406500.00', NULL, NULL, '2025-06-01 14:02:11', NULL, '2025-06-01 14:02:11', '2025-06-01 14:02:11'),
('PY250601327', 'BK250601281', 'Saldo', 'success', '806500.00', NULL, NULL, '2025-06-01 19:31:03', 'Menunggu konfirmasi pembayaran', '2025-06-01 19:30:54', '2025-06-01 19:31:03'),
('PY250601335', 'BK250601110', 'Saldo', 'success', '586500.00', NULL, NULL, '2025-06-01 17:10:25', NULL, '2025-06-01 17:10:25', '2025-06-01 17:10:25'),
('PY250601353', 'BK250601862', 'Saldo', 'success', '796500.00', NULL, NULL, '2025-06-01 18:54:35', 'Menunggu konfirmasi pembayaran', '2025-06-01 18:54:28', '2025-06-01 18:54:35'),
('PY250601371', 'BK250601101', 'Saldo', 'success', '586500.00', NULL, NULL, '2025-06-01 17:06:37', NULL, '2025-06-01 17:06:37', '2025-06-01 17:06:37'),
('PY250601386', 'BK250601378', 'Saldo', 'success', '586500.00', NULL, NULL, '2025-06-01 17:18:03', NULL, '2025-06-01 17:18:03', '2025-06-01 17:18:03'),
('PY250601474', 'BK250601924', 'Saldo', 'success', '806500.00', NULL, NULL, '2025-06-01 19:17:37', 'Menunggu konfirmasi pembayaran', '2025-06-01 19:17:31', '2025-06-01 19:17:37'),
('PY250601503', 'BK250601557', 'Saldo', 'success', '586500.00', NULL, NULL, '2025-06-01 19:48:14', 'Menunggu konfirmasi pembayaran', '2025-06-01 19:48:07', '2025-06-01 19:48:14'),
('PY250601546', 'BK250601228', 'Saldo', 'success', '586500.00', NULL, NULL, '2025-06-01 15:37:07', NULL, '2025-06-01 15:37:07', '2025-06-01 15:37:07'),
('PY250601549', 'BK250601336', 'Saldo', 'success', '586500.00', NULL, NULL, '2025-06-01 18:33:08', 'Menunggu konfirmasi pembayaran', '2025-06-01 18:32:58', '2025-06-01 18:33:08'),
('PY250601550', 'BK250601899', 'Saldo', 'success', '806500.00', NULL, NULL, '2025-06-01 20:32:26', 'Menunggu konfirmasi pembayaran', '2025-06-01 20:32:20', '2025-06-01 20:32:26'),
('PY250601566', 'BK250601311', 'Saldo', 'success', '1746500.00', NULL, NULL, '2025-06-01 15:45:02', NULL, '2025-06-01 15:45:02', '2025-06-01 15:45:02'),
('PY250601577', 'BK250601711', 'Saldo', 'success', '586500.00', NULL, NULL, '2025-06-01 17:14:12', NULL, '2025-06-01 17:14:12', '2025-06-01 17:14:12'),
('PY250601620', 'BK250601902', 'Saldo', 'cancelled', '586500.00', NULL, NULL, '2025-06-02 10:15:52', 'Pembayaran dibatalkan - waktu habis', '2025-06-01 20:03:46', '2025-06-02 10:15:52'),
('PY250601720', 'BK250601817', 'Saldo', 'success', '586500.00', NULL, NULL, '2025-06-01 16:24:18', NULL, '2025-06-01 16:24:18', '2025-06-01 16:24:18'),
('PY250601726', 'BK250601338', 'Saldo', 'success', '586500.00', NULL, NULL, '2025-06-01 15:52:38', NULL, '2025-06-01 15:52:38', '2025-06-01 15:52:38'),
('PY250601750', 'BK250601635', 'Saldo', 'success', '586500.00', NULL, NULL, '2025-06-01 15:26:03', NULL, '2025-06-01 15:26:03', '2025-06-01 15:26:03'),
('PY250601922', 'BK250601858', 'Saldo', 'success', '576500.00', NULL, NULL, '2025-06-01 19:26:43', 'Menunggu konfirmasi pembayaran', '2025-06-01 19:26:32', '2025-06-01 19:26:43'),
('PY250601966', 'BK250601863', 'Saldo', 'success', '6500.00', NULL, NULL, '2025-06-01 14:48:40', NULL, '2025-06-01 14:48:40', '2025-06-01 14:48:40'),
('PY250602372', 'BK250602918', 'Saldo', 'success', '586500.00', NULL, NULL, '2025-06-02 10:50:56', 'Menunggu konfirmasi pembayaran', '2025-06-02 10:50:50', '2025-06-02 10:50:56'),
('PY250602538', 'BK250602939', 'Saldo', 'cancelled', '806500.00', NULL, NULL, '2025-06-02 10:15:52', 'Pembayaran dibatalkan - waktu habis', '2025-06-02 10:05:02', '2025-06-02 10:15:52'),
('PY250602584', 'BK250602496', 'Saldo', 'success', '586500.00', NULL, NULL, '2025-06-02 11:33:54', 'Menunggu konfirmasi pembayaran', '2025-06-02 11:33:48', '2025-06-02 11:33:54'),
('PY250602647', 'BK250602643', 'Saldo', 'success', '586500.00', NULL, NULL, '2025-06-02 10:26:10', 'Pemesanan dibatalkan - Dibatalkan oleh pengguna: Dibatalkan oleh pengguna', '2025-06-02 10:25:51', '2025-06-02 10:26:10'),
('PY250602660', 'BK250602305', 'Saldo', 'cancelled', '586500.00', NULL, NULL, '2025-06-02 10:17:25', 'Pembayaran dibatalkan - waktu habis', '2025-06-02 10:16:23', '2025-06-02 10:17:25'),
('PY250602736', 'BK250602391', 'Saldo', 'success', '806500.00', NULL, NULL, '2025-06-02 09:12:14', 'Menunggu konfirmasi pembayaran', '2025-06-02 09:11:58', '2025-06-02 09:12:14'),
('PY250602747', 'BK250602239', 'Saldo', 'success', '586500.00', NULL, NULL, '2025-06-02 10:44:55', 'Menunggu konfirmasi pembayaran', '2025-06-02 10:44:49', '2025-06-02 10:44:55'),
('PY250602789', 'BK250602562', 'Saldo', 'cancelled', '806500.00', NULL, NULL, '2025-06-02 10:15:52', 'Pembayaran dibatalkan - waktu habis', '2025-06-02 10:08:37', '2025-06-02 10:15:52'),
('PY250602794', 'BK250602793', 'Saldo', 'success', '586500.00', NULL, NULL, '2025-06-02 10:43:04', 'Menunggu konfirmasi pembayaran', '2025-06-02 10:42:59', '2025-06-02 10:43:04'),
('PY250602873', 'BK250602202', 'Saldo', 'success', '806500.00', NULL, NULL, '2025-06-02 10:46:04', 'Menunggu konfirmasi pembayaran', '2025-06-02 10:45:59', '2025-06-02 10:46:04'),
('PY250602960', 'BK250602304', 'Saldo', 'cancelled', '806500.00', NULL, NULL, '2025-06-02 10:15:52', 'Pembayaran dibatalkan - waktu habis', '2025-06-02 09:37:25', '2025-06-02 10:15:52'),
('PY250602991', 'BK250602214', 'Saldo', 'cancelled', '806500.00', NULL, NULL, '2025-06-02 10:15:52', 'Pembayaran dibatalkan - waktu habis', '2025-06-02 09:59:08', '2025-06-02 10:15:52'),
('RF250601284', 'BK250601557', 'Refund', 'success', '586500.00', NULL, NULL, '2025-06-01 19:50:57', 'Refund karena: ewcda', '2025-06-01 19:50:57', '2025-06-01 19:50:57'),
('RF250601656', 'BK250601557', 'Refund', 'success', '586500.00', NULL, NULL, '2025-06-01 19:51:22', 'Refund karena: dwd', '2025-06-01 19:51:22', '2025-06-01 19:51:22'),
('RF250601914', 'BK250601858', 'Refund', 'success', '576500.00', NULL, NULL, '2025-06-01 19:29:09', 'Refund karena: uuiuihuih', '2025-06-01 19:29:09', '2025-06-01 19:29:09'),
('RF250602261', 'BK250602918', 'Refund', 'success', '586500.00', NULL, NULL, '2025-06-02 10:51:07', 'Refund karena: erere', '2025-06-02 10:51:07', '2025-06-02 10:51:07'),
('RF250602729', 'BK250602793', 'Refund', 'success', '586500.00', NULL, NULL, '2025-06-02 10:43:19', 'Refund karena: asasasa', '2025-06-02 10:43:19', '2025-06-02 10:43:19'),
('RF250602863', 'BK250602496', 'Refund', 'success', '498525.00', NULL, NULL, '2025-06-02 11:51:12', 'Refund dengan biaya 15%: fccbcbc | Total: Rp586.500 | Biaya: Rp87.975 | Dikembalikan: Rp498.525', '2025-06-02 11:51:12', '2025-06-02 11:51:12'),
('RF250602968', 'BK250602643', 'Refund', 'success', '586500.00', NULL, NULL, '2025-06-02 10:37:43', 'Refund karena: dddasasa', '2025-06-02 10:37:43', '2025-06-02 10:37:43'),
('RF250602978', 'BK250602239', 'Refund', 'success', '586500.00', NULL, NULL, '2025-06-02 10:45:18', 'Refund karena: sss', '2025-06-02 10:45:18', '2025-06-02 10:45:18');

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id_pemesanan` varchar(20) NOT NULL,
  `id_pengguna` varchar(10) NOT NULL,
  `id_kamar` varchar(10) NOT NULL,
  `tanggal_check_in` date NOT NULL,
  `tanggal_check_out` date NOT NULL,
  `jumlah_tamu` int NOT NULL DEFAULT '1',
  `permintaan_khusus` text,
  `harga_per_malam` decimal(15,2) NOT NULL,
  `durasi_menginap` int NOT NULL,
  `subtotal` decimal(15,2) NOT NULL,
  `id_voucher` varchar(20) DEFAULT NULL,
  `nilai_diskon` decimal(15,2) NOT NULL DEFAULT '0.00',
  `jumlah_pajak` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_pembayaran` decimal(15,2) NOT NULL,
  `status` enum('pending','confirmed','completed','cancelled','refunded','check out') DEFAULT 'pending',
  `keterangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `dibuat_pada` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `diperbarui_pada` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pemesanan`
--

INSERT INTO `pemesanan` (`id_pemesanan`, `id_pengguna`, `id_kamar`, `tanggal_check_in`, `tanggal_check_out`, `jumlah_tamu`, `permintaan_khusus`, `harga_per_malam`, `durasi_menginap`, `subtotal`, `id_voucher`, `nilai_diskon`, `jumlah_pajak`, `total_pembayaran`, `status`, `keterangan`, `dibuat_pada`, `diperbarui_pada`) VALUES
('1001', 'PLG000003', 'RM-00003', '2025-06-17', '2025-06-18', 1, '', '800000.00', 1, '800000.00', NULL, '0.00', '6500.00', '806500.00', 'cancelled', 'Pemesanan melalui aplikasi mobile', '2025-06-15 21:33:26', '2025-06-16 00:06:43'),
('1002', 'PLG000003', 'RM-00003', '2025-06-17', '2025-06-18', 1, '', '800000.00', 1, '800000.00', NULL, '0.00', '6500.00', '806500.00', 'cancelled', 'Pemesanan melalui aplikasi mobile', '2025-06-16 04:30:18', '2025-06-16 04:30:40'),
('BK250601101', 'PLG000001', 'RM-00002', '2025-07-01', '2025-07-02', 1, '', '580000.00', 1, '580000.00', NULL, '0.00', '6500.00', '586500.00', 'pending', '', '2025-06-01 17:06:37', '2025-06-01 17:06:37'),
('BK250601110', 'PLG000001', 'RM-00002', '2025-07-05', '2025-07-06', 1, '', '580000.00', 1, '580000.00', NULL, '0.00', '6500.00', '586500.00', 'pending', '', '2025-06-01 17:10:25', '2025-06-01 17:10:25'),
('BK250601228', 'PLG000001', 'RM-00002', '2025-06-12', '2025-06-13', 1, '', '580000.00', 1, '580000.00', NULL, '0.00', '6500.00', '586500.00', 'pending', '', '2025-06-01 15:37:07', '2025-06-01 15:37:07'),
('BK250601274', 'PLG000001', 'RM-00002', '2025-06-29', '2025-06-30', 1, '', '580000.00', 1, '580000.00', NULL, '0.00', '6500.00', '586500.00', 'pending', '', '2025-06-01 17:01:46', '2025-06-01 17:01:46'),
('BK250601281', 'PLG000002', 'RM-00003', '2025-07-23', '2025-07-24', 1, '', '800000.00', 1, '800000.00', NULL, '0.00', '6500.00', '806500.00', 'cancelled', NULL, '2025-06-01 19:30:54', '2025-06-01 19:47:09'),
('BK250601311', 'PLG000001', 'RM-00002', '2025-06-15', '2025-06-18', 2, '', '580000.00', 3, '1740000.00', NULL, '0.00', '6500.00', '1746500.00', 'pending', '', '2025-06-01 15:45:02', '2025-06-01 15:45:02'),
('BK250601336', 'PLG000001', 'RM-00002', '2025-07-20', '2025-07-21', 1, '', '580000.00', 1, '580000.00', NULL, '0.00', '6500.00', '586500.00', 'cancelled', NULL, '2025-06-01 18:32:58', '2025-06-01 18:33:31'),
('BK250601338', 'PLG000001', 'RM-00002', '2025-06-22', '2025-06-23', 1, '', '580000.00', 1, '580000.00', NULL, '0.00', '6500.00', '586500.00', 'pending', '', '2025-06-01 15:52:38', '2025-06-01 15:52:38'),
('BK250601378', 'PLG000001', 'RM-00002', '2025-07-09', '2025-07-10', 1, '', '580000.00', 1, '580000.00', NULL, '0.00', '6500.00', '586500.00', 'pending', '', '2025-06-01 17:18:03', '2025-06-01 17:18:03'),
('BK250601557', 'PLG000002', 'RM-00002', '2025-07-24', '2025-07-25', 1, '', '580000.00', 1, '580000.00', NULL, '0.00', '6500.00', '586500.00', 'cancelled', NULL, '2025-06-01 19:48:07', '2025-06-01 19:51:50'),
('BK250601635', 'PLG000001', 'RM-00002', '2025-06-10', '2025-06-11', 1, '', '580000.00', 1, '580000.00', NULL, '0.00', '6500.00', '586500.00', 'pending', '', '2025-06-01 15:26:03', '2025-06-01 15:26:03'),
('BK250601711', 'PLG000001', 'RM-00002', '2025-08-04', '2025-08-05', 1, '', '580000.00', 1, '580000.00', NULL, '0.00', '6500.00', '586500.00', 'pending', '', '2025-06-01 17:14:12', '2025-06-01 17:14:12'),
('BK250601817', 'PLG000001', 'RM-00002', '2025-06-25', '2025-06-26', 1, '', '580000.00', 1, '580000.00', NULL, '0.00', '6500.00', '586500.00', 'pending', '', '2025-06-01 16:24:17', '2025-06-01 16:24:17'),
('BK250601858', 'PLG000002', 'RM-00002', '2025-07-21', '2025-07-22', 1, 'sas', '580000.00', 1, '580000.00', 'VC-00002', '10000.00', '6500.00', '576500.00', 'refunded', NULL, '2025-06-01 19:26:32', '2025-06-01 19:29:09'),
('BK250601862', 'PLG000001', 'RM-00003', '2025-07-21', '2025-07-22', 1, 'ssas', '800000.00', 1, '800000.00', 'VC-00002', '10000.00', '6500.00', '796500.00', 'confirmed', NULL, '2025-06-01 18:54:28', '2025-06-01 18:54:35'),
('BK250601863', 'PLG000001', 'RM-00002', '2025-06-02', '2025-06-03', 1, 'xxc', '580000.00', 0, '0.00', NULL, '0.00', '6500.00', '6500.00', 'pending', '', '2025-06-01 14:48:40', '2025-06-01 14:48:40'),
('BK250601897', 'PLG000002', 'RM-00002', '2025-07-27', '2025-07-28', 1, '', '580000.00', 1, '580000.00', NULL, '0.00', '6500.00', '586500.00', 'confirmed', NULL, '2025-06-01 20:21:47', '2025-06-01 20:21:53'),
('BK250601899', 'PLG000002', 'RM-00003', '2025-06-26', '2025-06-27', 1, '', '800000.00', 1, '800000.00', NULL, '0.00', '6500.00', '806500.00', 'confirmed', NULL, '2025-06-01 20:32:20', '2025-06-01 20:32:26'),
('BK250601902', 'PLG000002', 'RM-00002', '2025-07-21', '2025-07-22', 1, '', '580000.00', 1, '580000.00', NULL, '0.00', '6500.00', '586500.00', 'cancelled', NULL, '2025-06-01 20:03:46', '2025-06-02 10:15:52'),
('BK250601924', 'PLG000002', 'RM-00003', '2025-06-22', '2025-06-23', 1, '', '800000.00', 1, '800000.00', NULL, '0.00', '6500.00', '806500.00', 'refunded', NULL, '2025-06-01 19:17:31', '2025-06-01 19:19:31'),
('BK250601958', 'PLG000001', 'RM-00003', '2025-06-02', '2025-06-11', 1, 'iuttrtytyt', '800000.00', 8, '6400000.00', NULL, '0.00', '6500.00', '6406500.00', 'confirmed', '', '2025-06-01 14:02:11', '2025-06-01 14:02:11'),
('BK250602202', 'PLG000002', 'RM-00003', '2025-07-03', '2025-07-04', 1, '', '800000.00', 1, '800000.00', NULL, '0.00', '6500.00', '806500.00', 'cancelled', NULL, '2025-06-02 10:45:59', '2025-06-02 10:46:17'),
('BK250602214', 'PLG000002', 'RM-00003', '2025-06-24', '2025-06-25', 1, '', '800000.00', 1, '800000.00', NULL, '0.00', '6500.00', '806500.00', 'cancelled', NULL, '2025-06-02 09:59:08', '2025-06-02 10:15:52'),
('BK250602239', 'PLG000002', 'RM-00002', '2025-07-12', '2025-07-13', 1, '', '580000.00', 1, '580000.00', NULL, '0.00', '6500.00', '586500.00', 'refunded', NULL, '2025-06-02 10:44:49', '2025-06-02 10:45:18'),
('BK250602304', 'PLG000002', 'RM-00003', '2025-06-17', '2025-06-18', 1, '', '800000.00', 1, '800000.00', NULL, '0.00', '6500.00', '806500.00', 'cancelled', NULL, '2025-06-02 09:37:25', '2025-06-02 10:15:52'),
('BK250602305', 'PLG000002', 'RM-00002', '2025-07-14', '2025-07-15', 1, '', '580000.00', 1, '580000.00', NULL, '0.00', '6500.00', '586500.00', 'cancelled', NULL, '2025-06-02 10:16:23', '2025-06-02 10:17:25'),
('BK250602391', 'PLG000002', 'RM-00003', '2025-07-29', '2025-07-30', 1, '', '800000.00', 1, '800000.00', NULL, '0.00', '6500.00', '806500.00', 'confirmed', NULL, '2025-06-02 09:11:58', '2025-06-02 09:12:14'),
('BK250602496', 'PLG000002', 'RM-00002', '2025-07-07', '2025-07-08', 1, '', '580000.00', 1, '580000.00', NULL, '0.00', '6500.00', '586500.00', 'refunded', NULL, '2025-06-02 11:33:48', '2025-06-02 11:51:12'),
('BK250602562', 'PLG000002', 'RM-00003', '2025-07-08', '2025-07-09', 1, '', '800000.00', 1, '800000.00', NULL, '0.00', '6500.00', '806500.00', 'cancelled', NULL, '2025-06-02 10:08:37', '2025-06-02 10:15:52'),
('BK250602643', 'PLG000002', 'RM-00002', '2025-07-13', '2025-07-14', 1, 'assss', '580000.00', 1, '580000.00', NULL, '0.00', '6500.00', '586500.00', 'refunded', NULL, '2025-06-02 10:25:51', '2025-06-02 10:37:43'),
('BK250602793', 'PLG000002', 'RM-00002', '2025-07-16', '2025-07-17', 1, 'saassa', '580000.00', 1, '580000.00', NULL, '0.00', '6500.00', '586500.00', 'refunded', NULL, '2025-06-02 10:42:59', '2025-06-02 10:43:19'),
('BK250602918', 'PLG000002', 'RM-00002', '2025-07-13', '2025-07-14', 1, 'fedd', '580000.00', 1, '580000.00', NULL, '0.00', '6500.00', '586500.00', 'refunded', NULL, '2025-06-02 10:50:50', '2025-06-02 10:51:07'),
('BK250602939', 'PLG000002', 'RM-00003', '2025-06-28', '2025-06-29', 1, '', '800000.00', 1, '800000.00', NULL, '0.00', '6500.00', '806500.00', 'cancelled', NULL, '2025-06-02 10:05:02', '2025-06-02 10:15:52');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id_pengguna` varchar(50) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `kata_sandi` varchar(255) DEFAULT NULL,
  `no_telepon` varchar(20) DEFAULT NULL,
  `peran` enum('admin','pelanggan') DEFAULT 'pelanggan',
  `tanggal_dibuat` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `nama`, `username`, `email`, `kata_sandi`, `no_telepon`, `peran`, `tanggal_dibuat`) VALUES
('ADM001', 'Administrator Sistem', 'admin', 'admin@clarotravel.com', 'admin123', '081234567890', 'admin', '2025-05-28 04:36:54'),
('PLG000001', 'Sitti Rohani', 'ranicuantiks', 'rani@gmail.com', 'Rani123', '089918888811', 'pelanggan', '2025-05-28 11:45:14'),
('PLG000002', 'Muh Nurkhalis', 'khalis', 'mnsprogdev@gmail.com', 'Khalis16', '089513062824', 'pelanggan', '2025-06-01 19:14:15'),
('PLG000003', 'Rani', 'rani', 'ranibaddu@gmail.com', 'pelanggan123', '087740059666', 'pelanggan', '2025-06-15 13:01:43');

-- --------------------------------------------------------

--
-- Table structure for table `penggunaan_voucher`
--

CREATE TABLE `penggunaan_voucher` (
  `id` int NOT NULL,
  `id_voucher` varchar(10) NOT NULL,
  `id_pemesanan` varchar(15) NOT NULL,
  `id_pengguna` varchar(15) NOT NULL,
  `tanggal_penggunaan` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `nilai_diskon` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `saldo_pengguna`
--

CREATE TABLE `saldo_pengguna` (
  `id_saldo` int NOT NULL,
  `id_pengguna` varchar(10) NOT NULL,
  `jumlah_saldo` decimal(15,2) NOT NULL DEFAULT '0.00',
  `last_update` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `saldo_pengguna`
--

INSERT INTO `saldo_pengguna` (`id_saldo`, `id_pengguna`, `jumlah_saldo`, `last_update`) VALUES
(2, 'PLG000001', '3179000.00', '2025-06-02 02:54:35'),
(3, 'PLG000002', '17686025.00', '2025-06-02 19:51:12'),
(4, 'PLG000003', '5379025.00', '2025-06-16 12:37:58');

-- --------------------------------------------------------

--
-- Table structure for table `session_tokens`
--

CREATE TABLE `session_tokens` (
  `id` int NOT NULL,
  `id_pengguna` varchar(50) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `expired_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `status_pemesanan`
--

CREATE TABLE `status_pemesanan` (
  `id_status` int NOT NULL,
  `id_pemesanan` varchar(20) NOT NULL,
  `status` enum('pending','confirmed','completed','cancelled','refunded','check out') NOT NULL,
  `keterangan` text,
  `dibuat_pada` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `status_pemesanan`
--

INSERT INTO `status_pemesanan` (`id_status`, `id_pemesanan`, `status`, `keterangan`, `dibuat_pada`) VALUES
(1, 'BK250601958', 'confirmed', 'Pemesanan berhasil dibuat', '2025-06-01 14:02:11'),
(2, 'BK250601863', 'pending', 'Pemesanan sedang diproses', '2025-06-01 14:48:40'),
(3, 'BK250601635', 'pending', 'Pemesanan sedang diproses', '2025-06-01 15:26:03'),
(4, 'BK250601228', 'pending', 'Pemesanan sedang diproses', '2025-06-01 15:37:07'),
(5, 'BK250601311', 'pending', 'Pemesanan sedang diproses', '2025-06-01 15:45:02'),
(6, 'BK250601338', 'pending', 'Pemesanan sedang diproses', '2025-06-01 15:52:38'),
(7, 'BK250601817', 'pending', 'Pemesanan sedang diproses', '2025-06-01 16:24:18'),
(8, 'BK250601274', 'pending', 'Pemesanan sedang diproses', '2025-06-01 17:01:46'),
(9, 'BK250601101', 'pending', 'Pemesanan sedang diproses', '2025-06-01 17:06:37'),
(10, 'BK250601110', 'pending', 'Pemesanan sedang diproses', '2025-06-01 17:10:25'),
(11, 'BK250601711', 'pending', 'Pemesanan sedang diproses', '2025-06-01 17:14:12'),
(12, 'BK250601378', 'pending', 'Pemesanan sedang diproses', '2025-06-01 17:18:03'),
(45, 'BK250601336', 'pending', 'Pemesanan sedang diproses', '2025-06-01 18:32:58'),
(46, 'BK250601336', 'confirmed', 'Pembayaran berhasil dikonfirmasi', '2025-06-01 18:33:08'),
(58, 'BK250601336', 'cancelled', 'Dibatalkan oleh pengguna: Gak Ada Sih', '2025-06-01 18:33:31'),
(81, 'BK250601862', 'pending', 'Pemesanan sedang diproses', '2025-06-01 18:54:28'),
(82, 'BK250601862', 'confirmed', 'Pembayaran berhasil dikonfirmasi', '2025-06-01 18:54:35'),
(94, 'BK250601924', 'pending', 'Pemesanan sedang diproses', '2025-06-01 19:17:31'),
(95, 'BK250601924', 'confirmed', 'Pembayaran berhasil dikonfirmasi', '2025-06-01 19:17:37'),
(96, 'BK250601924', 'refunded', 'asas', '2025-06-01 19:19:31'),
(97, 'BK250601858', 'pending', 'Pemesanan sedang diproses', '2025-06-01 19:26:32'),
(98, 'BK250601858', 'confirmed', 'Pembayaran berhasil dikonfirmasi', '2025-06-01 19:26:43'),
(99, 'BK250601858', 'refunded', 'uuiuihuih', '2025-06-01 19:29:09'),
(100, 'BK250601281', 'pending', 'Pemesanan sedang diproses', '2025-06-01 19:30:54'),
(101, 'BK250601281', 'confirmed', 'Pembayaran berhasil dikonfirmasi', '2025-06-01 19:31:03'),
(102, 'BK250601281', 'cancelled', 'Dibatalkan oleh pengguna: ssas', '2025-06-01 19:47:09'),
(103, 'BK250601557', 'pending', 'Pemesanan sedang diproses', '2025-06-01 19:48:07'),
(104, 'BK250601557', 'confirmed', 'Pembayaran berhasil dikonfirmasi', '2025-06-01 19:48:14'),
(105, 'BK250601557', 'refunded', 'ewcda', '2025-06-01 19:50:57'),
(106, 'BK250601557', 'refunded', 'dwd', '2025-06-01 19:51:22'),
(107, 'BK250601557', 'cancelled', 'Dibatalkan oleh pengguna: sasa', '2025-06-01 19:51:50'),
(108, 'BK250601902', 'pending', 'Pemesanan sedang diproses', '2025-06-01 20:03:46'),
(120, 'BK250601897', 'pending', 'Pemesanan sedang diproses', '2025-06-01 20:21:47'),
(121, 'BK250601897', 'confirmed', 'Pembayaran berhasil dikonfirmasi', '2025-06-01 20:21:53'),
(126, 'BK250601899', 'pending', 'Pemesanan sedang diproses', '2025-06-01 20:32:20'),
(127, 'BK250601899', 'confirmed', 'Pembayaran berhasil dikonfirmasi', '2025-06-01 20:32:26'),
(143, 'BK250602391', 'pending', 'Pemesanan sedang diproses', '2025-06-02 09:11:58'),
(145, 'BK250602391', 'confirmed', 'Pembayaran berhasil dikonfirmasi', '2025-06-02 09:12:14'),
(149, 'BK250602304', 'pending', 'Pemesanan sedang diproses', '2025-06-02 09:37:25'),
(163, 'BK250602214', 'pending', 'Pemesanan sedang diproses', '2025-06-02 09:59:08'),
(169, 'BK250602939', 'pending', 'Pemesanan sedang diproses', '2025-06-02 10:05:02'),
(176, 'BK250602562', 'pending', 'Pemesanan sedang diproses', '2025-06-02 10:08:37'),
(183, 'BK250602562', 'cancelled', 'Pembayaran dibatalkan - waktu habis', '2025-06-02 10:15:52'),
(184, 'BK250602939', 'cancelled', 'Pembayaran dibatalkan - waktu habis', '2025-06-02 10:15:52'),
(185, 'BK250602214', 'cancelled', 'Pembayaran dibatalkan - waktu habis', '2025-06-02 10:15:52'),
(186, 'BK250602304', 'cancelled', 'Pembayaran dibatalkan - waktu habis', '2025-06-02 10:15:52'),
(187, 'BK250601902', 'cancelled', 'Pembayaran dibatalkan - waktu habis', '2025-06-02 10:15:52'),
(188, 'BK250602305', 'pending', 'Pemesanan sedang diproses', '2025-06-02 10:16:23'),
(189, 'BK250602305', 'cancelled', 'Pembayaran dibatalkan - waktu habis', '2025-06-02 10:17:25'),
(191, 'BK250602643', 'pending', 'Pemesanan sedang diproses', '2025-06-02 10:25:51'),
(192, 'BK250602643', 'cancelled', 'Dibatalkan oleh pengguna: Dibatalkan oleh pengguna', '2025-06-02 10:26:05'),
(193, 'BK250602643', 'confirmed', 'Pembayaran berhasil dikonfirmasi', '2025-06-02 10:26:10'),
(201, 'BK250602643', 'refunded', 'dddasasa', '2025-06-02 10:37:43'),
(202, 'BK250602793', 'pending', 'Pemesanan sedang diproses', '2025-06-02 10:42:59'),
(203, 'BK250602793', 'confirmed', 'Pembayaran berhasil dikonfirmasi', '2025-06-02 10:43:04'),
(204, 'BK250602793', 'refunded', 'asasasa', '2025-06-02 10:43:19'),
(205, 'BK250602793', 'refunded', 'sss', '2025-06-02 10:43:33'),
(206, 'BK250602239', 'pending', 'Pemesanan sedang diproses', '2025-06-02 10:44:49'),
(207, 'BK250602239', 'confirmed', 'Pembayaran berhasil dikonfirmasi', '2025-06-02 10:44:55'),
(208, 'BK250602239', 'refunded', 'sss', '2025-06-02 10:45:18'),
(209, 'BK250602239', 'refunded', 'as', '2025-06-02 10:45:28'),
(210, 'BK250602202', 'pending', 'Pemesanan sedang diproses', '2025-06-02 10:45:59'),
(211, 'BK250602202', 'confirmed', 'Pembayaran berhasil dikonfirmasi', '2025-06-02 10:46:04'),
(212, 'BK250602202', 'cancelled', 'Dibatalkan oleh pengguna: ssssas', '2025-06-02 10:46:17'),
(213, 'BK250602202', 'cancelled', 'Dibatalkan oleh pengguna: ss', '2025-06-02 10:46:26'),
(214, 'BK250602918', 'pending', 'Pemesanan sedang diproses', '2025-06-02 10:50:50'),
(215, 'BK250602918', 'confirmed', 'Pembayaran berhasil dikonfirmasi', '2025-06-02 10:50:56'),
(216, 'BK250602918', 'refunded', 'erere', '2025-06-02 10:51:07'),
(217, 'BK250602496', 'pending', 'Pemesanan sedang diproses', '2025-06-02 11:33:48'),
(218, 'BK250602496', 'confirmed', 'Pembayaran berhasil dikonfirmasi', '2025-06-02 11:33:54'),
(219, 'BK250602496', 'refunded', 'fccbcbc', '2025-06-02 11:51:12'),
(220, '1001', 'confirmed', 'Pembayaran berhasil dikonfirmasi pada 2025-06-16T05:33:32.718', '2025-06-15 21:33:33'),
(221, '1001', 'cancelled', 'Dibatalkan oleh pengguna: adfd pada 2025-06-16T08:06:43.650', '2025-06-16 00:06:43'),
(222, '1002', 'cancelled', 'Dibatalkan oleh pengguna: Dibatalkan oleh pengguna pada 2025-06-16T12:30:40.112442', '2025-06-16 04:30:40');

-- --------------------------------------------------------

--
-- Table structure for table `top_up`
--

CREATE TABLE `top_up` (
  `id_top_up` varchar(20) NOT NULL,
  `id_pengguna` varchar(10) NOT NULL,
  `jumlah` decimal(15,2) NOT NULL,
  `jumlah_pajak` decimal(15,2) NOT NULL,
  `total_pembayaran` decimal(15,2) NOT NULL,
  `status` enum('pending','success','failed') NOT NULL DEFAULT 'success',
  `tanggal_top_up` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `top_up`
--

INSERT INTO `top_up` (`id_top_up`, `id_pengguna`, `jumlah`, `jumlah_pajak`, `total_pembayaran`, `status`, `tanggal_top_up`) VALUES
('TPU20250531211355956', 'PLG000001', '1000000.00', '6500.00', '1006500.00', 'success', '2025-06-01 05:13:55'),
('TPU20250531213753941', 'PLG000001', '500000.00', '6500.00', '506500.00', 'pending', '2025-06-01 05:37:53'),
('TPU20250531214851878', 'PLG000001', '500000.00', '6500.00', '506500.00', 'success', '2025-06-01 05:48:51'),
('TPU20250531223134709', 'PLG000001', '500000.00', '6500.00', '506500.00', 'success', '2025-06-01 06:31:34'),
('TPU20250531223742701', 'PLG000001', '500000.00', '6500.00', '506500.00', 'success', '2025-06-01 06:37:42'),
('TPU20250531224640668', 'PLG000001', '500000.00', '6500.00', '506500.00', 'success', '2025-06-01 06:46:40'),
('TPU20250531225019722', 'PLG000001', '5000000.00', '6500.00', '5006500.00', 'success', '2025-06-01 06:50:19'),
('TPU20250601153844572', 'PLG000001', '10000000.00', '6500.00', '10006500.00', 'success', '2025-06-01 23:38:44'),
('TPU20250601191636148', 'PLG000002', '15000000.00', '6500.00', '15006500.00', 'success', '2025-06-02 03:16:36'),
('TPU20250601203951192', 'PLG000002', '500000.00', '6500.00', '506500.00', 'pending', '2025-06-02 04:39:51'),
('TPU20250601204301653', 'PLG000002', '3000000.00', '6500.00', '3006500.00', 'pending', '2025-06-02 04:43:01'),
('TPU20250602084459421', 'PLG000002', '500000.00', '6500.00', '506500.00', 'success', '2025-06-02 16:44:59'),
('TPU20250602095458701', 'PLG000002', '500000.00', '6500.00', '506500.00', 'success', '2025-06-02 17:54:58'),
('TPU20250602095537714', 'PLG000002', '5000000.00', '6500.00', '5006500.00', 'success', '2025-06-02 17:55:37'),
('TPU20250615131941716', 'PLG000003', '500000.00', '6500.00', '506500.00', 'pending', '2025-06-15 21:19:41'),
('TPU20250615131950804', 'PLG000003', '500000.00', '6500.00', '506500.00', 'success', '2025-06-15 21:19:50'),
('TPU20250615132250658', 'PLG000003', '500000.00', '6500.00', '506500.00', 'success', '2025-06-15 21:22:50'),
('TPU20250616043227644', 'PLG000003', '500000.00', '6500.00', '506500.00', 'success', '2025-06-16 12:32:27'),
('TPU20250616054639542', 'PLG000003', '500000.00', '6500.00', '506500.00', 'pending', '2025-06-16 13:46:39');

-- --------------------------------------------------------

--
-- Table structure for table `ulasan`
--

CREATE TABLE `ulasan` (
  `id_ulasan` int NOT NULL,
  `id_pemesanan` varchar(20) NOT NULL,
  `id_pengguna` varchar(10) NOT NULL,
  `id_kamar` varchar(10) NOT NULL,
  `rating` int NOT NULL,
  `komentar` text,
  `dibuat_pada` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `diperbarui_pada` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `voucher`
--

CREATE TABLE `voucher` (
  `id_voucher` varchar(10) NOT NULL,
  `kode` varchar(15) NOT NULL,
  `deskripsi` text NOT NULL,
  `nilai_diskon` decimal(10,2) NOT NULL,
  `tipe_diskon` enum('percentage','fixed') NOT NULL DEFAULT 'percentage',
  `berlaku_hingga` date NOT NULL,
  `aktif` tinyint(1) NOT NULL DEFAULT '1',
  `batas_penggunaan` int NOT NULL DEFAULT '0',
  `penggunaan_saat_ini` int NOT NULL DEFAULT '0',
  `minimum_pembelian` decimal(10,2) DEFAULT NULL,
  `url_gambar` varchar(255) DEFAULT NULL,
  `dibuat_pada` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `diperbarui_pada` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `voucher`
--

INSERT INTO `voucher` (`id_voucher`, `kode`, `deskripsi`, `nilai_diskon`, `tipe_diskon`, `berlaku_hingga`, `aktif`, `batas_penggunaan`, `penggunaan_saat_ini`, `minimum_pembelian`, `url_gambar`, `dibuat_pada`, `diperbarui_pada`) VALUES
('VC-00001', 'DISK001', 'Halo Guys', '10.00', 'percentage', '2025-07-01', 1, 10, 0, NULL, NULL, '2025-05-31 16:04:30', '2025-05-31 16:04:30'),
('VC-00002', 'GUYSPROM', 'Lohaa', '10000.00', 'fixed', '2025-07-01', 1, 5, 2, NULL, NULL, '2025-05-31 16:05:01', '2025-06-01 19:26:32');

-- --------------------------------------------------------

--
-- Table structure for table `voucher_kamar`
--

CREATE TABLE `voucher_kamar` (
  `id` int NOT NULL,
  `id_voucher` varchar(10) NOT NULL,
  `id_kamar` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `voucher_kamar`
--

INSERT INTO `voucher_kamar` (`id`, `id_voucher`, `id_kamar`) VALUES
(2, 'VC-00001', 'RM-00003');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fasilitas`
--
ALTER TABLE `fasilitas`
  ADD PRIMARY KEY (`id_fasilitas`),
  ADD UNIQUE KEY `nama_fasilitas` (`nama_fasilitas`);

--
-- Indexes for table `fasilitas_kamar`
--
ALTER TABLE `fasilitas_kamar`
  ADD PRIMARY KEY (`id_kamar`,`id_fasilitas`),
  ADD KEY `id_fasilitas` (`id_fasilitas`);

--
-- Indexes for table `gambar_kamar`
--
ALTER TABLE `gambar_kamar`
  ADD PRIMARY KEY (`id_gambar`),
  ADD KEY `id_kamar` (`id_kamar`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`id_hotel`);

--
-- Indexes for table `kamar`
--
ALTER TABLE `kamar`
  ADD PRIMARY KEY (`id_kamar`),
  ADD KEY `id_hotel` (`id_hotel`);

--
-- Indexes for table `pajak`
--
ALTER TABLE `pajak`
  ADD PRIMARY KEY (`id_pajak`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`),
  ADD KEY `id_pemesanan` (`id_pemesanan`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id_pemesanan`),
  ADD KEY `id_pengguna` (`id_pengguna`),
  ADD KEY `id_kamar` (`id_kamar`),
  ADD KEY `id_voucher` (`id_voucher`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_pengguna`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `penggunaan_voucher`
--
ALTER TABLE `penggunaan_voucher`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_voucher` (`id_voucher`);

--
-- Indexes for table `saldo_pengguna`
--
ALTER TABLE `saldo_pengguna`
  ADD PRIMARY KEY (`id_saldo`),
  ADD UNIQUE KEY `id_pengguna` (`id_pengguna`);

--
-- Indexes for table `session_tokens`
--
ALTER TABLE `session_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_token` (`token`),
  ADD KEY `id_pengguna` (`id_pengguna`);

--
-- Indexes for table `status_pemesanan`
--
ALTER TABLE `status_pemesanan`
  ADD PRIMARY KEY (`id_status`),
  ADD KEY `id_pemesanan` (`id_pemesanan`);

--
-- Indexes for table `top_up`
--
ALTER TABLE `top_up`
  ADD PRIMARY KEY (`id_top_up`),
  ADD KEY `id_pengguna` (`id_pengguna`);

--
-- Indexes for table `ulasan`
--
ALTER TABLE `ulasan`
  ADD PRIMARY KEY (`id_ulasan`),
  ADD UNIQUE KEY `id_pemesanan` (`id_pemesanan`),
  ADD KEY `id_pengguna` (`id_pengguna`),
  ADD KEY `id_kamar` (`id_kamar`);

--
-- Indexes for table `voucher`
--
ALTER TABLE `voucher`
  ADD PRIMARY KEY (`id_voucher`),
  ADD UNIQUE KEY `kode` (`kode`),
  ADD KEY `idx_voucher_kode` (`kode`),
  ADD KEY `idx_voucher_aktif` (`aktif`),
  ADD KEY `idx_voucher_berlaku` (`berlaku_hingga`);

--
-- Indexes for table `voucher_kamar`
--
ALTER TABLE `voucher_kamar`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_voucher_kamar` (`id_voucher`,`id_kamar`),
  ADD KEY `id_kamar` (`id_kamar`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fasilitas`
--
ALTER TABLE `fasilitas`
  MODIFY `id_fasilitas` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `gambar_kamar`
--
ALTER TABLE `gambar_kamar`
  MODIFY `id_gambar` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `pajak`
--
ALTER TABLE `pajak`
  MODIFY `id_pajak` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `penggunaan_voucher`
--
ALTER TABLE `penggunaan_voucher`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `saldo_pengguna`
--
ALTER TABLE `saldo_pengguna`
  MODIFY `id_saldo` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `session_tokens`
--
ALTER TABLE `session_tokens`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `status_pemesanan`
--
ALTER TABLE `status_pemesanan`
  MODIFY `id_status` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;

--
-- AUTO_INCREMENT for table `ulasan`
--
ALTER TABLE `ulasan`
  MODIFY `id_ulasan` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `voucher_kamar`
--
ALTER TABLE `voucher_kamar`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `fasilitas_kamar`
--
ALTER TABLE `fasilitas_kamar`
  ADD CONSTRAINT `fasilitas_kamar_ibfk_1` FOREIGN KEY (`id_kamar`) REFERENCES `kamar` (`id_kamar`) ON DELETE CASCADE,
  ADD CONSTRAINT `fasilitas_kamar_ibfk_2` FOREIGN KEY (`id_fasilitas`) REFERENCES `fasilitas` (`id_fasilitas`) ON DELETE CASCADE;

--
-- Constraints for table `gambar_kamar`
--
ALTER TABLE `gambar_kamar`
  ADD CONSTRAINT `gambar_kamar_ibfk_1` FOREIGN KEY (`id_kamar`) REFERENCES `kamar` (`id_kamar`) ON DELETE CASCADE;

--
-- Constraints for table `kamar`
--
ALTER TABLE `kamar`
  ADD CONSTRAINT `kamar_ibfk_1` FOREIGN KEY (`id_hotel`) REFERENCES `hotel` (`id_hotel`) ON DELETE CASCADE;

--
-- Constraints for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_ibfk_1` FOREIGN KEY (`id_pemesanan`) REFERENCES `pemesanan` (`id_pemesanan`) ON DELETE CASCADE;

--
-- Constraints for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD CONSTRAINT `pemesanan_ibfk_1` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna` (`id_pengguna`) ON DELETE CASCADE,
  ADD CONSTRAINT `pemesanan_ibfk_2` FOREIGN KEY (`id_kamar`) REFERENCES `kamar` (`id_kamar`) ON DELETE CASCADE,
  ADD CONSTRAINT `pemesanan_ibfk_3` FOREIGN KEY (`id_voucher`) REFERENCES `voucher` (`id_voucher`) ON DELETE SET NULL;

--
-- Constraints for table `penggunaan_voucher`
--
ALTER TABLE `penggunaan_voucher`
  ADD CONSTRAINT `penggunaan_voucher_ibfk_1` FOREIGN KEY (`id_voucher`) REFERENCES `voucher` (`id_voucher`) ON DELETE CASCADE;

--
-- Constraints for table `saldo_pengguna`
--
ALTER TABLE `saldo_pengguna`
  ADD CONSTRAINT `saldo_pengguna_ibfk_1` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna` (`id_pengguna`) ON DELETE CASCADE;

--
-- Constraints for table `session_tokens`
--
ALTER TABLE `session_tokens`
  ADD CONSTRAINT `session_tokens_ibfk_1` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna` (`id_pengguna`);

--
-- Constraints for table `status_pemesanan`
--
ALTER TABLE `status_pemesanan`
  ADD CONSTRAINT `status_pemesanan_ibfk_1` FOREIGN KEY (`id_pemesanan`) REFERENCES `pemesanan` (`id_pemesanan`) ON DELETE CASCADE;

--
-- Constraints for table `top_up`
--
ALTER TABLE `top_up`
  ADD CONSTRAINT `top_up_ibfk_1` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna` (`id_pengguna`) ON DELETE CASCADE;

--
-- Constraints for table `ulasan`
--
ALTER TABLE `ulasan`
  ADD CONSTRAINT `ulasan_ibfk_1` FOREIGN KEY (`id_pemesanan`) REFERENCES `pemesanan` (`id_pemesanan`) ON DELETE CASCADE,
  ADD CONSTRAINT `ulasan_ibfk_2` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna` (`id_pengguna`) ON DELETE CASCADE,
  ADD CONSTRAINT `ulasan_ibfk_3` FOREIGN KEY (`id_kamar`) REFERENCES `kamar` (`id_kamar`) ON DELETE CASCADE;

--
-- Constraints for table `voucher_kamar`
--
ALTER TABLE `voucher_kamar`
  ADD CONSTRAINT `voucher_kamar_ibfk_1` FOREIGN KEY (`id_voucher`) REFERENCES `voucher` (`id_voucher`) ON DELETE CASCADE,
  ADD CONSTRAINT `voucher_kamar_ibfk_2` FOREIGN KEY (`id_kamar`) REFERENCES `kamar` (`id_kamar`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
