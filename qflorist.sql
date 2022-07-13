-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Inang: localhost
-- Waktu pembuatan: 05 Jul 2022 pada 15.37
-- Versi Server: 5.6.12-log
-- Versi PHP: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Basis data: `qflorist`
--
CREATE DATABASE IF NOT EXISTS `qflorist` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `qflorist`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `chatting`
--

CREATE TABLE IF NOT EXISTS `chatting` (
  `id_chatting` int(11) NOT NULL AUTO_INCREMENT,
  `id_pelanggan` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `admin_send` text,
  `pelanggan_send` text,
  `time_chatting` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_chatting`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `chatting`
--

INSERT INTO `chatting` (`id_chatting`, `id_pelanggan`, `id_user`, `admin_send`, `pelanggan_send`, `time_chatting`) VALUES
(1, 1, NULL, '0', 'bagai mana pesanan saya?', '2022-05-13 17:52:02'),
(2, 1, NULL, 'sedang di proses kak', '0', '2022-05-13 17:52:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gambar`
--

CREATE TABLE IF NOT EXISTS `gambar` (
  `id_gambar` int(11) NOT NULL AUTO_INCREMENT,
  `id_produk` int(11) NOT NULL,
  `keterangan` varchar(50) DEFAULT NULL,
  `gambar` text,
  PRIMARY KEY (`id_gambar`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
  `id_kategori` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'bunga'),
(2, 'makanan'),
(3, 'flanel'),
(4, 'uang'),
(5, 'boneka');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lokasi`
--

CREATE TABLE IF NOT EXISTS `lokasi` (
  `id_lokasi` int(11) NOT NULL AUTO_INCREMENT,
  `nama_lokasi` varchar(50) DEFAULT NULL,
  `kelurahan` varchar(50) DEFAULT NULL,
  `kode_pos` varchar(12) DEFAULT NULL,
  `ongkir` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_lokasi`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=57 ;

--
-- Dumping data untuk tabel `lokasi`
--

INSERT INTO `lokasi` (`id_lokasi`, `nama_lokasi`, `kelurahan`, `kode_pos`, `ongkir`) VALUES
(1, 'Cengkareng', 'Cengkareng Barat', '11730', '10000'),
(2, 'Cengkareng', 'Cengkareng Timur', '11730', '12000'),
(3, 'Cengkareng', 'Duri Kosambi', '11750', '13000'),
(4, 'Cengkareng', 'Kapuk', '11720', '14000'),
(5, 'Cengkareng', 'Kedaung Kali Angke', '11710', '15000'),
(6, 'Cengkareng', 'Rawa Buaya', '11740', '16000'),
(7, 'Grogol Petamburan', 'Grogol', '11450', '17000'),
(8, 'Grogol Petamburan', 'Jelambar Baru', '11460', '18000'),
(9, 'Grogol Petamburan', 'Jelambar', '11460', '19000'),
(10, 'Grogol Petamburan', 'Tanjung Duren Selatan', '11470', '20000'),
(11, 'Grogol Petamburan', 'Tanjung Duren Utara', '11470', '21000'),
(12, 'Grogol Petamburan', 'Tomang', '11440', '22000'),
(13, 'Grogol Petamburan', 'Wijaya Kusuma', '11460', '23000'),
(14, 'Taman Sari', 'Glodok', '11120', '24000'),
(15, 'Taman Sari', 'Keagungan', '11130', '25000'),
(16, 'Taman Sari', 'Krukut', '11140', '26000'),
(17, 'Taman Sari', 'Mangga Besar', '11180', '27000'),
(18, 'Taman Sari', 'Maphar', '11160', '28000'),
(19, 'Taman Sari', 'Pinangsia', '11110', '29000'),
(20, 'Taman Sari', 'Taman Sari', '11150', '30000'),
(21, 'Taman Sari', 'Tangki', '11170', '31000'),
(22, 'Tambora', 'Angke', '11330', '32000'),
(23, 'Tambora', 'Duri Selatan', '11270', '33000'),
(24, 'Tambora', 'Duri Utara', '11270', '34000'),
(25, 'Tambora', 'Jembatan Besi', '11320', '35000'),
(26, 'Tambora', 'Jembatan Lima', '11250', '36000'),
(27, 'Tambora', 'Kali Anyar', '11310', '37000'),
(28, 'Tambora', 'Krendang', '11260', '38000'),
(29, 'Tambora', 'Pekojan', '11240', '39000'),
(30, 'Tambora', 'Roa Malaka', '11230', '40000'),
(31, 'Tambora', 'Tambora', '11220', '41000'),
(32, 'Tambora', 'Tanah Sereal', '11210', '42000'),
(33, 'Kebon Jeruk', 'Duri Kepa', '11510', '43000'),
(34, 'Kebon Jeruk', 'Kebon Jeruk', '11530', '44000'),
(35, 'Kebon Jeruk', 'Kedoya Selatan', '11520', '45000'),
(36, 'Kebon Jeruk', 'Kedoya Utara', '11520', '46000'),
(37, 'Kebon Jeruk', 'Kelapa Dua', '11550', '47000'),
(38, 'Kebon Jeruk', 'Sukabumi Selatan', '11560', '48000'),
(39, 'Kebon Jeruk', 'Sukabumi Utara', '11540', '49000'),
(40, 'Kalideres', 'Kalideres', '11840', '50000'),
(41, 'Kalideres', 'Kamal', '11810', '51000'),
(42, 'Kalideres', 'Pegadungan', '11830', '52000'),
(43, 'Kalideres', 'Semanan', '11850', '53000'),
(44, 'Kalideres', 'Tegal Alur', '11820', '54000'),
(45, 'Palmerah', 'Jatipulo', '11430', '55000'),
(46, 'Palmerah', 'Kemanggisan', '11480', '56000'),
(47, 'Palmerah', 'Kota Bambu Selatan', '11420', '57000'),
(48, 'Palmerah', 'Kota Bambu Utara', '11420', '58000'),
(49, 'Palmerah', 'Palmerah', '11480', '59000'),
(50, 'Palmerah', 'Slipi', '11410', '60000'),
(51, 'Kembangan', 'Joglo', '11640', '61000'),
(52, 'Kembangan', 'Kembangan Selatan', '11610', '62000'),
(53, 'Kembangan', 'Kembangan Utara', '11610', '63000'),
(54, 'Kembangan', 'Meruya Selatan', '11650', '64000'),
(55, 'Kembangan', 'Meruya Utara', '11620', '65000'),
(56, 'Kembangan', 'Srengseng', '11630', '66000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE IF NOT EXISTS `pelanggan` (
  `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT,
  `nama_pelanggan` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `no_telpon` varchar(15) DEFAULT NULL,
  `jenis_kel` varchar(10) DEFAULT NULL,
  `alamat` text,
  `password` text,
  `foto` text,
  PRIMARY KEY (`id_pelanggan`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_pelanggan`, `email`, `no_telpon`, `jenis_kel`, `alamat`, `password`, `foto`) VALUES
(1, 'yanto', 'yanto@gmail.com', '123456789012', 'laki-laki', NULL, '12345', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE IF NOT EXISTS `produk` (
  `id_produk` int(11) NOT NULL AUTO_INCREMENT,
  `nama_produk` varchar(255) DEFAULT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `harga` varchar(50) DEFAULT NULL,
  `deskripsi` mediumtext,
  `gambar` text,
  `berat` int(11) DEFAULT NULL,
  `product_unit` varchar(10) DEFAULT NULL,
  `diskon` bigint(20) DEFAULT NULL,
  `stock` bigint(20) DEFAULT NULL,
  `is_available` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id_produk`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `id_kategori`, `harga`, `deskripsi`, `gambar`, `berat`, `product_unit`, `diskon`, `stock`, `is_available`) VALUES
(1, 'buket bunga mawar', 1, '350000', 'bunga mawra', 'buket-bunga.jpeg', 70, 'Gr', 20000, 48, 1),
(2, 'buket uang', 4, '350000', 'uang', 'data.jpeg', 12, 'Gr', NULL, 23, 1),
(3, 'buket flanel mawar', 3, '22700', 'lanes', 'Buket_Bunga_Flanel.jpg', 12, 'Gr', NULL, 21, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rekening`
--

CREATE TABLE IF NOT EXISTS `rekening` (
  `id_rekening` int(11) NOT NULL AUTO_INCREMENT,
  `nama_bank` varchar(30) DEFAULT NULL,
  `no_rek` varchar(25) DEFAULT NULL,
  `atas_nama` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_rekening`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `rekening`
--

INSERT INTO `rekening` (`id_rekening`, `nama_bank`, `no_rek`, `atas_nama`) VALUES
(1, 'BRI', '32412356453', 'Rizki'),
(2, 'BNI', '54235653232', 'kiki');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rinci_transaksi`
--

CREATE TABLE IF NOT EXISTS `rinci_transaksi` (
  `id_rinci` int(11) NOT NULL AUTO_INCREMENT,
  `no_order` varchar(25) DEFAULT NULL,
  `id_produk` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `is_available` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id_rinci`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `rinci_transaksi`
--

INSERT INTO `rinci_transaksi` (`id_rinci`, `no_order`, `id_produk`, `qty`, `is_available`) VALUES
(1, '202205135ZLNWMYP', 1, 2, 1),
(2, '20220513B0M4QIQZ', 2, 2, 1),
(3, '20220513B0M4QIQZ', 3, 3, 1),
(4, '20220705NLV0OAWW', 3, 1, 1);

--
-- Trigger `rinci_transaksi`
--
DROP TRIGGER IF EXISTS `pesanan_penjualan`;
DELIMITER //
CREATE TRIGGER `pesanan_penjualan` AFTER INSERT ON `rinci_transaksi`
 FOR EACH ROW BEGIN
UPDATE produk SET stock = stock-NEW.qty
WHERE id_produk = NEW.id_produk;
END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `riview`
--

CREATE TABLE IF NOT EXISTS `riview` (
  `id_riview` int(11) NOT NULL AUTO_INCREMENT,
  `id_pelanggan` int(11) DEFAULT NULL,
  `id_produk` int(11) DEFAULT NULL,
  `nama_pelanggan` varchar(50) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `isi` text,
  `foto` text,
  PRIMARY KEY (`id_riview`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `setting`
--

CREATE TABLE IF NOT EXISTS `setting` (
  `id` int(1) NOT NULL,
  `nama_toko` varchar(50) DEFAULT NULL,
  `lokasi` int(11) DEFAULT NULL,
  `alamat` text,
  `no_telpon` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `setting`
--

INSERT INTO `setting` (`id`, `nama_toko`, `lokasi`, `alamat`, `no_telpon`) VALUES
(1, 'Toko Mutiara', 211, 'Cipicung', '085754785529');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE IF NOT EXISTS `transaksi` (
  `id_transaksi` int(11) NOT NULL AUTO_INCREMENT,
  `id_pelanggan` int(11) DEFAULT NULL,
  `id_lokasi` int(11) DEFAULT NULL,
  `no_order` varchar(25) NOT NULL,
  `tgl_order` date DEFAULT NULL,
  `nama_pelanggan` varchar(50) DEFAULT NULL,
  `no_tlp` varchar(15) DEFAULT NULL,
  `provinsi` varchar(50) DEFAULT NULL,
  `kota` varchar(50) DEFAULT NULL,
  `alamat` text,
  `kode_pos` varchar(10) DEFAULT NULL,
  `ongkir` int(11) DEFAULT NULL,
  `nama_pengirim` varchar(50) DEFAULT NULL,
  `berat` bigint(255) DEFAULT NULL,
  `grand_total` int(11) DEFAULT NULL,
  `total_bayar` int(11) DEFAULT NULL,
  `status_bayar` int(11) DEFAULT NULL,
  `bukti_bayar` text,
  `atas_nama` varchar(25) DEFAULT NULL,
  `nama_bank` varchar(25) DEFAULT NULL,
  `no_rek` varchar(25) DEFAULT NULL,
  `status_order` int(11) DEFAULT NULL,
  `status` varchar(25) DEFAULT NULL,
  `catatan` text,
  PRIMARY KEY (`id_transaksi`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_pelanggan`, `id_lokasi`, `no_order`, `tgl_order`, `nama_pelanggan`, `no_tlp`, `provinsi`, `kota`, `alamat`, `kode_pos`, `ongkir`, `nama_pengirim`, `berat`, `grand_total`, `total_bayar`, `status_bayar`, `bukti_bayar`, `atas_nama`, `nama_bank`, `no_rek`, `status_order`, `status`, `catatan`) VALUES
(1, 1, 31, '202205135ZLNWMYP', '2022-05-13', 'yanto', '123456789012', NULL, NULL, 'tambora', '45591', 41000, NULL, NULL, 700000, 741000, 1, 'eed123c570c1.jpg', 'yanto', 'bni', '1234578658', 1, NULL, NULL),
(2, 1, 40, '20220513B0M4QIQZ', '2022-05-13', 'yusuf', '1234567890123', NULL, NULL, 'Jakarta', '35470', 50000, NULL, NULL, 768100, 818100, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(3, 1, 47, '20220705NLV0OAWW', '2022-07-05', 'sdasdsa', '098019283748', NULL, NULL, 'dlkjasda', 'dasdsa', 57000, NULL, NULL, 22700, 79700, 0, NULL, NULL, NULL, NULL, 0, NULL, 'dsadsa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `nama_user` varchar(50) DEFAULT NULL,
  `username` varchar(60) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `level_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama_user`, `username`, `password`, `level_user`) VALUES
(1, 'admin', 'admin', 'admin', 1),
(2, 'pemilik', 'pemilik', 'pemilik', 2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
