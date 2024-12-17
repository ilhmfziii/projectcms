-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2024 at 10:02 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `caraousel`
--

CREATE TABLE `caraousel` (
  `id_caraousel` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `foto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `caraousel`
--

INSERT INTO `caraousel` (`id_caraousel`, `judul`, `foto`) VALUES
(36, 'awal', '20241211132454.jpg'),
(37, 'kedua', '20241211132507.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(2, 'Alam'),
(5, 'Edukasi'),
(7, 'Kuliner');

-- --------------------------------------------------------

--
-- Table structure for table `konfigurasi`
--

CREATE TABLE `konfigurasi` (
  `id_konfigurasi` int(11) NOT NULL,
  `judul_website` varchar(200) NOT NULL,
  `profil_website` text NOT NULL,
  `instagram` varchar(100) NOT NULL,
  `facebook` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `no_wa` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `konfigurasi`
--

INSERT INTO `konfigurasi` (`id_konfigurasi`, `judul_website`, `profil_website`, `instagram`, `facebook`, `email`, `alamat`, `no_wa`) VALUES
(1, 'Arunika Travel', 'Sebelum kemerdekaan, Karanganyar adalah bagian dari Kerajaan Mataram Islam dengan pengaruh Hindu-Buddha dari era Majapahit, terlihat pada Candi Sukuh dan Candi Cetho. Pada masa kolonial Belanda, wilayah ini berkembang lewat perkebunan teh di Kemuning. Saat pendudukan Jepang, Karanganyar menjadi tempat perlawanan rakyat untuk memperjuangkan kemerdekaan.', 'https://instagram.com/ilhamfziii_', 'https://facebook/ilhamfauzi', 'arunika@gmail.com', 'Karanganyar, Jawa Tengah, Indonesia', '081927918637');

-- --------------------------------------------------------

--
-- Table structure for table `konten`
--

CREATE TABLE `konten` (
  `id_konten` int(11) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `keterangan` text NOT NULL,
  `foto` varchar(50) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `id_kategori` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `konten`
--

INSERT INTO `konten` (`id_konten`, `judul`, `keterangan`, `foto`, `slug`, `id_kategori`, `tanggal`, `username`) VALUES
(22, 'Air Terjun Grojogan Sewu', 'Air Terjun Grojogan Sewu, yang terletak di Desa Beji, Kecamatan Tawangmangu, Kabupaten Karanganyar, Jawa Tengah, adalah salah satu air terjun paling terkenal di Jawa Tengah. Dengan ketinggian mencapai 81 meter, air terjun ini dikelilingi oleh hutan pinus yang rimbun, menciptakan suasana segar dan alami. Untuk mencapai air terjun ini, pengunjung harus melewati tangga yang cukup banyak, tetapi usaha tersebut akan terbayar dengan pemandangan spektakuler dari air terjun yang mengalir deras. Di sekitar area terdapat fasilitas seperti warung makan dan tempat istirahat, serta jalur trekking yang memungkinkan pengunjung untuk menjelajahi keindahan alam sekitarnya.\r\n', '20241208025023.jpg', 'Air-Terjun-Grojogan-Sewu', '2', '2024-12-08', 'admin'),
(24, 'Gunung Lawu', 'Gunung Lawu terletak di perbatasan antara Kabupaten Karanganyar dan Kabupaten Magetan, merupakan salah satu gunung tertinggi di Jawa Tengah dengan ketinggian 3.265 meter di atas permukaan laut. Gunung ini terkenal sebagai destinasi pendakian bagi para pecinta alam dan pendaki gunung pemula hingga berpengalaman. Trekking ke puncak Gunung Lawu menawarkan pemandangan spektakuler dari hutan pinus hingga padang rumput alpine di puncaknya. Di puncak terdapat beberapa bangunan bersejarah seperti Candi Sewa dan pos pendakian. Pendakian biasanya dimulai dari basecamp Candi Cetho atau Candi Kethek, dengan waktu tempuh sekitar 6-8 jam tergantung jalur yang dipilih.', '20241208052750.jpg', 'Gunung-Lawu', '2', '2024-12-08', 'admin'),
(25, 'Telaga Madirda', 'Telaga Madirda terletak di Berjo, Kecamatan Ngargoyoso dan merupakan danau alami yang dikelilingi oleh hutan hijau lebat serta pegunungan. Tempat ini menawarkan suasana tenang dan damai, cocok bagi pengunjung yang ingin melarikan diri dari hiruk-pikuk kota. Di sekitar telaga terdapat jalur setapak untuk berjalan kaki serta area piknik yang nyaman. Anda juga dapat menyewa perahu untuk menjelajahi telaga atau sekadar duduk santai menikmati keindahan alam sambil memancing ikan. Suasana di sini sangat ideal untuk meditasi atau bersantai dengan keluarga.', '20241208053022.jpg', 'Telaga-Madirda', '2', '2024-12-08', 'admin'),
(27, 'Rumah Astri', 'Rumah Astri berada di Watusambang, Kecamatan Tawangmangu dan merupakan tempat yang sangat menarik dan unik! Bayangkan sebuah tempat di mana kamu bisa belajar tentang tanaman-tanaman wangi yang menghasilkan minyak alami, seperti lavender, peppermint, dan banyak lagi. Di sini, kamu bisa mengetahui bagaimana minyak-minyak ini dibuat dan apa saja kegunaannya.', '20241208053445.jpg', 'Rumah-Astri', '5', '2024-12-08', 'admin'),
(28, 'De Tjolomadoe', 'De Tjolomadoe terletak di Malangjiwan, Kecamatan Colomadu. Di De Tjolomadoe, kita bisa merasakan bagaimana serunya bekerja di pabrik gula zaman dulu. Bayangkan, kita bisa melihat mesin-mesin besar yang berdengung dan bau manis tebu yang memenuhi udara. Selain itu, kita juga bisa belajar banyak tentang sejarah pembuatan gula dan betapa pentingnya gula bagi kehidupan kita. Dijamin, liburan kita bakal jadi lebih seru dan berkesan!', '20241208053703.jpg', 'De-Tjolomadoe', '5', '2024-12-08', 'admin'),
(30, 'Candi Cetho', 'Candi Cetho terletak di Desa Cetho, Kecamatan Jenawi dan merupakan candi Hindu peninggalan akhir Kerajaan Majapahit. Dibangun pada abad ke-15, candi ini memiliki arsitektur berteras khas punden berundak dan dihiasi relief yang sarat nilai filosofis tentang perjalanan spiritual. Selain sebagai situs sejarah dan tempat ibadah, Candi Cetho menawarkan keindahan alam pegunungan, menjadikannya destinasi wisata edukasi dan spiritual yang menenangkan.', '20241208060110.jpg', 'Candi-Cetho', '5', '2024-12-08', 'admin'),
(31, 'Sate Kambing Pak Pur', 'Sate Kambing Pak Pur di Tawangmangu, Karanganyar terkenal dengan sate kambing empuk dan bumbu kacang khas yang gurih dan sedikit pedas. Daging kambing muda dibakar sempurna, disajikan dengan lontong atau nasi. Selain sate, warung ini juga menawarkan tongseng kambing yang lezat. Sate Kambing Pak Pur menjadi pilihan kuliner favorit di Karanganyar, cocok bagi pengunjung yang ingin mencicipi hidangan kambing yang nikmat dan autentik.', '20241208061348.jpg', 'Sate-Kambing-Pak-Pur', '7', '2024-12-08', 'admin'),
(32, 'RM Ndoro Donker', 'Rumah Makan Ndoro Donker terletak di Kebun Teh Kemuning, Karanganyar, menawarkan masakan tradisional Jawa seperti nasi liwet, mendoan, dan ikan bakar. Dikenal dengan teh premium dari kebun sekitar, restoran ini memberikan suasana nyaman dengan pemandangan alam yang asri, ideal untuk bersantai sambil menikmati kuliner.', '20241208061746.jpg', 'RM-Ndoro-Donker', '7', '2024-12-08', 'admin'),
(33, 'Cleguk', 'Cleguk Steak & Resto di Tawangmangu, Karanganyar, adalah restoran dengan suasana sejuk khas pegunungan. Menawarkan menu andalan steak dengan harga terjangkau (Rp 8.000–Rp 60.000), tempat ini memiliki interior menarik dengan koleksi barang antik. Restoran buka setiap hari pukul 11.00–21.00 WIB, cocok untuk bersantap bersama keluarga atau teman.', '20241211130835.jpg', 'Cleguk', '7', '2024-12-11', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(70) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `level` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `nama`, `password`, `level`) VALUES
(1, 'admin', 'ilham', '827ccb0eea8a706c4c34a16891f84e7b', 'Admin'),
(20, 'jebew', 'mie', '827ccb0eea8a706c4c34a16891f84e7b', 'kontributor'),
(21, 'ayam', 'soto', '827ccb0eea8a706c4c34a16891f84e7b', 'kontributor'),
(22, 'dawet', 'es', '827ccb0eea8a706c4c34a16891f84e7b', 'kontributor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `caraousel`
--
ALTER TABLE `caraousel`
  ADD PRIMARY KEY (`id_caraousel`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `konfigurasi`
--
ALTER TABLE `konfigurasi`
  ADD PRIMARY KEY (`id_konfigurasi`);

--
-- Indexes for table `konten`
--
ALTER TABLE `konten`
  ADD PRIMARY KEY (`id_konten`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `caraousel`
--
ALTER TABLE `caraousel`
  MODIFY `id_caraousel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `konfigurasi`
--
ALTER TABLE `konfigurasi`
  MODIFY `id_konfigurasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `konten`
--
ALTER TABLE `konten`
  MODIFY `id_konten` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
