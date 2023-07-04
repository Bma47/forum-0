-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 04 jul 2023 om 14:49
-- Serverversie: 10.4.24-MariaDB
-- PHP-versie: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `forum`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `replies`
--

CREATE TABLE `replies` (
  `id` int(11) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `reply` varchar(200) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_image` varchar(200) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `replies`
--

INSERT INTO `replies` (`id`, `user_name`, `reply`, `user_id`, `user_image`, `topic_id`, `created_at`) VALUES
(1, 'bma3an@gmail.com', 'tomb raider', 1, 'image1.png', 1, '2023-06-29 21:21:42'),
(2, 'mario@gmail.com', 'asdasdadsad', 4, 'default_image.jpg', 14, '2023-07-01 14:58:07'),
(3, 'mario@gmail.com', 'asdasdas', 4, 'default_image.jpg', 14, '2023-07-01 14:58:11'),
(4, 'mario@gmail.com', 'sadasd', 4, 'img/p1.jpg', 14, '2023-07-01 14:58:59'),
(5, 'mario@gmail.com', 'sad', 4, 'img/p1.jpg', 15, '2023-07-01 15:02:20'),
(6, 'mario@gmail.com', 'ssssss', 4, 'img/p1.jpg', 15, '2023-07-01 16:23:00'),
(7, 'bma3an@gmail.com', 'aaaaa', 1, 'img/gravatar.png', 16, '2023-07-02 10:35:11'),
(8, 'bma3an@gmail.com', 'aaaa', 1, 'img/gravatar.png', 17, '2023-07-02 10:35:22'),
(9, 'bma3an@gmail.com', 'asdasd', 1, 'img/gravatar.png', 18, '2023-07-02 10:36:39'),
(10, 'bma3an@gmail.com', 'asdad', 1, 'img/gravatar.png', 18, '2023-07-02 10:36:43'),
(11, 'bma3an@gmail.com', 'ddddd', 1, 'img/gravatar.png', 16, '2023-07-02 10:37:05'),
(12, 'mario@gmail.com', 'dddd', 4, 'p1.jpg', 19, '2023-07-02 10:37:58'),
(13, 'mario@gmail.com', 'basher', 4, 'p1.jpg', 19, '2023-07-02 10:38:13'),
(14, 'mario@gmail.com', 'hallo', 4, 'p1.jpg', 22, '2023-07-02 10:40:15'),
(15, 'mario@gmail.com', 'asdasd', 4, 'p1.jpg', 22, '2023-07-02 10:41:41'),
(16, 'bma3an@gmail.com', 'dasasd', 1, 'img/gravatar.png', 23, '2023-07-02 11:03:39'),
(17, 'bma3an@gmail.com', 'saddasdasd', 1, 'img/gravatar.png', 23, '2023-07-02 11:03:48'),
(18, 'bma3an@gmail.com', 'asadsa', 1, 'img/gravatar.jpg', 24, '2023-07-02 11:10:38'),
(19, 'mario@gmail.com', 'sadasd', 4, 'img/gravatar.jpg', 25, '2023-07-02 11:10:56'),
(20, 'mario@gmail.com', 'asdasdasdas', 4, 'img/gravatar.jpg', 26, '2023-07-02 11:11:05'),
(21, 'bma3an@gmail.com', 'jjjjjjjjjjjjjjj\r\n\r\n', 1, 'img/gravatar.png', 24, '2023-07-02 12:29:53'),
(22, 'bma3an@gmail.com', 'dasdad', 1, 'img/gravatar.png', 23, '2023-07-02 13:15:00'),
(23, 'bma3an@gmail.com', 'aa', 1, 'img/gravatar.png', 24, '2023-07-02 13:15:07'),
(24, 'mario@gmail.com', 'aaaaaa', 4, 'gravatar.png', 30, '2023-07-02 13:23:30'),
(47, 'bma3an@gmail.com', 'yes i can.\r\n', 1, 'img/gravatar.png', 42, '2023-07-03 10:28:01'),
(48, 'mario@gmail.com', 'go to steam >> and go to ', 4, 'gravatar.png', 42, '2023-07-03 10:28:33');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `topic`
--

CREATE TABLE `topic` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `category` varchar(200) NOT NULL,
  `body` text NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `user_image` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `topic`
--

INSERT INTO `topic` (`id`, `title`, `category`, `body`, `user_name`, `user_image`, `created_at`) VALUES
(46, 'CS GO', 'Gaming', 'How can you fix a problem (dl3092)?', 'maan', 'gravatar.png', '2023-07-03 11:33:29');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `about` text NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `password`, `about`, `avatar`, `created_at`) VALUES
(1, 'bma3an@gmail.com', 'bma3an@gmail.com', 'bma3an@gmail.com', '$2y$10$UYZm5vV6y0XfNp2.6a9Lse1oLIgy0CxWKp38QlBYTAYVar2kRFDvK', '', 'gravatar.png', '2023-06-29 18:31:19'),
(4, 'mario', 'mario@gmail.com', 'mario@gmail.com', '$2y$10$t2ugHRd6bTsiij5Z6ZkN4.mVel9KhTjl5ZQE0Irq0VQqW2hk0MddS', 'aaaa', 'gravatar.png', '2023-07-01 13:33:03'),
(6, 'maan', 'maan@gmail.com', 'maan@gmail.com', '$2y$10$2ke87lhSfy2aAPUa5iPz5OMLLgEbPpzZIP2vJJsGB6ZzIjI0I/qei', 'aaaaaaaaaaaaaaaa', 'gravatar.png', '2023-07-02 13:42:45');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT voor een tabel `topic`
--
ALTER TABLE `topic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT voor een tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
