-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2023 at 04:53 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yukimaga_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `hirakata`
--

CREATE TABLE `hirakata` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `hiragana` varchar(255) NOT NULL,
  `katakana` varchar(255) NOT NULL,
  `romaji` varchar(255) NOT NULL,
  `userId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hirakata`
--

INSERT INTO `hirakata` (`id`, `uuid`, `hiragana`, `katakana`, `romaji`, `userId`, `createdAt`, `updatedAt`) VALUES
(1, 'dd7b164b-919e-4787-ac92-e340ece5d533', 'あ', 'ア', 'A', 1, '2023-03-16 03:26:26', '2023-03-16 03:26:26'),
(2, '14326c23-8737-4ab1-b8eb-f809f2be09d3', 'い', 'イ', 'I', 1, '2023-03-16 03:26:35', '2023-03-16 03:26:35'),
(3, '79c8d756-1c42-476c-a909-2a1851752d5f', 'う', 'ウ', 'U', 1, '2023-03-16 03:26:44', '2023-03-16 03:26:44'),
(4, '7bd67dda-a925-42c0-ba65-591da0acb3c1', 'え', 'エ', 'E', 1, '2023-03-16 03:26:57', '2023-03-16 03:26:57'),
(5, 'd3d059f9-1ede-4c9b-bf80-4c39483aff74', 'お', 'オ', 'O', 1, '2023-03-16 03:27:12', '2023-05-11 03:03:09'),
(6, '265ddc58-e1ed-48b9-b1e3-f37fe11cc503', 'か', 'カ', 'Ka', 1, '2023-03-16 03:27:22', '2023-03-16 03:27:22'),
(7, '3e2bae5f-393a-4d25-80a3-1bcf3e87121a', 'き', 'キ', 'Ki', 1, '2023-03-16 03:27:33', '2023-03-16 03:27:33'),
(8, '9fe353f0-fe03-413d-8022-dfcb2cc9a702', 'く', 'ク', 'Ku', 1, '2023-03-16 03:27:46', '2023-03-16 03:27:46'),
(9, 'b12dd8aa-8418-4949-ad7e-47d1534032bc', 'け', 'ケ', 'Ke', 1, '2023-03-16 03:27:55', '2023-03-16 03:27:55'),
(10, 'c5c0b3d7-298c-44a1-821e-bc8425abdcf7', 'こ', 'コ', 'Ko', 1, '2023-03-16 03:28:04', '2023-03-16 03:28:04'),
(11, 'c91947ba-98e4-4c5f-b928-dd17f3734c84', 'さ', 'サ', 'Sa', 1, '2023-03-16 03:28:12', '2023-03-16 03:28:12'),
(12, 'f3baebc8-d78c-497f-9413-56765c72e873', 'し', 'シ', 'Shi', 1, '2023-03-16 03:28:21', '2023-03-16 03:28:21'),
(13, '6a3a2c49-fc77-4d1b-880b-5fc2d6497045', 'す', 'ス', 'Su', 1, '2023-03-16 03:28:31', '2023-03-16 03:28:31'),
(14, '38243269-7c88-4a49-8f89-ac7a1746c602', 'せ', 'セ', 'Se', 1, '2023-03-16 03:28:39', '2023-03-16 03:28:39'),
(15, '9e9e83bf-8324-4134-8fdc-5d6a44444ad8', 'そ', 'ソ', 'So', 1, '2023-03-16 03:28:50', '2023-03-16 03:28:50'),
(16, '4159d68d-0dad-4dfc-907d-eb75293b9209', 'た', 'タ', 'Ta', 1, '2023-03-17 02:16:56', '2023-03-17 02:16:56'),
(17, '3433a2d7-0585-4b11-8a4e-fdc66f14628b', 'ち', 'チ', 'Chi', 1, '2023-03-17 02:17:05', '2023-03-17 02:17:05'),
(18, 'a67f542d-dd71-450a-846e-9000d91b36f1', 'つ', 'ツ', 'Tsu', 1, '2023-03-17 02:17:21', '2023-03-17 02:17:21'),
(19, '23182b03-ee01-4ffa-99c7-3e2ef6a76119', 'て', 'テ', 'Te', 1, '2023-03-17 02:17:30', '2023-03-17 02:17:30'),
(20, '60aadbbf-f440-4af9-b063-67492e7c2627', 'と', 'ト', 'To', 1, '2023-03-17 02:17:39', '2023-03-17 02:17:39');

-- --------------------------------------------------------

--
-- Table structure for table `kanjin5`
--

CREATE TABLE `kanjin5` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `kanji` varchar(255) NOT NULL,
  `onyomi` varchar(255) NOT NULL,
  `kunyomi` varchar(255) NOT NULL,
  `arti` varchar(255) NOT NULL,
  `userId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kanjin5`
--

INSERT INTO `kanjin5` (`id`, `uuid`, `kanji`, `onyomi`, `kunyomi`, `arti`, `userId`, `createdAt`, `updatedAt`) VALUES
(1, 'b8bfbede-2abb-47f9-9839-1846c1105595', '安', 'An', 'Yasu-i', 'Murah', 1, '2023-03-17 02:21:56', '2023-03-17 02:21:56'),
(2, '4fef75bf-1ee1-42ce-887e-9b912526f926', '一', 'Ichi', 'Hito-tsu', 'Satu', 1, '2023-03-17 02:22:14', '2023-03-17 02:22:14'),
(3, '96e30845-402a-4f25-a8c1-7e25780cd272', '飲', 'In', 'No-mu', 'Minum', 1, '2023-03-17 02:22:34', '2023-05-11 03:34:09'),
(4, '143a8c55-bfff-4c43-8453-19e792433511', '右', 'U, Yuu', 'Migi', 'Kanan', 1, '2023-03-17 02:23:07', '2023-03-17 02:23:07'),
(6, '18fb8d0e-8edd-4ae1-afb9-340cc1b634aa', '駅', 'Eki', 'ー', 'Stasiun', 1, '2023-03-17 02:23:44', '2023-03-17 02:23:44'),
(7, '8d4c57f8-e67d-4df8-9953-5c73aa4a605f', '円', 'En', 'Maru', 'Yen', 1, '2023-03-17 02:23:58', '2023-03-17 02:23:58'),
(8, '42ca6b37-c698-4568-bd6f-5f9fd2dd55cb', '火', 'Ka', 'Hi', 'Api', 1, '2023-03-17 02:24:16', '2023-05-11 04:07:44');

-- --------------------------------------------------------

--
-- Table structure for table `katabenda`
--

CREATE TABLE `katabenda` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `kanji` varchar(255) NOT NULL,
  `romaji` varchar(255) NOT NULL,
  `arti` varchar(255) NOT NULL,
  `userId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `katabenda`
--

INSERT INTO `katabenda` (`id`, `uuid`, `kanji`, `romaji`, `arti`, `userId`, `createdAt`, `updatedAt`) VALUES
(1, '4c0a0983-b47a-4578-a5e6-04c24759c491', '机', 'Tsukue', 'Meja', 1, '2023-03-17 02:27:15', '2023-03-17 02:27:15'),
(2, 'c199749a-b931-4c57-a8d5-e45e1c1e0fc0', '携帯', 'Keitai', 'Telpon Genggam', 1, '2023-03-17 02:27:48', '2023-03-17 02:27:48'),
(3, '59c71da6-96f7-49be-b13d-b46c9d61676f', '電話番号', 'Denwabangou', 'Nomor Telepon', 1, '2023-03-17 02:28:03', '2023-05-11 04:03:23'),
(4, '7cc11fc1-57b7-42b2-8a46-1039a034cde0', '手紙', 'Tegami', 'Surat', 1, '2023-03-17 02:28:19', '2023-03-17 02:28:19'),
(5, '7cad9a7c-1c85-4e05-bef9-8458f8ed4784', '英語', 'Eigo', 'Bahasa Inggris', 1, '2023-03-17 02:28:31', '2023-03-17 02:28:31'),
(6, 'bd99c1fc-02ea-4816-8f6a-475aa9abc072', '鉛筆', 'Enpitsu', 'Pensi', 1, '2023-03-17 02:28:49', '2023-05-11 04:08:19');

-- --------------------------------------------------------

--
-- Table structure for table `katakerja`
--

CREATE TABLE `katakerja` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `kanji` varchar(255) NOT NULL,
  `romaji` varchar(255) NOT NULL,
  `arti` varchar(255) NOT NULL,
  `userId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `katakerja`
--

INSERT INTO `katakerja` (`id`, `uuid`, `kanji`, `romaji`, `arti`, `userId`, `createdAt`, `updatedAt`) VALUES
(1, '72c0e594-94a8-4898-bdfd-ce001224253b', '仕事ーする', 'Shigoto-suru', 'Bekerja Keras', 1, '2023-03-17 02:35:53', '2023-05-12 03:48:57'),
(2, '4e8d01fd-36eb-4641-b95f-11be597ea678', '食べる', 'Taberu', 'Makan', 1, '2023-03-17 02:36:03', '2023-05-11 05:26:46'),
(3, 'ade38306-a831-49e1-8c0f-de74636a859f', '飲む', 'Nomu', 'Minum', 1, '2023-03-17 02:36:16', '2023-05-11 05:24:50');

-- --------------------------------------------------------

--
-- Table structure for table `katasifat`
--

CREATE TABLE `katasifat` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `kanji` varchar(255) NOT NULL,
  `romaji` varchar(255) NOT NULL,
  `arti` varchar(255) NOT NULL,
  `userId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `katasifat`
--

INSERT INTO `katasifat` (`id`, `uuid`, `kanji`, `romaji`, `arti`, `userId`, `createdAt`, `updatedAt`) VALUES
(1, '3c351180-8e8a-426e-93d8-4eb0a627731f', '青い', 'Aoi', 'Biru', 1, '2023-03-17 02:40:08', '2023-03-17 02:40:08'),
(2, 'bfca365e-25ef-4008-b0e3-1f0a389cfa76', '緑', 'Midori', 'Hijau', 1, '2023-03-17 02:40:17', '2023-03-17 02:40:17'),
(3, '0e40ed29-d973-4791-9653-2fb1b2e73273', '黄色い', 'Kiiroi', 'Kuning', 1, '2023-03-17 02:40:26', '2023-03-17 02:40:26'),
(4, 'e716bae2-e3bc-4b5c-8dcd-70785641d2c9', '紫', 'Murasaki', 'Ungu', 1, '2023-03-17 02:40:38', '2023-03-17 02:40:38'),
(5, '14b14322-4e78-43ec-87b3-3ece2922d436', '赤い', 'Akai', 'Merah', 1, '2023-03-17 02:40:50', '2023-03-17 02:40:50'),
(6, '81b2e660-6135-4f33-be2a-5331464a63cf', '白い', 'Shiroi', 'Putih', 1, '2023-03-17 02:40:59', '2023-03-17 02:40:59');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `biaya` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `pesertamagangId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id`, `uuid`, `keterangan`, `biaya`, `userId`, `pesertamagangId`, `createdAt`, `updatedAt`) VALUES
(1, '90a2724f-22a9-407a-ba00-ca3d7c98b024', 'Bayar setelah selesai MCU', 2800000, 1, 1, '2023-03-17 02:19:55', '2023-03-17 02:19:55'),
(10, 'fddaed5f-1e30-46ef-be13-b12d1a844caf', 'bbbb', 3200000, 1, 1, '2023-05-12 14:41:49', '2023-05-13 04:00:03'),
(11, '26319ec2-09ef-4268-825a-82ec1f230ec1', 'sasd', 3200000, 1, 3, '2023-05-13 05:21:23', '2023-05-13 05:21:23');

-- --------------------------------------------------------

--
-- Table structure for table `pesertamagang`
--

CREATE TABLE `pesertamagang` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `provinsi` varchar(255) NOT NULL,
  `kota` varchar(255) NOT NULL,
  `kecamatan` varchar(255) NOT NULL,
  `kelurahan` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `tempatlahir` varchar(255) NOT NULL,
  `tgllahir` date NOT NULL,
  `notelp` varchar(255) NOT NULL,
  `jkel` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pesertamagang`
--

INSERT INTO `pesertamagang` (`id`, `uuid`, `nama`, `provinsi`, `kota`, `kecamatan`, `kelurahan`, `alamat`, `tempatlahir`, `tgllahir`, `notelp`, `jkel`, `email`, `password`, `role`, `createdAt`, `updatedAt`) VALUES
(1, '1b6ee95c-d595-4927-8714-b49fa0a507ea', 'User', 'Jawa Timur', 'Jombang', 'Jombang', 'tanggung', 'Jl. Ciliwung No. 342', 'Jombang', '1996-09-04', '081234567890', 'Pria', 'user@user.com', '$argon2id$v=19$m=65536,t=3,p=4$LPbmM3mehJNybiwXfJ4drQ$udnmMYB924nyOcPWjv1n1gQcwFnrq14e4Tut+R5/AAI', 'imjapan', '2023-03-16 03:24:06', '2023-03-16 03:24:06'),
(3, '9c23aea5-96a9-4b5a-a75e-cc5da947cfc1', 'User', 'Jawa Timur', 'Jombang', 'Jombang', 'tanggung', 'Jl. Ciliwung No. 342', 'Jombang', '1996-09-04', '081234567890', 'Pria', 'user@user.com', '$argon2id$v=19$m=65536,t=3,p=4$uMI/EeOGvlRiQ0UMJy5W+g$nl2XodHOTjSdnnDSGjcZoCg4Pzb9YI2C0Hp1Kn9qI7E', 'imjapan', '2023-05-03 14:15:43', '2023-05-03 14:15:43');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `sid` varchar(36) NOT NULL,
  `expires` datetime DEFAULT NULL,
  `data` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`) VALUES
('5snBSGQgQE4qSIbL9bFc4ktZXhVXKQ2h', '2023-05-13 12:20:30', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-05-12 12:20:30', '2023-05-12 12:20:30'),
('CgVFivqDjWsUTsGqMHdWemDB_NW-RClS', '2023-05-14 05:22:47', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-05-13 05:22:47', '2023-05-13 05:22:47'),
('dR4ADZQsffausWat7q_NpjDoEj7xEVxe', '2023-05-14 05:28:41', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-05-13 05:28:41', '2023-05-13 05:28:41'),
('gr3Pe2RxXINWMmgDy5TpnknqXL7J_xxO', '2023-05-13 08:07:56', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-05-12 08:07:56', '2023-05-12 08:07:56'),
('GxaH1vrhM7VDKamOS96jx7bJT7dSJAVl', '2023-05-13 08:08:00', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"04f7452c-0b53-45d8-9aba-c04179afa7c4\"}', '2023-05-12 08:07:56', '2023-05-12 08:08:00'),
('ICY67eCOxwq980USDf9atS1sebA6f5BI', '2023-05-14 05:32:01', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"04f7452c-0b53-45d8-9aba-c04179afa7c4\"}', '2023-05-13 05:28:41', '2023-05-13 05:32:01'),
('LLxz_sb7YCN7LYJT-Q-uuqWo9JRtc96e', '2023-05-14 05:21:23', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"04f7452c-0b53-45d8-9aba-c04179afa7c4\",\"pesertamagangId\":\"1b6ee95c-d595-4927-8714-b49fa0a507ea\"}', '2023-05-12 03:45:37', '2023-05-13 05:21:23'),
('sk_FquuDo8N6KL8muv4UC44O-vw8zt21', '2023-05-13 12:32:29', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"04f7452c-0b53-45d8-9aba-c04179afa7c4\"}', '2023-05-12 12:20:31', '2023-05-12 12:32:29'),
('WS-KTEQVmFjTjGQ3wObMBZfW4sDxz3XP', '2023-05-13 12:20:26', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-05-12 12:20:26', '2023-05-12 12:20:26'),
('zkC-rp1HypOHQuf4K52LZvPzDax1USeF', '2023-05-14 05:22:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"04f7452c-0b53-45d8-9aba-c04179afa7c4\"}', '2023-05-13 05:22:47', '2023-05-13 05:22:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `provinsi` varchar(255) NOT NULL,
  `kota` varchar(255) NOT NULL,
  `kecamatan` varchar(255) NOT NULL,
  `kelurahan` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `tempatlahir` varchar(255) NOT NULL,
  `tgllahir` date NOT NULL,
  `notelp` varchar(255) NOT NULL,
  `jkel` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uuid`, `nama`, `provinsi`, `kota`, `kecamatan`, `kelurahan`, `alamat`, `tempatlahir`, `tgllahir`, `notelp`, `jkel`, `email`, `password`, `role`, `createdAt`, `updatedAt`) VALUES
(1, '04f7452c-0b53-45d8-9aba-c04179afa7c4', 'Admin', 'Jawa Timur', 'kota blitar', 'kepanjen kidul', 'tanggung', 'Jl. Ciliwung No. 342', 'blitar', '1996-09-04', '08515669423', 'Pria', 'admin@admin.com', '$argon2id$v=19$m=65536,t=3,p=4$E6iTF3CJa3GukPcJQnVvqQ$EyvtGCt/wiUSp6Sk9cIHQ6Ju5KATt2b6Cjh3hpod2CE', 'admin', '2023-03-16 03:24:15', '2023-03-16 03:24:15'),
(2, '00a9a9e4-becb-4382-8f2f-65795330e877', 'Sensei', '35', '3505', '3505100', '3505100002', 'Jl. Iskandar No. 2', 'Blitar', '1998-03-04', '08123456789', 'Pria', 'sensei@sensei.com', '$argon2id$v=19$m=65536,t=3,p=4$Hln3xeCJWfJpmUcUO8ZzBg$NXOAoxQsCAxLm5SpSv/FHHcfjoVTJSgTiTtknrF7amc', 'user', '2023-03-17 02:19:03', '2023-03-17 02:19:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hirakata`
--
ALTER TABLE `hirakata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `kanjin5`
--
ALTER TABLE `kanjin5`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `katabenda`
--
ALTER TABLE `katabenda`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `katakerja`
--
ALTER TABLE `katakerja`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `katasifat`
--
ALTER TABLE `katasifat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`),
  ADD KEY `pesertamagangId` (`pesertamagangId`);

--
-- Indexes for table `pesertamagang`
--
ALTER TABLE `pesertamagang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hirakata`
--
ALTER TABLE `hirakata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `kanjin5`
--
ALTER TABLE `kanjin5`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `katabenda`
--
ALTER TABLE `katabenda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `katakerja`
--
ALTER TABLE `katakerja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `katasifat`
--
ALTER TABLE `katasifat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `pesertamagang`
--
ALTER TABLE `pesertamagang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hirakata`
--
ALTER TABLE `hirakata`
  ADD CONSTRAINT `hirakata_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kanjin5`
--
ALTER TABLE `kanjin5`
  ADD CONSTRAINT `kanjin5_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `katabenda`
--
ALTER TABLE `katabenda`
  ADD CONSTRAINT `katabenda_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `katakerja`
--
ALTER TABLE `katakerja`
  ADD CONSTRAINT `katakerja_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `katasifat`
--
ALTER TABLE `katasifat`
  ADD CONSTRAINT `katasifat_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pembayaran_ibfk_2` FOREIGN KEY (`pesertamagangId`) REFERENCES `pesertamagang` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
