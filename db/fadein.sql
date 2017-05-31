-- phpMyAdmin SQL Dump
-- version 4.6.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Czas generowania: 01 Cze 2017, 01:37
-- Wersja serwera: 5.5.51-MariaDB
-- Wersja PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `fadein`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) COLLATE utf8_polish_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_polish_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('002883f6ea7218e24443510f4a180d99a5dd2dd8', '89.239.195.184', 1496224795, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439363232343739353b),
('014500817a74d8222588ef82a590c6785ad58b82', '183.129.160.229', 1496224918, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439363232343931383b),
('05994cafbb17d602b4f7fbde9a30e1b270e39347', '212.83.174.55', 1496214347, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439363231343334373b),
('07e44d40ae3407cb2857e9f82ba31dc9c1100446', '71.6.202.204', 1496213176, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439363231333137363b),
('13035781e2507d14a6fd52932854e4cd84389020', '35.157.64.13', 1496201122, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439363230313132323b),
('2823030fed27014d7181fd55b97550432b9d46d3', '107.182.21.236', 1496172269, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439363137323236393b),
('311982cf298a3cace71454dd3729eaf8b1a04960', '183.129.160.229', 1496224920, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439363232343932303b),
('325cb008f0d93e143879deeaeb13be159ffc866f', '212.83.174.55', 1496246075, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439363234363037353b),
('33ab4da28dfd297c1ec988a2f98fd3ce21fc7622', '207.46.13.157', 1496236708, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439363233363730383b),
('3d93f16a3becacc58cc358cb464b092993b38879', '106.75.95.64', 1496167074, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439363136373037343b),
('4a81c0b7e7e3a9ce00895c23fea3ff227d8b2995', '212.83.174.55', 1496188850, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439363138383835303b),
('4ee16e6e739e173f6135c42c5211a565ac51bd9d', '107.182.21.236', 1496172269, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439363137323236393b),
('5637b4799ee453263c2ec4a85676fb29586e116a', '212.83.174.55', 1496218259, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439363231383235393b),
('59fe3559a55217da4f606fec86e47b41476bf8d1', '212.83.174.55', 1496188817, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439363138383831373b),
('619d6c2f7c2de78d687493ee42f7863dc490f726', '178.154.189.9', 1496242617, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439363234323631373b),
('635b63abae14e18c1b9adfced2350f9d3a481599', '220.175.41.98', 1496168499, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439363136383439393b),
('63f0be53567716805bd8af5aeb59f3d0b83ed4b5', '212.83.174.55', 1496233618, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439363233333631383b),
('72040ec417def579872c332972934ac3e6862523', '207.46.13.157', 1496177237, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439363137373233373b),
('764912456f3e3f7bffab95fd4a22f75f11b8d142', '212.83.174.55', 1496240489, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439363234303438393b),
('814137438a4c982be902d0b78f3dc4cd0cd479f8', '178.154.189.2', 1496185396, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439363138353339363b),
('8d8d0fbab0dd89cb1d86303d16ba3b12bb31e805', '212.83.174.55', 1496218265, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439363231383236353b),
('90097f85b051654c6094eba4c1be44edc7c1a39b', '212.83.174.55', 1496218275, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439363231383237353b),
('98e406f421fd71178b29f0ab1bf73b233197fdef', '106.75.96.186', 1496167086, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439363136373038363b),
('9d5529a1685aad802dd1acbcf7d4451f8ae7f0b9', '212.83.174.55', 1496214315, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439363231343331353b),
('a47ae87f2112380152838dd245b177555ff97f39', '183.129.160.229', 1496224918, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439363232343931383b),
('a6557235852f050d121404c58309997b0416b158', '66.249.65.221', 1496236343, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439363233363334333b),
('b3ab831e6b732ff44616a627614bb3878d6b5f7b', '183.129.160.229', 1496224925, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439363232343932353b),
('b9de0ae8380eda008329aa3546e045268fa2fa4e', '107.182.21.236', 1496172269, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439363137323236393b),
('bc2e098e9eea3dd60c80e12ab0adc400f8306fea', '209.126.136.5', 1496223686, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439363232333638363b),
('c429472b98d968047e3a493f0c0850b013cf79f5', '212.83.174.55', 1496193361, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439363139333336313b),
('c4bdb457da2d8425bb581d5be0108adde1416aca', '212.83.174.55', 1496174929, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439363137343932393b),
('ca3d4b04198f7f10a496c872616a5dabe577a7ed', '212.83.174.55', 1496240666, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439363234303636363b),
('d1c7f1a32703263810b213655c266ebd0f304f5f', '212.83.174.55', 1496214330, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439363231343333303b),
('d1ca747795f0e7d29edcf6059c82a579181e4b8c', '212.83.174.55', 1496178337, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439363137383333373b),
('d2ff08c34a933697705d66c75b76df881035b678', '212.83.174.55', 1496207226, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439363230373232363b),
('d30c1345429bef1581327dd583f673ab0ad298c8', '212.83.174.55', 1496245960, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439363234353936303b),
('d3189b8f89f4653f12e0b7095415cf2a79fa2211', '139.162.124.167', 1496216289, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439363231363238393b),
('d357a6db7db368eb3a1e78515f73a2b6ef790205', '192.168.0.19', 1496248884, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439363234383838343b),
('d57b02b5cf24fa139a0a4ead6b00f0d6440509de', '107.182.21.236', 1496172269, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439363137323236393b),
('da43c0a32586e372358ddb2b3af9ae2cf29a1e13', '207.46.13.157', 1496230363, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439363233303336333b),
('df773094027cc44edde121d7856a4a19e841ede2', '212.83.174.55', 1496218301, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439363231383330313b),
('e2c4c75aaeb8d36d58c413ca9faa0ed1658d5236', '212.83.174.55', 1496178366, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439363137383336363b),
('ef2dbdd127c3e66fc61f82596680242730e646b6', '212.83.174.55', 1496207192, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439363230373139323b),
('f23923e8d2dcf9e7326857739a0c69e03d3c45c0', '106.75.96.186', 1496167067, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439363136373036373b),
('f707c2475e39e8675ead311b32d432ae695b9d77', '183.129.160.229', 1496224932, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439363232343933323b);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `username` varchar(15) COLLATE utf8_polish_ci NOT NULL,
  `password` varchar(130) COLLATE utf8_polish_ci NOT NULL,
  `first_name` varchar(15) COLLATE utf8_polish_ci NOT NULL,
  `last_name` varchar(15) COLLATE utf8_polish_ci NOT NULL,
  `email` varchar(32) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id_user`, `username`, `password`, `first_name`, `last_name`, `email`) VALUES
(8, 'KGROZA', 'a15cdf5114ed254b92f9ad85824bca89ecaec8967891091330030089eb25217496ca933b6cdd5ac6afcd9c20f930697d3adeab2b075cf9d1be318f0927ea1a82', 'Kamil', 'Różański', 'kgrozanski@gmail.com'),
(9, 'Kowalski', '69398554371d64e4580e329f7c137cf101cddce22a9fe8d18c1482ec2fd5dc6ff6a9650965c8b0072ece977e99b32924ca6ed011361c90ca86a8b15e3cd10717', 'Jan', 'Kowalski', 'kowalski@wp.pl'),
(10, 'Paweł', 'f4563e53c378ea054cd700452d6fe12c102a523b2a4afa9450c10a1356fbf84921873cc5d898150af6f90568e3e4fe1aff6d3df5110fc6d66b00b902e1fc5fec', 'Paweł', 'Boroń', 'pawel1234@wp.pl'),
(11, 'rixan', 'af3b529c0772851c3f38457375ebafb1ece8844bc700573789fc2a270a7357cc5bf539619a3b63fd10e36399d9c3f8e4ab678a1ad05dfe5965e6cccc0466d30c', 'Gabriel', 'Janczak', 'janczakgabriel@gmail.com');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`,`ip_address`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
