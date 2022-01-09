-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Inang: 127.0.0.1
-- Waktu pembuatan: 09 Jan 2022 pada 14.22
-- Versi Server: 5.5.32
-- Versi PHP: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Basis data: `rentalmobil_pbo`
--
CREATE DATABASE IF NOT EXISTS `rentalmobil_pbo` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `rentalmobil_pbo`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_login`
--

CREATE TABLE IF NOT EXISTS `data_login` (
  `Id_login` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  PRIMARY KEY (`Id_login`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `data_login`
--

INSERT INTO `data_login` (`Id_login`, `Username`, `Password`) VALUES
(1, 'admin', 'admin'),
(2, 'admin', '122333');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_mobil`
--

CREATE TABLE IF NOT EXISTS `data_mobil` (
  `id_mobil` int(11) NOT NULL AUTO_INCREMENT,
  `nama_mobil` varchar(200) NOT NULL,
  `jenis_mobil` varchar(100) NOT NULL,
  `nomor_plat` varchar(100) NOT NULL,
  `jam_oprasi` varchar(100) NOT NULL,
  `tahun_mobil` varchar(100) NOT NULL,
  PRIMARY KEY (`id_mobil`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `data_mobil`
--

INSERT INTO `data_mobil` (`id_mobil`, `nama_mobil`, `jenis_mobil`, `nomor_plat`, `jam_oprasi`, `tahun_mobil`) VALUES
(1, 'jazz', 'Manual', 'DA 2231 ARB', '08.00 - 16.00 WITA', '2018'),
(2, 'sigra', 'Manual', 'DA 123 FJ', '09:00', '2017');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_pelanggan`
--

CREATE TABLE IF NOT EXISTS `data_pelanggan` (
  `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT,
  `nama_pelanggan` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(100) NOT NULL,
  `alamat` varchar(300) NOT NULL,
  `nama_mobil` varchar(100) NOT NULL,
  `jaminan_pelanggan` varchar(300) NOT NULL,
  `nomor_hp` varchar(100) NOT NULL,
  PRIMARY KEY (`id_pelanggan`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `data_pelanggan`
--

INSERT INTO `data_pelanggan` (`id_pelanggan`, `nama_pelanggan`, `jenis_kelamin`, `alamat`, `nama_mobil`, `jaminan_pelanggan`, `nomor_hp`) VALUES
(2, 'ali', 'Laki-Laki', 'banjarbaru', 'jazz', 'KTP,Motor+STNK', '0823893276');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_rental_mobil`
--

CREATE TABLE IF NOT EXISTS `data_rental_mobil` (
  `id_sewa` int(11) NOT NULL AUTO_INCREMENT,
  `nama_mobil` varchar(100) NOT NULL,
  `nama_pelanggan` varchar(200) NOT NULL,
  `tanggal_pengambilan` date NOT NULL,
  `tanggal_pengembalian` date NOT NULL,
  `jenis_mobil` varchar(100) NOT NULL,
  `harga_perhari` varchar(100) NOT NULL,
  `jumlah_hari_sewa` varchar(100) NOT NULL,
  `harga_total` varchar(100) NOT NULL,
  `syarat_penyewaan` varchar(100) NOT NULL,
  PRIMARY KEY (`id_sewa`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `data_rental_mobil`
--

INSERT INTO `data_rental_mobil` (`id_sewa`, `nama_mobil`, `nama_pelanggan`, `tanggal_pengambilan`, `tanggal_pengembalian`, `jenis_mobil`, `harga_perhari`, `jumlah_hari_sewa`, `harga_total`, `syarat_penyewaan`) VALUES
(1, 'jazz', 'kamal', '2021-01-01', '2021-01-04', 'Matic', '250000', '3', '750000', 'SIM A'),
(2, 'jazz', 'ali', '2020-12-25', '2020-12-28', 'Matic', '250000', '3', '750000', 'SIM A');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
