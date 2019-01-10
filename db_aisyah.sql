-- phpMyAdmin SQL Dump
-- version 4.4.15.9
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 03, 2017 at 04:44 PM
-- Server version: 5.6.35
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_aisyah`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE IF NOT EXISTS `admins` (
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `level` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT 'user',
  `blokir` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`username`, `password`, `nama_lengkap`, `email`, `no_telp`, `level`, `blokir`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', 'redaksi@bukulokomedia.com', '08238923848', 'admin', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE IF NOT EXISTS `banner` (
  `id_banner` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id_banner`, `judul`, `url`, `gambar`, `tgl_posting`) VALUES
(15, '', 'http://', 'contohiklan.jpg', '2011-03-13'),
(16, '', 'http://', 'ilove_indonesia.jpg', '2011-03-29');

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE IF NOT EXISTS `download` (
  `id_download` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `nama_file` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `hits` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `download`
--

INSERT INTO `download` (`id_download`, `judul`, `nama_file`, `tgl_posting`, `hits`) VALUES
(10, 'Katalog 001', 'test.jpg', '2011-01-31', 2);

-- --------------------------------------------------------

--
-- Table structure for table `header`
--

CREATE TABLE IF NOT EXISTS `header` (
  `id_header` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `header`
--

INSERT INTO `header` (`id_header`, `judul`, `url`, `gambar`, `tgl_posting`) VALUES
(21, 'Header1', '', '1.jpg', '2011-03-29'),
(22, 'Header2', '', '2.jpg', '2011-03-29'),
(23, 'Header3', '', '3.jpg', '2011-03-29'),
(24, 'Header4', '', '4.jpg', '2011-03-29');

-- --------------------------------------------------------

--
-- Table structure for table `hubungi`
--

CREATE TABLE IF NOT EXISTS `hubungi` (
  `id_hubungi` int(5) NOT NULL,
  `nama` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `bank` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `norek` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `bayar` int(40) NOT NULL,
  `id_order` varchar(40) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `subjek` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `pesan` text COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `hubungi`
--

INSERT INTO `hubungi` (`id_hubungi`, `nama`, `email`, `bank`, `norek`, `bayar`, `id_order`, `gambar`, `subjek`, `pesan`, `tanggal`) VALUES
(33, 'anggaaa', 'dddd@dfggh.com', '', '', 0, '', '', 'ddd', 'adsada', '2017-09-08'),
(34, 'awkarin', 'smurwati91@gmail.com', 'Mandiri', '987979879', 7000000, '98494', '', 'ddsfsdf', 'fdsffdgfd', '2017-09-08'),
(35, 'angga', 'anggaspecial@gmail.com', 'Mandiri', '6876876', 7000000, '98494', '46', 'ddd', 'dscdscdsc', '2017-09-13');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
  `id_kategori` int(5) NOT NULL,
  `nama_kategori` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `kategori_seo` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `kategori_seo`) VALUES
(17, 'Koleksi Baju', 'koleksi-baju'),
(16, 'Jaket Gaya', 'jaket-gaya'),
(15, 'Celana Gaul', 'celana-gaul'),
(14, 'Aneka Kaos', 'aneka-kaos'),
(18, 'Ragam Topi', 'ragam-topi');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE IF NOT EXISTS `komentar` (
  `id_komentar` int(5) NOT NULL,
  `id_berita` int(5) NOT NULL,
  `nama_komentar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_komentar` text COLLATE latin1_general_ci NOT NULL,
  `tgl` date NOT NULL,
  `jam_komentar` time NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`id_komentar`, `id_berita`, `nama_komentar`, `url`, `isi_komentar`, `tgl`, `jam_komentar`, `aktif`) VALUES
(74, 124, 'Rizal Faizal', '', ' terima  kasih  atas  perhatiannya   ', '2011-02-22', '20:38:30', 'Y'),
(76, 54, 'Rizal Faizal', '', ' gawatttttttttt   ', '2011-02-23', '23:36:53', 'Y'),
(77, 54, 'Rizal Faizal', '', ' fewfg   ', '2011-02-23', '23:39:46', 'Y'),
(78, 54, 'fff', '', ' ffffffffffff   ', '2011-02-23', '23:41:36', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE IF NOT EXISTS `kota` (
  `id_kota` int(3) NOT NULL,
  `id_perusahaan` int(10) NOT NULL,
  `nama_kota` varchar(100) NOT NULL,
  `ongkos_kirim` int(10) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kota`
--

INSERT INTO `kota` (`id_kota`, `id_perusahaan`, `nama_kota`, `ongkos_kirim`) VALUES
(5, 5, 'Jakarta', 15000),
(6, 6, 'Bandung', 15000),
(7, 5, 'Surabaya', 13000),
(8, 5, 'Semarang', 17500),
(9, 6, 'Medan', 20000),
(10, 6, 'Aceh', 25000),
(11, 6, 'Banjarmasin', 17500);

-- --------------------------------------------------------

--
-- Table structure for table `mainmenu`
--

CREATE TABLE IF NOT EXISTS `mainmenu` (
  `id_main` int(5) NOT NULL,
  `nama_menu` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `link` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `aktif` enum('Y','N') NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mainmenu`
--

INSERT INTO `mainmenu` (`id_main`, `nama_menu`, `link`, `aktif`) VALUES
(10, 'BERANDA', 'index.php', 'Y'),
(11, 'PROFIL ', 'profil-kami.html', 'Y'),
(12, 'PRODUK', 'semua-produk.html', 'Y'),
(13, 'KERANJANG BELANJA', 'keranjang-belanja.html', 'Y'),
(14, 'CARA PEMBELIAN', 'cara-pembelian.html', 'Y'),
(15, 'DOWNLOAD KATALOG', 'semua-download.html', 'N'),
(16, 'KONFIRMASI PEMBAYARAN', 'hubungi-kami.html', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `modul`
--

CREATE TABLE IF NOT EXISTS `modul` (
  `id_modul` int(5) NOT NULL,
  `nama_modul` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `link` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `static_content` text COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `status` enum('user','admin') COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL,
  `urutan` int(5) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `modul`
--

INSERT INTO `modul` (`id_modul`, `nama_modul`, `link`, `static_content`, `gambar`, `status`, `aktif`, `urutan`) VALUES
(18, 'Tambah Produk', '?module=produk', '', '', 'admin', 'Y', 5),
(42, 'Lihat Order Masuk', '?module=order', '', '', 'admin', 'Y', 8),
(10, 'Manajemen Modul', '?module=modul', '', '', 'admin', 'Y', 19),
(31, 'Tambah Kategori Produk', '?module=kategori', '', '', 'admin', 'Y', 4),
(43, 'Edit Profil', '?module=profil', '<p class="MsoNormal">\r\n<font size="2">Aisyah Ilyas Collection adalah toko fashion online, yang menyediakan segala kebutuhan fashion anda. Aisyah Ilyas Collection&nbsp;ingin memberikan kemudahan kepada para calon pembeli, cara santai, mudah dan hemat dalam berbelanja fashion berkualias dengan harga yang terjangkau.\r\n</font>\r\n</p>\r\n<p class="MsoNormal">\r\n<font size="2">Karena itulah website ini dibuat sedemikian sederhananya sehingga diharapkan dapat membantu para pengunjung untuk dapat menelusuri produk-produk yang ditawarkan secara lebih mudah.<br />\r\n</font>\r\n</p>\r\n<p class="MsoNormal">\r\n<font size="2">Selain melayani pesanan produk-produk yang ada di toko online, kami menerima pembuatan/pemesanan fashion sesuai design/pola&nbsp; yang anda inginkan.<br />\r\n</font>\r\n</p>\r\n<p class="MsoNormal">\r\n<font size="2">Akhirnya, kami mengucapkan terima kasih atas kunjungan anda di Aisyah Ilyas Collection.\r\n</font>\r\n</p>\r\n', '12sfhijau.jpg', 'admin', 'Y', 7),
(44, 'Lihat Pesan Masuk', '?module=hubungi', '', '', 'admin', 'Y', 9),
(45, ' Edit Cara Pembelian', '?module=carabeli', '<ol>\r\n	<li>Klik pada tombol&nbsp;<span style="font-weight: bold">Beli</span> pada produk yang ingin Anda pesan.</li>\r\n	<li>Produk yang Anda pesan akan masuk ke dalam <span style="font-weight: bold">Keranjang Belanja</span>. Anda dapat melakukan perubahan jumlah produk yang diinginkan dengan mengganti angka di kolom <span style="font-weight: bold">Jumlah</span>, kemudian klik tombol <span style="font-weight: bold">Update</span>. Sedangkan untuk menghapus sebuah produk dari Keranjang Belanja, klik tombol Kali yang berada di kolom paling kanan.</li>\r\n	<li>Jika sudah selesai, klik tombol <span style="font-weight: bold">Selesai Belanja</span>, maka akan tampil form untuk pengisian data kustomer/pembeli.</li>\r\n	<li>Setelah data pembeli selesai diisikan, klik tombol <span style="font-weight: bold">Proses</span>, maka akan tampil data pembeli beserta produk yang dipesannya (jika diperlukan catat nomor ordernya). Dan juga ada total pembayaran serta nomor rekening pembayaran.</li>\r\n	<li>Apabila telah melakukan pembayaran, maka produk/barang akan segera kami kirimkan. <br />\r\n	</li>\r\n</ol>\r\n', 'gedung.jpg', 'admin', 'Y', 10),
(47, 'Edit Link Terkait', '?module=banner', '', '', 'user', 'Y', 13),
(48, 'Edit Ongkos Kirim', '?module=ongkoskirim', '', '', 'user', 'Y', 11),
(49, 'Ganti Password', '?module=password', '', '', 'user', 'Y', 1),
(53, 'User Yahoo Messenger', '?module=ym', '', '', 'user', 'Y', 15),
(52, 'Lihat Laporan Transaksi', '?module=laporan', '', '', 'user', 'Y', 14),
(56, 'Edit Jasa Pengiriman', '?module=jasapengiriman', '<span class="center_content2"><font size="2"><span class="center_content">\r\n<div class="profil">\r\n<div>\r\n<span class="center_content">\r\n<div>\r\n<strong>Selamat Datang di &nbsp;Aisyah Ilyas Collection..\r\n</strong>\r\n</div>\r\n<div>\r\n<!--[if gte mso 9]><xml>\r\n<w:WordDocument>\r\n<w:View>Normal</w:View>\r\n<w:Zoom>0</w:Zoom>\r\n<w:Compatibility>\r\n<w:BreakWrappedTables/>\r\n<w:SnapToGridInCell/>\r\n<w:WrapTextWithPunct/>\r\n<w:UseAsianBreakRules/>\r\n</w:Compatibility>\r\n<w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>\r\n</w:WordDocument>\r\n</xml><![endif]-->\r\n<!--\r\n/* Style Definitions */\r\np.MsoNormal, li.MsoNormal, div.MsoNormal\r\n{mso-style-parent:"";\r\nmargin:0cm;\r\nmargin-bottom:.0001pt;\r\nmso-pagination:widow-orphan;\r\nfont-size:12.0pt;\r\nfont-family:"Times New Roman";\r\nmso-fareast-font-family:"Times New Roman";}\r\nspan.centercontent\r\n{mso-style-name:center_content;}\r\n@page Section1\r\n{size:612.0pt 792.0pt;\r\nmargin:72.0pt 90.0pt 72.0pt 90.0pt;\r\nmso-header-margin:35.4pt;\r\nmso-footer-margin:35.4pt;\r\nmso-paper-source:0;}\r\ndiv.Section1\r\n{page:Section1;}\r\n-->\r\n<!--[if gte mso 10]>\r\n<style>\r\n/* Style Definitions */\r\ntable.MsoNormalTable\r\n{mso-style-name:"Table Normal";\r\nmso-tstyle-rowband-size:0;\r\nmso-tstyle-colband-size:0;\r\nmso-style-noshow:yes;\r\nmso-style-parent:"";\r\nmso-padding-alt:0cm 5.4pt 0cm 5.4pt;\r\nmso-para-margin:0cm;\r\nmso-para-margin-bottom:.0001pt;\r\nmso-pagination:widow-orphan;\r\nfont-size:10.0pt;\r\nfont-family:"Times New Roman";}\r\n</style>\r\n<![endif]-->\r\n<p class="MsoNormal">\r\n<!--[if gte mso 9]><xml>\r\n<w:WordDocument>\r\n<w:View>Normal</w:View>\r\n<w:Zoom>0</w:Zoom>\r\n<w:Compatibility>\r\n<w:BreakWrappedTables/>\r\n<w:SnapToGridInCell/>\r\n<w:WrapTextWithPunct/>\r\n<w:UseAsianBreakRules/>\r\n</w:Compatibility>\r\n<w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>\r\n</w:WordDocument>\r\n</xml><![endif]-->\r\n<!--\r\n/* Style Definitions */\r\np.MsoNormal, li.MsoNormal, div.MsoNormal\r\n{mso-style-parent:"";\r\nmargin:0cm;\r\nmargin-bottom:.0001pt;\r\nmso-pagination:widow-orphan;\r\nfont-size:12.0pt;\r\nfont-family:"Times New Roman";\r\nmso-fareast-font-family:"Times New Roman";}\r\nspan.centercontent\r\n{mso-style-name:center_content;}\r\n@page Section1\r\n{size:612.0pt 792.0pt;\r\nmargin:72.0pt 90.0pt 72.0pt 90.0pt;\r\nmso-header-margin:35.4pt;\r\nmso-footer-margin:35.4pt;\r\nmso-paper-source:0;}\r\ndiv.Section1\r\n{page:Section1;}\r\n-->\r\n<!--[if gte mso 10]>\r\n<style>\r\n/* Style Definitions */\r\ntable.MsoNormalTable\r\n{mso-style-name:"Table Normal";\r\nmso-tstyle-rowband-size:0;\r\nmso-tstyle-colband-size:0;\r\nmso-style-noshow:yes;\r\nmso-style-parent:"";\r\nmso-padding-alt:0cm 5.4pt 0cm 5.4pt;\r\nmso-para-margin:0cm;\r\nmso-para-margin-bottom:.0001pt;\r\nmso-pagination:widow-orphan;\r\nfont-size:10.0pt;\r\nfont-family:"Times New Roman";}\r\n</style>\r\n<![endif]-->\r\n</p>\r\n<p class="MsoNormal">\r\n<span class="centercontent"><span style="font-size: 10pt; font-family: Arial">Kami menyediakan berbagai macam jenis fashion berkualitas\r\ntinggi untuk segala kebutuhan penampilan anda. Mulai dari baju, celana, \r\njaket\r\ndan lainnya.</span></span>\r\n</p>\r\n<p class="MsoNormal">\r\n<span class="centercontent"><span style="font-size: 10pt; font-family: Arial">Berkonsep butik online, kami berusaha memanjakan sekaligus\r\nmemudahkan para customer untuk berbelanja di toko online kami. \r\nKenyamanan dan\r\nkeamanan pun kami jaga sehingga tercipta hubungan baik penjual dan \r\npembeli.</span></span>\r\n</p>\r\n<p class="MsoNormal">\r\n<span class="centercontent"><span style="font-size: 10pt; font-family: Arial">Selamat berbelanja. Dan terima kasih atas kunjungan anda&hellip;</span></span>\r\n</p>\r\n</div>\r\n</span>\r\n</div>\r\n</div>\r\n</span></font></span>\r\n', 'hai.jpg', 'user', 'Y', 12),
(57, 'Edit Rekening Bank', '?module=bank', '', '', 'user', 'Y', 16),
(58, 'Edit Selamat Datang', '?module=welcome', '<strong>mobilestore.com</strong> merupakan website resmi dari Toko HP Lokomedia \r\nyang bermarkas di Jl. Arwana No.24 Minomartani Yogyakarta 55581. \r\nDirintis pertama kali oleh Lukmanul Hakim pada tanggal 14 Maret 2008.<br />\r\n<br />\r\nProduk\r\nunggulan dari Toko HP Lokomedia adalah produk-produk serta aksesoris \r\nbertema Nokia yang merupakan merk produk handphone paling terdepan saat \r\nini.\r\n', 'gedung.jpg', 'user', 'Y', 6),
(59, 'Ganti Header', '?module=header', '', '', 'user', 'Y', 18),
(61, 'Edit Menu Utama', '?module=menuutama', '', '', 'user', 'Y', 2),
(62, 'Edit Sub Menu', '?module=submenu', '', '', 'user', 'Y', 3),
(63, 'Edit Download Katalog', '?module=download', '', '', 'user', 'Y', 17);

-- --------------------------------------------------------

--
-- Table structure for table `mod_bank`
--

CREATE TABLE IF NOT EXISTS `mod_bank` (
  `id_bank` int(5) NOT NULL,
  `nama_bank` varchar(100) NOT NULL,
  `no_rekening` varchar(100) NOT NULL,
  `pemilik` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mod_bank`
--

INSERT INTO `mod_bank` (`id_bank`, `nama_bank`, `no_rekening`, `pemilik`, `gambar`) VALUES
(1, 'Mandiri', '456665554433', 'Aisyah Ilyas', 'mandiri.gif');

-- --------------------------------------------------------

--
-- Table structure for table `mod_ym`
--

CREATE TABLE IF NOT EXISTS `mod_ym` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `mod_ym`
--

INSERT INTO `mod_ym` (`id`, `nama`, `username`) VALUES
(1, 'Aisyah Ilyas', 'aisyah_ilyas');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id_orders` int(5) NOT NULL,
  `nama_kustomer` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `alamat` text COLLATE latin1_general_ci NOT NULL,
  `telpon` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `status_order` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT 'Baru',
  `tgl_order` date NOT NULL,
  `jam_order` time NOT NULL,
  `id_kota` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id_orders`, `nama_kustomer`, `alamat`, `telpon`, `email`, `status_order`, `tgl_order`, `jam_order`, `id_kota`) VALUES
(47, 'awkarin ddddd', 'ddd', 'ddd', 'angga@gmail.com', 'Lunas/Terkirim', '2017-09-06', '08:25:24', 10);

-- --------------------------------------------------------

--
-- Table structure for table `orders_detail`
--

CREATE TABLE IF NOT EXISTS `orders_detail` (
  `id_orders` int(5) NOT NULL,
  `id_produk` int(5) NOT NULL,
  `jumlah` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `orders_detail`
--

INSERT INTO `orders_detail` (`id_orders`, `id_produk`, `jumlah`) VALUES
(2, 16, 1),
(3, 17, 1),
(0, 56, 1),
(0, 58, 1),
(0, 60, 1),
(0, 50, 1),
(0, 51, 1),
(0, 55, 1),
(0, 61, 1),
(0, 58, 1),
(0, 60, 1),
(0, 56, 1),
(4, 44, 1),
(5, 53, 1),
(0, 58, 1),
(0, 47, 1),
(0, 58, 1),
(0, 61, 1),
(0, 58, 1),
(6, 61, 1),
(7, 58, 1),
(8, 43, 1),
(9, 58, 1),
(11, 43, 1),
(12, 44, 1),
(13, 43, 1),
(13, 58, 1),
(16, 58, 1),
(17, 50, 1),
(18, 45, 1),
(19, 41, 1),
(20, 59, 1),
(31, 58, 1),
(31, 42, 2),
(35, 59, 1),
(35, 54, 1),
(35, 61, 2),
(0, 54, 1),
(0, 59, 1),
(38, 54, 1),
(39, 59, 1),
(40, 61, 1),
(41, 54, 1),
(42, 54, 1),
(42, 55, 1),
(43, 61, 1),
(43, 58, 1),
(45, 87, 1),
(46, 87, 1),
(46, 88, 1),
(47, 84, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders_temp`
--

CREATE TABLE IF NOT EXISTS `orders_temp` (
  `id_orders_temp` int(5) NOT NULL,
  `id_produk` int(5) NOT NULL,
  `id_session` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `jumlah` int(5) NOT NULL,
  `tgl_order_temp` date NOT NULL,
  `jam_order_temp` time NOT NULL,
  `stok_temp` int(5) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=229 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `poling`
--

CREATE TABLE IF NOT EXISTS `poling` (
  `id_poling` int(5) NOT NULL,
  `pilihan` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `status` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `rating` int(5) NOT NULL DEFAULT '0',
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `poling`
--

INSERT INTO `poling` (`id_poling`, `pilihan`, `status`, `rating`, `aktif`) VALUES
(1, 'Bagus', 'Jawaban', 27, 'Y'),
(2, 'Lumayan', 'Jawaban', 80, 'Y'),
(3, 'Tidak', 'Jawaban', 21, 'Y'),
(8, 'Bagaimana tampilan web ini?', 'Pertanyaan', 0, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE IF NOT EXISTS `produk` (
  `id_produk` int(5) NOT NULL,
  `id_kategori` int(5) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `produk_seo` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `harga` int(20) NOT NULL,
  `stok` int(5) NOT NULL,
  `berat` decimal(5,2) unsigned NOT NULL DEFAULT '0.00',
  `tgl_masuk` date NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `dibeli` int(5) NOT NULL DEFAULT '1',
  `diskon` int(5) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=92 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `id_kategori`, `nama_produk`, `produk_seo`, `deskripsi`, `harga`, `stok`, `berat`, `tgl_masuk`, `gambar`, `dibeli`, `diskon`) VALUES
(83, 14, 'Black Love', 'black-love', '<span class="center_content2">Isi keterangan produk di sini.&nbsp; Isi \r\nketerangan produk di sini. Teks ini hanyalah contoh. Isi keterangan \r\nproduk di sini. Teks ini hanyalah contoh. Isi keterangan produk di sini.\r\nTeks ini hanyalah contoh. Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh. Isi keterangan produk di sini. Teks ini hanyalah \r\ncontoh. Isi keterangan produk di sini. Teks ini hanyalah contoh. Isi \r\nketerangan produk di sini. Teks ini hanyalah contoh.<br />\r\n<br />\r\nIsi keterangan produk di sini.&nbsp; Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh.Isi keterangan produk di sini. Teks ini hanyalah contoh.\r\nIsi keterangan produk di sini. Teks ini hanyalah contoh. Isi keterangan\r\nproduk di sini. Teks ini hanyalah contoh. Isi keterangan produk di \r\nsini. Teks ini hanyalah contoh. Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh. Isi keterangan produk di sini. Teks ini hanyalah \r\ncontoh. \r\n</span>\r\n', 67000, 0, '0.00', '2011-03-15', '16heart.jpg', 1, 0),
(82, 16, 'Brown Garut', 'brown-garut', '<span class="center_content2">Isi keterangan produk di sini.&nbsp; Isi \r\nketerangan produk di sini. Teks ini hanyalah contoh. Isi keterangan \r\nproduk di sini. Teks ini hanyalah contoh. Isi keterangan produk di sini.\r\nTeks ini hanyalah contoh. Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh. Isi keterangan produk di sini. Teks ini hanyalah \r\ncontoh. Isi keterangan produk di sini. Teks ini hanyalah contoh. Isi \r\nketerangan produk di sini. Teks ini hanyalah contoh.<br />\r\n<br />\r\nIsi keterangan produk di sini.&nbsp; Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh.Isi keterangan produk di sini. Teks ini hanyalah contoh.\r\nIsi keterangan produk di sini. Teks ini hanyalah contoh. Isi keterangan\r\nproduk di sini. Teks ini hanyalah contoh. Isi keterangan produk di \r\nsini. Teks ini hanyalah contoh. Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh. Isi keterangan produk di sini. Teks ini hanyalah \r\ncontoh. \r\n</span>\r\n', 455000, 78, '0.00', '2011-03-15', '502172414.jpg', 1, 15),
(79, 17, 'Block Man', 'block-man', '<span class="center_content2">Isi keterangan produk di sini.&nbsp; Isi \r\nketerangan produk di sini. Teks ini hanyalah contoh. Isi keterangan \r\nproduk di sini. Teks ini hanyalah contoh. Isi keterangan produk di sini.\r\nTeks ini hanyalah contoh. Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh. Isi keterangan produk di sini. Teks ini hanyalah \r\ncontoh. Isi keterangan produk di sini. Teks ini hanyalah contoh. Isi \r\nketerangan produk di sini. Teks ini hanyalah contoh.<br />\r\n<br />\r\nIsi keterangan produk di sini.&nbsp; Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh.Isi keterangan produk di sini. Teks ini hanyalah contoh.\r\nIsi keterangan produk di sini. Teks ini hanyalah contoh. Isi keterangan\r\nproduk di sini. Teks ini hanyalah contoh. Isi keterangan produk di \r\nsini. Teks ini hanyalah contoh. Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh. Isi keterangan produk di sini. Teks ini hanyalah \r\ncontoh. \r\n</span>\r\n', 173000, 78, '0.00', '2011-03-15', '11fbkj041.jpg', 1, 0),
(80, 16, 'Snow White', 'snow-white', '<span class="center_content2">Isi keterangan produk di sini.&nbsp; Isi \r\nketerangan produk di sini. Teks ini hanyalah contoh. Isi keterangan \r\nproduk di sini. Teks ini hanyalah contoh. Isi keterangan produk di sini.\r\nTeks ini hanyalah contoh. Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh. Isi keterangan produk di sini. Teks ini hanyalah \r\ncontoh. Isi keterangan produk di sini. Teks ini hanyalah contoh. Isi \r\nketerangan produk di sini. Teks ini hanyalah contoh.<br />\r\n<br />\r\nIsi keterangan produk di sini.&nbsp; Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh.Isi keterangan produk di sini. Teks ini hanyalah contoh.\r\nIsi keterangan produk di sini. Teks ini hanyalah contoh. Isi keterangan\r\nproduk di sini. Teks ini hanyalah contoh. Isi keterangan produk di \r\nsini. Teks ini hanyalah contoh. Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh. Isi keterangan produk di sini. Teks ini hanyalah \r\ncontoh. \r\n</span>\r\n', 230000, 89, '0.00', '2011-03-15', '62fbjc1861.jpg', 1, 10),
(81, 15, 'Arm Short Pants', 'arm-short-pants', '<span class="center_content2">Isi keterangan produk di sini.&nbsp; Isi \r\nketerangan produk di sini. Teks ini hanyalah contoh. Isi keterangan \r\nproduk di sini. Teks ini hanyalah contoh. Isi keterangan produk di sini.\r\nTeks ini hanyalah contoh. Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh. Isi keterangan produk di sini. Teks ini hanyalah \r\ncontoh. Isi keterangan produk di sini. Teks ini hanyalah contoh. Isi \r\nketerangan produk di sini. Teks ini hanyalah contoh.<br />\r\n<br />\r\nIsi keterangan produk di sini.&nbsp; Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh.Isi keterangan produk di sini. Teks ini hanyalah contoh.\r\nIsi keterangan produk di sini. Teks ini hanyalah contoh. Isi keterangan\r\nproduk di sini. Teks ini hanyalah contoh. Isi keterangan produk di \r\nsini. Teks ini hanyalah contoh. Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh. Isi keterangan produk di sini. Teks ini hanyalah \r\ncontoh. \r\n</span>\r\n', 135000, 89, '0.00', '2011-03-15', '74ladies.jpg', 1, 0),
(78, 14, 'Embargo Republic', 'embargo-republic', '<span class="center_content2">Isi keterangan produk di sini.&nbsp; Isi \r\nketerangan produk di sini. Teks ini hanyalah contoh. Isi keterangan \r\nproduk di sini. Teks ini hanyalah contoh. Isi keterangan produk di sini.\r\nTeks ini hanyalah contoh. Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh. Isi keterangan produk di sini. Teks ini hanyalah \r\ncontoh. Isi keterangan produk di sini. Teks ini hanyalah contoh. Isi \r\nketerangan produk di sini. Teks ini hanyalah contoh.<br />\r\n<br />\r\nIsi keterangan produk di sini.&nbsp; Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh.Isi keterangan produk di sini. Teks ini hanyalah contoh.\r\nIsi keterangan produk di sini. Teks ini hanyalah contoh. Isi keterangan\r\nproduk di sini. Teks ini hanyalah contoh. Isi keterangan produk di \r\nsini. Teks ini hanyalah contoh. Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh. Isi keterangan produk di sini. Teks ini hanyalah \r\ncontoh. \r\n</span>\r\n', 75000, 86, '0.00', '2011-03-15', '73fbk375.jpg', 1, 0),
(77, 18, 'Adidas UCF', 'adidas-ucf', '<span class="center_content2">Isi keterangan produk di sini.&nbsp; Isi \r\nketerangan produk di sini. Teks ini hanyalah contoh. Isi keterangan \r\nproduk di sini. Teks ini hanyalah contoh. Isi keterangan produk di sini.\r\nTeks ini hanyalah contoh. Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh. Isi keterangan produk di sini. Teks ini hanyalah \r\ncontoh. Isi keterangan produk di sini. Teks ini hanyalah contoh. Isi \r\nketerangan produk di sini. Teks ini hanyalah contoh.<br />\r\n<br />\r\nIsi keterangan produk di sini.&nbsp; Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh.Isi keterangan produk di sini. Teks ini hanyalah contoh.\r\nIsi keterangan produk di sini. Teks ini hanyalah contoh. Isi keterangan\r\nproduk di sini. Teks ini hanyalah contoh. Isi keterangan produk di \r\nsini. Teks ini hanyalah contoh. Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh. Isi keterangan produk di sini. Teks ini hanyalah \r\ncontoh. \r\n</span>\r\n', 65000, 78, '0.00', '2011-03-15', '82ucf.jpg', 1, 0),
(76, 16, 'BW Sporty', 'bw-sporty', '<span class="center_content2">Isi keterangan produk di sini.&nbsp; Isi \r\nketerangan produk di sini. Teks ini hanyalah contoh. Isi keterangan \r\nproduk di sini. Teks ini hanyalah contoh. Isi keterangan produk di sini.\r\nTeks ini hanyalah contoh. Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh. Isi keterangan produk di sini. Teks ini hanyalah \r\ncontoh. Isi keterangan produk di sini. Teks ini hanyalah contoh. Isi \r\nketerangan produk di sini. Teks ini hanyalah contoh.<br />\r\n<br />\r\nIsi keterangan produk di sini.&nbsp; Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh.Isi keterangan produk di sini. Teks ini hanyalah contoh.\r\nIsi keterangan produk di sini. Teks ini hanyalah contoh. Isi keterangan\r\nproduk di sini. Teks ini hanyalah contoh. Isi keterangan produk di \r\nsini. Teks ini hanyalah contoh. Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh. Isi keterangan produk di sini. Teks ini hanyalah \r\ncontoh. \r\n</span>\r\n', 187000, 79, '0.00', '2011-03-15', '1bw_sporty.jpg', 1, 10),
(75, 18, 'Dark Brown', 'dark-brown', '<span class="center_content2">Isi keterangan produk di sini.&nbsp; Isi \r\nketerangan produk di sini. Teks ini hanyalah contoh. Isi keterangan \r\nproduk di sini. Teks ini hanyalah contoh. Isi keterangan produk di sini.\r\nTeks ini hanyalah contoh. Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh. Isi keterangan produk di sini. Teks ini hanyalah \r\ncontoh. Isi keterangan produk di sini. Teks ini hanyalah contoh. Isi \r\nketerangan produk di sini. Teks ini hanyalah contoh.<br />\r\n<br />\r\nIsi keterangan produk di sini.&nbsp; Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh.Isi keterangan produk di sini. Teks ini hanyalah contoh.\r\nIsi keterangan produk di sini. Teks ini hanyalah contoh. Isi keterangan\r\nproduk di sini. Teks ini hanyalah contoh. Isi keterangan produk di \r\nsini. Teks ini hanyalah contoh. Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh. Isi keterangan produk di sini. Teks ini hanyalah \r\ncontoh. \r\n</span>\r\n', 75000, 60, '0.00', '2011-03-15', '27dak_brown.jpg', 1, 0),
(74, 14, 'CQ Brown', 'cq-brown', '<span class="center_content2">Isi keterangan produk di sini.&nbsp; Isi \r\nketerangan produk di sini. Teks ini hanyalah contoh. Isi keterangan \r\nproduk di sini. Teks ini hanyalah contoh. Isi keterangan produk di sini.\r\nTeks ini hanyalah contoh. Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh. Isi keterangan produk di sini. Teks ini hanyalah \r\ncontoh. Isi keterangan produk di sini. Teks ini hanyalah contoh. Isi \r\nketerangan produk di sini. Teks ini hanyalah contoh.<br />\r\n<br />\r\nIsi keterangan produk di sini.&nbsp; Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh.Isi keterangan produk di sini. Teks ini hanyalah contoh.\r\nIsi keterangan produk di sini. Teks ini hanyalah contoh. Isi keterangan\r\nproduk di sini. Teks ini hanyalah contoh. Isi keterangan produk di \r\nsini. Teks ini hanyalah contoh. Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh. Isi keterangan produk di sini. Teks ini hanyalah \r\ncontoh. \r\n</span>\r\n', 67000, 80, '0.00', '2011-03-15', '9cq_brown.jpg', 1, 0),
(73, 17, 'Blue Adem', 'blue-adem', '<span class="center_content2">Isi keterangan produk di sini.&nbsp; Isi \r\nketerangan produk di sini. Teks ini hanyalah contoh. Isi keterangan \r\nproduk di sini. Teks ini hanyalah contoh. Isi keterangan produk di sini.\r\nTeks ini hanyalah contoh. Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh. Isi keterangan produk di sini. Teks ini hanyalah \r\ncontoh. Isi keterangan produk di sini. Teks ini hanyalah contoh. Isi \r\nketerangan produk di sini. Teks ini hanyalah contoh.<br />\r\n<br />\r\nIsi keterangan produk di sini.&nbsp; Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh.Isi keterangan produk di sini. Teks ini hanyalah contoh.\r\nIsi keterangan produk di sini. Teks ini hanyalah contoh. Isi keterangan\r\nproduk di sini. Teks ini hanyalah contoh. Isi keterangan produk di \r\nsini. Teks ini hanyalah contoh. Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh. Isi keterangan produk di sini. Teks ini hanyalah \r\ncontoh. \r\n</span>\r\n', 245000, 80, '0.00', '2011-03-15', '37blue_adem.jpg', 1, 0),
(72, 18, 'Adams Scott', 'adams-scott', '<span class="center_content2">Isi keterangan produk di sini.&nbsp; Isi \r\nketerangan produk di sini. Teks ini hanyalah contoh. Isi keterangan \r\nproduk di sini. Teks ini hanyalah contoh. Isi keterangan produk di sini.\r\nTeks ini hanyalah contoh. Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh. Isi keterangan produk di sini. Teks ini hanyalah \r\ncontoh. Isi keterangan produk di sini. Teks ini hanyalah contoh. Isi \r\nketerangan produk di sini. Teks ini hanyalah contoh.<br />\r\n<br />\r\nIsi keterangan produk di sini.&nbsp; Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh.Isi keterangan produk di sini. Teks ini hanyalah contoh.\r\nIsi keterangan produk di sini. Teks ini hanyalah contoh. Isi keterangan\r\nproduk di sini. Teks ini hanyalah contoh. Isi keterangan produk di \r\nsini. Teks ini hanyalah contoh. Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh. Isi keterangan produk di sini. Teks ini hanyalah \r\ncontoh. \r\n</span>\r\n', 70000, 97, '0.00', '2011-03-15', '4adams_scott_hat_lg.jpg', 1, 0),
(71, 16, 'Casual Jacket', 'casual-jacket', '<span class="center_content2">Isi keterangan produk di sini.&nbsp; Isi \r\nketerangan produk di sini. Teks ini hanyalah contoh. Isi keterangan \r\nproduk di sini. Teks ini hanyalah contoh. Isi keterangan produk di sini.\r\nTeks ini hanyalah contoh. Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh. Isi keterangan produk di sini. Teks ini hanyalah \r\ncontoh. Isi keterangan produk di sini. Teks ini hanyalah contoh. Isi \r\nketerangan produk di sini. Teks ini hanyalah contoh.<br />\r\n<br />\r\nIsi keterangan produk di sini.&nbsp; Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh.Isi keterangan produk di sini. Teks ini hanyalah contoh.\r\nIsi keterangan produk di sini. Teks ini hanyalah contoh. Isi keterangan\r\nproduk di sini. Teks ini hanyalah contoh. Isi keterangan produk di \r\nsini. Teks ini hanyalah contoh. Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh. Isi keterangan produk di sini. Teks ini hanyalah \r\ncontoh. \r\n</span>\r\n', 376000, 87, '0.00', '2011-03-15', '47casual_jacket.jpg', 1, 30),
(70, 15, 'Ladies Short Pants', 'ladies-short-pants', '<span class="center_content2">Isi keterangan produk di sini.&nbsp; Isi \r\nketerangan produk di sini. Teks ini hanyalah contoh. Isi keterangan \r\nproduk di sini. Teks ini hanyalah contoh. Isi keterangan produk di sini.\r\nTeks ini hanyalah contoh. Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh. Isi keterangan produk di sini. Teks ini hanyalah \r\ncontoh. Isi keterangan produk di sini. Teks ini hanyalah contoh. Isi \r\nketerangan produk di sini. Teks ini hanyalah contoh.<br />\r\n<br />\r\nIsi keterangan produk di sini.&nbsp; Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh.Isi keterangan produk di sini. Teks ini hanyalah contoh.\r\nIsi keterangan produk di sini. Teks ini hanyalah contoh. Isi keterangan\r\nproduk di sini. Teks ini hanyalah contoh. Isi keterangan produk di \r\nsini. Teks ini hanyalah contoh. Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh. Isi keterangan produk di sini. Teks ini hanyalah \r\ncontoh. \r\n</span>\r\n', 80000, 98, '0.00', '2011-03-15', '27ladies__short_pants.jpg', 1, 0),
(84, 16, 'Green Sport', 'green-sport', '<span class="center_content2">Isi keterangan produk di sini.&nbsp; Isi \r\nketerangan produk di sini. Teks ini hanyalah contoh. Isi keterangan \r\nproduk di sini. Teks ini hanyalah contoh. Isi keterangan produk di sini.\r\nTeks ini hanyalah contoh. Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh. Isi keterangan produk di sini. Teks ini hanyalah \r\ncontoh. Isi keterangan produk di sini. Teks ini hanyalah contoh. Isi \r\nketerangan produk di sini. Teks ini hanyalah contoh.<br />\r\n<br />\r\nIsi keterangan produk di sini.&nbsp; Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh.Isi keterangan produk di sini. Teks ini hanyalah contoh.\r\nIsi keterangan produk di sini. Teks ini hanyalah contoh. Isi keterangan\r\nproduk di sini. Teks ini hanyalah contoh. Isi keterangan produk di \r\nsini. Teks ini hanyalah contoh. Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh. Isi keterangan produk di sini. Teks ini hanyalah \r\ncontoh. \r\n</span>\r\n', 245000, 88, '0.00', '2011-03-15', '63green_sport.jpg', 2, 10),
(69, 17, 'Pink Adem', 'pink-adem', '<span class="center_content2">Isi keterangan produk di sini.&nbsp; Isi \r\nketerangan produk di sini. Teks ini hanyalah contoh. Isi keterangan \r\nproduk di sini. Teks ini hanyalah contoh. Isi keterangan produk di sini.\r\nTeks ini hanyalah contoh. Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh. Isi keterangan produk di sini. Teks ini hanyalah \r\ncontoh. Isi keterangan produk di sini. Teks ini hanyalah contoh. Isi \r\nketerangan produk di sini. Teks ini hanyalah contoh.<br />\r\n<br />\r\nIsi keterangan produk di sini.&nbsp; Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh.Isi keterangan produk di sini. Teks ini hanyalah contoh.\r\nIsi keterangan produk di sini. Teks ini hanyalah contoh. Isi keterangan\r\nproduk di sini. Teks ini hanyalah contoh. Isi keterangan produk di \r\nsini. Teks ini hanyalah contoh. Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh. Isi keterangan produk di sini. Teks ini hanyalah \r\ncontoh. \r\n</span>\r\n', 156000, 70, '0.00', '2011-03-15', '65pink_adem.jpg', 1, 0),
(85, 14, 'CQ Yellow', 'cq-yellow', '<span class="center_content2">Isi keterangan produk di sini.&nbsp; Isi \r\nketerangan produk di sini. Teks ini hanyalah contoh. Isi keterangan \r\nproduk di sini. Teks ini hanyalah contoh. Isi keterangan produk di sini.\r\nTeks ini hanyalah contoh. Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh. Isi keterangan produk di sini. Teks ini hanyalah \r\ncontoh. Isi keterangan produk di sini. Teks ini hanyalah contoh. Isi \r\nketerangan produk di sini. Teks ini hanyalah contoh.<br />\r\n<br />\r\nIsi keterangan produk di sini.&nbsp; Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh.Isi keterangan produk di sini. Teks ini hanyalah contoh.\r\nIsi keterangan produk di sini. Teks ini hanyalah contoh. Isi keterangan\r\nproduk di sini. Teks ini hanyalah contoh. Isi keterangan produk di \r\nsini. Teks ini hanyalah contoh. Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh. Isi keterangan produk di sini. Teks ini hanyalah \r\ncontoh. \r\n</span>\r\n', 67000, 56, '0.00', '2011-03-15', '45cq_yellow.jpg', 1, 0),
(66, 17, 'Red Ferrari ', 'red-ferrari-', '<span class="center_content2">Isi keterangan produk di sini.&nbsp; Isi \r\nketerangan produk di sini. Teks ini hanyalah contoh. Isi keterangan \r\nproduk di sini. Teks ini hanyalah contoh. Isi keterangan produk di sini.\r\nTeks ini hanyalah contoh. Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh. Isi keterangan produk di sini. Teks ini hanyalah \r\ncontoh. Isi keterangan produk di sini. Teks ini hanyalah contoh. Isi \r\nketerangan produk di sini. Teks ini hanyalah contoh.<br />\r\n<br />\r\nIsi keterangan produk di sini.&nbsp; Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh.Isi keterangan produk di sini. Teks ini hanyalah contoh.\r\nIsi keterangan produk di sini. Teks ini hanyalah contoh. Isi keterangan\r\nproduk di sini. Teks ini hanyalah contoh. Isi keterangan produk di \r\nsini. Teks ini hanyalah contoh. Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh. Isi keterangan produk di sini. Teks ini hanyalah \r\ncontoh. \r\n</span>\r\n', 370000, 80, '0.00', '2011-03-15', '85ferrari_red.jpg', 1, 20),
(65, 16, 'Intermilan ', 'intermilan-', '<span class="center_content2">Isi keterangan produk di sini.&nbsp; Isi \r\nketerangan produk di sini. Teks ini hanyalah contoh. Isi keterangan \r\nproduk di sini. Teks ini hanyalah contoh. Isi keterangan produk di sini.\r\nTeks ini hanyalah contoh. Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh. Isi keterangan produk di sini. Teks ini hanyalah \r\ncontoh. Isi keterangan produk di sini. Teks ini hanyalah contoh. Isi \r\nketerangan produk di sini. Teks ini hanyalah contoh.<br />\r\n<br />\r\nIsi keterangan produk di sini.&nbsp; Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh.Isi keterangan produk di sini. Teks ini hanyalah contoh.\r\nIsi keterangan produk di sini. Teks ini hanyalah contoh. Isi keterangan\r\nproduk di sini. Teks ini hanyalah contoh. Isi keterangan produk di \r\nsini. Teks ini hanyalah contoh. Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh. Isi keterangan produk di sini. Teks ini hanyalah \r\ncontoh. \r\n</span>\r\n', 250000, 90, '0.00', '2011-03-15', '95intermilan.jpg', 1, 10),
(86, 15, 'Purple Boxer', 'purple-boxer', '<span class="center_content2">Isi keterangan produk di sini.&nbsp; Isi \r\nketerangan produk di sini. Teks ini hanyalah contoh. Isi keterangan \r\nproduk di sini. Teks ini hanyalah contoh. Isi keterangan produk di sini.\r\nTeks ini hanyalah contoh. Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh. Isi keterangan produk di sini. Teks ini hanyalah \r\ncontoh. Isi keterangan produk di sini. Teks ini hanyalah contoh. Isi \r\nketerangan produk di sini. Teks ini hanyalah contoh.<br />\r\n<br />\r\nIsi keterangan produk di sini.&nbsp; Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh.Isi keterangan produk di sini. Teks ini hanyalah contoh.\r\nIsi keterangan produk di sini. Teks ini hanyalah contoh. Isi keterangan\r\nproduk di sini. Teks ini hanyalah contoh. Isi keterangan produk di \r\nsini. Teks ini hanyalah contoh. Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh. Isi keterangan produk di sini. Teks ini hanyalah \r\ncontoh. \r\n</span>\r\n', 85000, 0, '0.00', '2011-03-15', '23purple_boxer.jpg', 1, 0),
(64, 18, 'Hacker Hat', 'hacker-hat', '<span class="center_content2">Isi keterangan produk di sini.&nbsp; Isi \r\nketerangan produk di sini. Teks ini hanyalah contoh. Isi keterangan \r\nproduk di sini. Teks ini hanyalah contoh. Isi keterangan produk di sini.\r\nTeks ini hanyalah contoh. Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh. Isi keterangan produk di sini. Teks ini hanyalah \r\ncontoh. Isi keterangan produk di sini. Teks ini hanyalah contoh. Isi \r\nketerangan produk di sini. Teks ini hanyalah contoh.<br />\r\n<br />\r\nIsi keterangan produk di sini.&nbsp; Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh.Isi keterangan produk di sini. Teks ini hanyalah contoh.\r\nIsi keterangan produk di sini. Teks ini hanyalah contoh. Isi keterangan\r\nproduk di sini. Teks ini hanyalah contoh. Isi keterangan produk di \r\nsini. Teks ini hanyalah contoh. Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh. Isi keterangan produk di sini. Teks ini hanyalah \r\ncontoh. \r\n</span>\r\n', 40000, 87, '0.00', '2011-03-15', '52hacker_hat.jpg', 1, 0),
(87, 14, 'Pink Lifter', 'pink-lifter', '<span class="center_content2">Isi keterangan produk di sini.&nbsp; Isi \r\nketerangan produk di sini. Teks ini hanyalah contoh. Isi keterangan \r\nproduk di sini. Teks ini hanyalah contoh. Isi keterangan produk di sini.\r\nTeks ini hanyalah contoh. Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh. Isi keterangan produk di sini. Teks ini hanyalah \r\ncontoh. Isi keterangan produk di sini. Teks ini hanyalah contoh. Isi \r\nketerangan produk di sini. Teks ini hanyalah contoh.<br />\r\n<br />\r\nIsi keterangan produk di sini.&nbsp; Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh.Isi keterangan produk di sini. Teks ini hanyalah contoh.\r\nIsi keterangan produk di sini. Teks ini hanyalah contoh. Isi keterangan\r\nproduk di sini. Teks ini hanyalah contoh. Isi keterangan produk di \r\nsini. Teks ini hanyalah contoh. Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh. Isi keterangan produk di sini. Teks ini hanyalah \r\ncontoh. \r\n</span>\r\n', 78000, 80, '0.00', '2011-03-15', '82pink_lifter.jpg', 1, 0),
(88, 17, 'Vodafone', 'vodafone', '<span class="center_content2">Isi keterangan produk di sini.&nbsp; Isi \r\nketerangan produk di sini. Teks ini hanyalah contoh. Isi keterangan \r\nproduk di sini. Teks ini hanyalah contoh. Isi keterangan produk di sini.\r\nTeks ini hanyalah contoh. Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh. Isi keterangan produk di sini. Teks ini hanyalah \r\ncontoh. Isi keterangan produk di sini. Teks ini hanyalah contoh. Isi \r\nketerangan produk di sini. Teks ini hanyalah contoh.<br />\r\n<br />\r\nIsi keterangan produk di sini.&nbsp; Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh.Isi keterangan produk di sini. Teks ini hanyalah contoh.\r\nIsi keterangan produk di sini. Teks ini hanyalah contoh. Isi keterangan\r\nproduk di sini. Teks ini hanyalah contoh. Isi keterangan produk di \r\nsini. Teks ini hanyalah contoh. Isi keterangan produk di sini. Teks ini \r\nhanyalah contoh. Isi keterangan produk di sini. Teks ini hanyalah \r\ncontoh. \r\n</span>\r\n', 376000, 78, '0.00', '2011-03-15', '6fbkj049.jpg', 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `sekilasinfo`
--

CREATE TABLE IF NOT EXISTS `sekilasinfo` (
  `id_sekilas` int(5) NOT NULL,
  `info` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `sekilasinfo`
--

INSERT INTO `sekilasinfo` (`id_sekilas`, `info`, `tgl_posting`, `gambar`) VALUES
(1, 'Anak yang mengalami gangguan tidur, cenderung memakai obat2an dan alkohol berlebih saat dewasa.', '2010-04-11', 'news5.jpg'),
(2, 'WHO merilis, 30 persen anak-anak di dunia kecanduan menonton televisi dan bermain komputer.', '2010-04-11', 'news4.jpg'),
(3, 'Menurut peneliti di Detroit, orang yang selalu tersenyum lebar cenderung hidup lebih lama.', '2010-04-11', 'news3.jpg'),
(4, 'Menurut United Stated Trade Representatives, 25% obat yang beredar di Indonesia adalah palsu.', '2010-04-11', 'news2.jpg'),
(5, 'Presiden AS Barack Obama memesan Nasi Goreng di restoran Bali langsung dari Amerika', '2010-04-11', 'news1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `shop_pengiriman`
--

CREATE TABLE IF NOT EXISTS `shop_pengiriman` (
  `id_perusahaan` int(10) NOT NULL,
  `nama_perusahaan` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop_pengiriman`
--

INSERT INTO `shop_pengiriman` (`id_perusahaan`, `nama_perusahaan`, `gambar`) VALUES
(6, 'JNE', ''),
(5, 'TIKI', ''),
(7, 'POS EKSPRESS', '');

-- --------------------------------------------------------

--
-- Table structure for table `statistik`
--

CREATE TABLE IF NOT EXISTS `statistik` (
  `ip` varchar(20) NOT NULL DEFAULT '',
  `tanggal` date NOT NULL,
  `hits` int(10) NOT NULL DEFAULT '1',
  `online` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statistik`
--

INSERT INTO `statistik` (`ip`, `tanggal`, `hits`, `online`) VALUES
('127.0.0.1', '2011-01-23', 406, '1295797934'),
('127.0.0.1', '2011-01-22', 199, '1295712739'),
('127.0.0.1', '2011-01-20', 18, '1295484485'),
('127.0.0.1', '2011-01-19', 10, '1295452438'),
('127.0.0.1', '2011-01-25', 2, '1295961873'),
('127.0.0.1', '2011-01-26', 4, '1296050267'),
('127.0.0.1', '2011-01-27', 7, '1296110326'),
('127.0.0.1', '2011-01-28', 7, '1296233314'),
('127.0.0.1', '2011-01-29', 574, '1296320383'),
('127.0.0.1', '2011-01-30', 290, '1296393287'),
('127.0.0.1', '2011-01-31', 133, '1296493024'),
('127.0.0.1', '2011-02-01', 79, '1296521132'),
('110.138.43.143', '2011-02-01', 31, '1296540211'),
('66.249.71.118', '2011-02-01', 1, '1296528448'),
('67.195.115.24', '2011-02-01', 6, '1296538036'),
('125.161.211.231', '2011-02-01', 1, '1296529398'),
('222.124.98.187', '2011-02-01', 3, '1296531520'),
('66.249.71.77', '2011-02-01', 1, '1296532249'),
('66.249.71.20', '2011-02-01', 1, '1296534199'),
('117.20.62.233', '2011-02-01', 13, '1296537677'),
('110.137.200.121', '2011-02-01', 24, '1296540049'),
('127.0.0.1', '2011-02-16', 179, '1297875502'),
('127.0.0.1', '2011-02-17', 301, '1297961988'),
('127.0.0.1', '2011-02-18', 54, '1297990124'),
('127.0.0.1', '2011-02-22', 118, '1298393910'),
('127.0.0.1', '2011-02-23', 77, '1298479971'),
('127.0.0.1', '2011-02-24', 1, '1298510525'),
('127.0.0.1', '2011-03-13', 225, '1300027455'),
('127.0.0.1', '2011-03-14', 44, '1300115678'),
('127.0.0.1', '2011-03-15', 121, '1300195187'),
('127.0.0.1', '2011-03-16', 116, '1300292361'),
('127.0.0.1', '2011-03-17', 4, '1300331607'),
('127.0.0.1', '2011-03-18', 52, '1300422211'),
('127.0.0.1', '2011-03-27', 75, '1301234016'),
('127.0.0.1', '2011-03-28', 16, '1301307056'),
('127.0.0.1', '2011-03-29', 77, '1301409884'),
('::1', '2017-01-26', 26, '1485398955'),
('::1', '2017-01-30', 3, '1485745436'),
('::1', '2017-01-31', 4, '1485824040'),
('::1', '2017-08-24', 15, '1503548273'),
('::1', '2017-08-25', 10, '1503640393'),
('::1', '2017-08-28', 2, '1503883677'),
('::1', '2017-09-06', 6, '1504661278'),
('::1', '2017-09-07', 3, '1504749812'),
('::1', '2017-09-08', 6, '1504841094'),
('::1', '2017-09-13', 11, '1505285640'),
('::1', '2017-10-03', 3, '1507042805');

-- --------------------------------------------------------

--
-- Table structure for table `submenu`
--

CREATE TABLE IF NOT EXISTS `submenu` (
  `id_sub` int(5) NOT NULL,
  `nama_sub` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `link_sub` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `id_main` int(5) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `submenu`
--

INSERT INTO `submenu` (`id_sub`, `nama_sub`, `link_sub`, `id_main`) VALUES
(26, 'KOLEKSI BAJU', 'kategori-17-koleksi-baju.html', 12),
(25, 'KOLEKSI BAJU', 'kategori-17-koleksi-baju.html', 0),
(23, 'CELANA GAUL', 'kategori-15-celana-gaul.html', 12),
(24, 'RAGAM TOPI', 'kategori-18-ragam-topi.html', 12),
(20, 'LIHAT KERANJANG', 'keranjang-belanja.html', 13),
(21, 'SELESAI BELANJA', 'selesai-belanja.html', 13),
(27, 'JAKET GAYA', 'kategori-16-jaket-gaya.html', 12),
(28, 'ANEKA KAOS', 'kategori-14-aneka-kaos.html', 12);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password1` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktivasi` int(6) NOT NULL DEFAULT '0',
  `cek_aktivasi` int(6) NOT NULL DEFAULT '0',
  `no_telp` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `level` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT 'user',
  `blokir` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `id_session` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id_banner`);

--
-- Indexes for table `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`id_download`);

--
-- Indexes for table `header`
--
ALTER TABLE `header`
  ADD PRIMARY KEY (`id_header`);

--
-- Indexes for table `hubungi`
--
ALTER TABLE `hubungi`
  ADD PRIMARY KEY (`id_hubungi`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`id_kota`);

--
-- Indexes for table `mainmenu`
--
ALTER TABLE `mainmenu`
  ADD PRIMARY KEY (`id_main`);

--
-- Indexes for table `modul`
--
ALTER TABLE `modul`
  ADD PRIMARY KEY (`id_modul`);

--
-- Indexes for table `mod_bank`
--
ALTER TABLE `mod_bank`
  ADD PRIMARY KEY (`id_bank`);

--
-- Indexes for table `mod_ym`
--
ALTER TABLE `mod_ym`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id_orders`);

--
-- Indexes for table `orders_temp`
--
ALTER TABLE `orders_temp`
  ADD PRIMARY KEY (`id_orders_temp`);

--
-- Indexes for table `poling`
--
ALTER TABLE `poling`
  ADD PRIMARY KEY (`id_poling`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `sekilasinfo`
--
ALTER TABLE `sekilasinfo`
  ADD PRIMARY KEY (`id_sekilas`);

--
-- Indexes for table `shop_pengiriman`
--
ALTER TABLE `shop_pengiriman`
  ADD PRIMARY KEY (`id_perusahaan`);

--
-- Indexes for table `submenu`
--
ALTER TABLE `submenu`
  ADD PRIMARY KEY (`id_sub`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id_banner` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `download`
--
ALTER TABLE `download`
  MODIFY `id_download` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `header`
--
ALTER TABLE `header`
  MODIFY `id_header` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `hubungi`
--
ALTER TABLE `hubungi`
  MODIFY `id_hubungi` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT for table `kota`
--
ALTER TABLE `kota`
  MODIFY `id_kota` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `mainmenu`
--
ALTER TABLE `mainmenu`
  MODIFY `id_main` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `modul`
--
ALTER TABLE `modul`
  MODIFY `id_modul` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `mod_bank`
--
ALTER TABLE `mod_bank`
  MODIFY `id_bank` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mod_ym`
--
ALTER TABLE `mod_ym`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id_orders` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `orders_temp`
--
ALTER TABLE `orders_temp`
  MODIFY `id_orders_temp` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=229;
--
-- AUTO_INCREMENT for table `poling`
--
ALTER TABLE `poling`
  MODIFY `id_poling` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=92;
--
-- AUTO_INCREMENT for table `sekilasinfo`
--
ALTER TABLE `sekilasinfo`
  MODIFY `id_sekilas` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `shop_pengiriman`
--
ALTER TABLE `shop_pengiriman`
  MODIFY `id_perusahaan` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `submenu`
--
ALTER TABLE `submenu`
  MODIFY `id_sub` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
