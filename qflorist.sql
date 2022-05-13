-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Bulan Mei 2022 pada 18.39
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qflorist`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `chatting`
--

CREATE TABLE `chatting` (
  `id_chatting` int(11) NOT NULL,
  `id_pelanggan` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `admin_send` text DEFAULT NULL,
  `pelanggan_send` text DEFAULT NULL,
  `time_chatting` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `gambar`
--

CREATE TABLE `gambar` (
  `id_gambar` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `keterangan` varchar(50) DEFAULT NULL,
  `gambar` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

CREATE TABLE `lokasi` (
  `id_lokasi` int(11) NOT NULL,
  `nama_lokasi` varchar(50) DEFAULT NULL,
  `kelurahan` varchar(50) DEFAULT NULL,
  `kode_pos` varchar(12) DEFAULT NULL,
  `ongkir` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `no_telpon` varchar(15) DEFAULT NULL,
  `jenis_kel` varchar(10) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `foto` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(255) DEFAULT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `harga` varchar(50) DEFAULT NULL,
  `deskripsi` mediumtext DEFAULT NULL,
  `gambar` text DEFAULT NULL,
  `berat` int(11) DEFAULT NULL,
  `product_unit` varchar(10) DEFAULT NULL,
  `diskon` bigint(20) DEFAULT NULL,
  `stock` bigint(20) DEFAULT NULL,
  `is_available` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `id_kategori`, `harga`, `deskripsi`, `gambar`, `berat`, `product_unit`, `diskon`, `stock`, `is_available`) VALUES
(1, 'buket bunga mawar', 1, '350000', 'bunga mawra', 'buket-bunga.jpeg', 70, 'Gr', NULL, 50, 1),
(2, 'buket uang', 4, '350000', 'uang', 'data.jpeg', 12, 'Gr', NULL, 25, 1),
(3, 'buket flanel mawar', 3, '22700', 'lanes', 'Buket_Bunga_Flanel.jpg', 12, 'Gr', NULL, 25, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rekening`
--

CREATE TABLE `rekening` (
  `id_rekening` int(11) NOT NULL,
  `nama_bank` varchar(30) DEFAULT NULL,
  `no_rek` varchar(25) DEFAULT NULL,
  `atas_nama` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

CREATE TABLE `rinci_transaksi` (
  `id_rinci` int(11) NOT NULL,
  `no_order` varchar(25) DEFAULT NULL,
  `id_produk` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `is_available` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Trigger `rinci_transaksi`
--
DELIMITER $$
CREATE TRIGGER `pesanan_penjualan` AFTER INSERT ON `rinci_transaksi` FOR EACH ROW BEGIN
UPDATE produk SET stock = stock-NEW.qty
WHERE id_produk = NEW.id_produk;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `riview`
--

CREATE TABLE `riview` (
  `id_riview` int(11) NOT NULL,
  `id_pelanggan` int(11) DEFAULT NULL,
  `id_produk` int(11) DEFAULT NULL,
  `nama_pelanggan` varchar(50) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `isi` text DEFAULT NULL,
  `foto` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `setting`
--

CREATE TABLE `setting` (
  `id` int(1) NOT NULL,
  `nama_toko` varchar(50) DEFAULT NULL,
  `lokasi` int(11) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `no_telpon` varchar(15) DEFAULT NULL
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

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_pelanggan` int(11) DEFAULT NULL,
  `id_lokasi` int(11) DEFAULT NULL,
  `no_order` varchar(25) NOT NULL,
  `tgl_order` date DEFAULT NULL,
  `nama_pelanggan` varchar(50) DEFAULT NULL,
  `no_tlp` varchar(15) DEFAULT NULL,
  `provinsi` varchar(50) DEFAULT NULL,
  `kota` varchar(50) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `kode_pos` varchar(10) DEFAULT NULL,
  `expedisi` varchar(255) DEFAULT NULL,
  `paket` varchar(255) DEFAULT NULL,
  `estimasi` varchar(255) DEFAULT NULL,
  `ongkir` int(11) DEFAULT NULL,
  `nama_pengirim` varchar(50) DEFAULT NULL,
  `berat` bigint(255) DEFAULT NULL,
  `grand_total` int(11) DEFAULT NULL,
  `total_bayar` int(11) DEFAULT NULL,
  `status_bayar` int(11) DEFAULT NULL,
  `bukti_bayar` text DEFAULT NULL,
  `atas_nama` varchar(25) DEFAULT NULL,
  `nama_bank` varchar(25) DEFAULT NULL,
  `no_rek` varchar(25) DEFAULT NULL,
  `status_order` int(11) DEFAULT NULL,
  `status` varchar(25) DEFAULT NULL,
  `catatan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(50) DEFAULT NULL,
  `username` varchar(60) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `level_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama_user`, `username`, `password`, `level_user`) VALUES
(1, 'admin', 'admin', 'admin', 1),
(2, 'pemilik', 'pemilik', 'pemilik', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `chatting`
--
ALTER TABLE `chatting`
  ADD PRIMARY KEY (`id_chatting`);

--
-- Indeks untuk tabel `gambar`
--
ALTER TABLE `gambar`
  ADD PRIMARY KEY (`id_gambar`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `lokasi`
--
ALTER TABLE `lokasi`
  ADD PRIMARY KEY (`id_lokasi`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indeks untuk tabel `rekening`
--
ALTER TABLE `rekening`
  ADD PRIMARY KEY (`id_rekening`);

--
-- Indeks untuk tabel `rinci_transaksi`
--
ALTER TABLE `rinci_transaksi`
  ADD PRIMARY KEY (`id_rinci`);

--
-- Indeks untuk tabel `riview`
--
ALTER TABLE `riview`
  ADD PRIMARY KEY (`id_riview`);

--
-- Indeks untuk tabel `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `chatting`
--
ALTER TABLE `chatting`
  MODIFY `id_chatting` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `gambar`
--
ALTER TABLE `gambar`
  MODIFY `id_gambar` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `lokasi`
--
ALTER TABLE `lokasi`
  MODIFY `id_lokasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `rekening`
--
ALTER TABLE `rekening`
  MODIFY `id_rekening` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `rinci_transaksi`
--
ALTER TABLE `rinci_transaksi`
  MODIFY `id_rinci` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `riview`
--
ALTER TABLE `riview`
  MODIFY `id_riview` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
