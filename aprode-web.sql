-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2020 at 10:05 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aprode-web`
--

-- --------------------------------------------------------

--
-- Table structure for table `paginas`
--

CREATE TABLE `paginas` (
  `id` int(11) NOT NULL,
  `imagen` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `titulo` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `contenido` mediumtext COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_blog`
--

CREATE TABLE `post_blog` (
  `id` int(40) NOT NULL,
  `imagen` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `titulo` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `contenido` mediumtext COLLATE utf8mb4_spanish_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Dumping data for table `post_blog`
--

INSERT INTO `post_blog` (`id`, `imagen`, `titulo`, `descripcion`, `contenido`) VALUES
(1, '<sxc', 'prueba 1', 'descripcion 1', NULL),
(2, '<sxc', 'prueba 2', 'descripcion 2', NULL),
(3, '<sxc', 'prueba 3', 'descripcion 3', NULL),
(4, '<sxc', 'prueba 4', 'descripcion 4', NULL),
(5, '<sxc', 'prueba 5 ', 'descripcion 5', NULL),
(6, 'dsafdasd', 'tusa', 'alexis y fido', NULL),
(7, 'sdfsad', 'asdadsadas', 'asdasdasd', 'asdasdasf lskdjgnskajlvnñdskjlfvnsñajkdlvnñkdnvñkljsadnfñkjasdnfkñjasdnfñkdsjafngasdjkñ'),
(8, 'sdfsad', 'loca', 'asdasdasd', 'asdasdasf lskdjgnskajlvnñd\r\nasdlñkasmñda\r\nasd,asfdl,alf,gas.asfñkljmgidmgsd\r\ndf\r\nsdf\r\nsd\r\nfsd\r\nf\r\nsdf\r\nsd\r\nfsd\r\n\r\nfsdf'),
(9, 'asdasd', 'ultimo', 'asdasdasdas', 'jksadfnkñljsdvsdkljn\r\n\r\n\r\nasdasdasd\r\n\r\n\r\n\r\nasdasdasdasd\r\n\r\n\r\nasd'),
(10, 'sdada', 'abc', 'sadasdas', 'asdasdas\r\nasdasdasdas\r\nasdasdasd\r\nasdasdasd\r\nasd'),
(11, 'sdfsad', 'prueba 5 dfgdf', 'ssdfsdf', '    añsldmasñlmdañs      asdasdas    asd\r\nasdasd\r\nasdasd  sdad\r\n     asdasdasdasdsa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `paginas`
--
ALTER TABLE `paginas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_blog`
--
ALTER TABLE `post_blog`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `paginas`
--
ALTER TABLE `paginas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post_blog`
--
ALTER TABLE `post_blog`
  MODIFY `id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
