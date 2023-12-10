-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2023 at 05:52 PM
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
-- Database: `be20_cr6_bigeventsbryancucho`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `events_name` varchar(255) NOT NULL,
  `events_datetime` datetime NOT NULL,
  `events_description` varchar(255) NOT NULL,
  `events_image` varchar(255) DEFAULT NULL,
  `events_capacity` int(11) NOT NULL,
  `events_email` varchar(255) NOT NULL,
  `events_phonenumber` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `events_url` varchar(255) NOT NULL,
  `events_type` varchar(255) NOT NULL,
  `fk_status_id` int(11) DEFAULT NULL,
  `street_name` varchar(255) NOT NULL,
  `street_number` int(11) NOT NULL,
  `zip_code` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `events_name`, `events_datetime`, `events_description`, `events_image`, `events_capacity`, `events_email`, `events_phonenumber`, `location`, `events_url`, `events_type`, `fk_status_id`, `street_name`, `street_number`, `zip_code`, `city`) VALUES
(2, 'Vienna Symphony', '2023-12-10 19:00:00', 'A classical music concert by the renowned Vienna Symphony orchestra.', 'symphony-6575dc349a67c.jpg', 2000, 'info@viennasymphony.at', '+4315123456', 'Musikverein', 'www.viennasymphony.at', 'Music', 1, 'Musikvereinsplatz', 1, '1010', 'Vienna'),
(3, 'Christmas Market', '2023-12-15 10:00:00', 'Traditional Christmas market with crafts, food, and drinks.', 'Christmas-market-6575dc1755ddf.jpg', 5000, 'info@christmasmarket.at', '+4315234567', 'Rathausplatz', 'www.christmasmarket.at', 'Leisure', 1, 'Rathausplatz', 8, '1010', 'Salzburg'),
(4, 'New Year\'s Eve Ball', '2023-12-31 20:00:00', 'A grand ball to celebrate New Year\'s Eve.', 'NewYear-6575dbffde347.jpg', 1500, 'info@newyearseveball.at', '+4315345678', 'Hofburg Palace', 'www.newyearseveball.at', 'Festival', 1, 'Michaelerkuppel', 22, '1010', 'Innsbruck'),
(5, 'Vienna Opera', '2023-12-20 19:00:00', 'A performance of Mozart\'s The Magic Flute.', 'Opera-6575db73a89dc.jpg', 1700, 'info@viennaopera.at', '+4315456789', 'Wiener Staatsoper', 'www.viennaopera.at', 'Music', 1, 'Opernring', 2, '1010', 'St. Polten'),
(6, 'Art Exhibition', '2023-12-01 10:00:00', 'An exhibition featuring contemporary Austrian artists.', 'art-6575dbafd4c2a.jpg', 500, 'info@artexhibition.at', '+4315567890', 'Albertina', 'www.artexhibition.at', 'Educational', 1, 'Albertinaplatz', 1, '1010', 'Vienna'),
(7, 'Wine Tasting', '2023-12-05 18:00:00', 'A tasting event featuring wines from local vineyards.', 'winetasting-6575dbda8a917.jpg', 100, 'info@winetasting.at', '+4315678901', 'Weingut am Reisenberg', 'www.winetasting.at', 'Educational', 1, 'Oberer Reisenbergweg', 7, '1190', 'Salzburg'),
(8, 'Book Fair', '2023-12-12 10:00:00', 'A fair showcasing books from various genres and authors.', 'Bookfair-6575dc4f3342c.jpg', 3000, 'info@bookfair.at', '+4315789012', 'Messe Wien', 'www.bookfair.at', 'Educational', 2, 'Messeplatz', 1, '1021', 'Vienna'),
(9, 'Film Festival', '2023-12-16 16:00:00', 'A festival screening films from around the world.', 'filmfestival-6575dc670bd33.jpg', 1500, 'info@filmfestival.at', '+4315890123', 'Gartenbaukino', 'www.filmfestival.at', 'Festival', 2, 'Parkring', 12, '1010', 'Vienna'),
(10, 'Food Festival', '2023-12-22 11:00:00', 'A festival celebrating Austrian cuisine.', 'foodfestival-6575dc800701c.jpg', 4000, 'info@foodfestival.at', '+4315901234', 'Prater', 'www.foodfestival.at', 'Festival', 1, 'Prater', 5, '1020', 'Vienna'),
(11, 'Fashion Show', '2023-12-07 20:00:00', 'A show featuring designs from top Austrian fashion designers.', 'fashionshow-6575dc98f2b93.jpg', 800, 'info@fashionshow.at', '+4315012345', 'MuseumsQuartier', 'www.fashionshow.at', 'Educational', 1, 'Museumsplatz', 9, '1070', 'Vienna'),
(12, 'Charity Run', '2023-12-09 09:00:00', 'A charity run to raise funds for a local charity.', 'charity-run-6575dcae66db7.jpg', 5000, 'info@charityrun.at', '+4315123456', 'Prater Hauptalle', 'www.charityrun.at', 'Sports', 1, 'Prater', 20, '1020', 'Vienna'),
(13, 'Theater Play', '2023-12-14 19:00:00', 'A performance of Shakespeare\'s Romeo and Juliet.', 'theater-6575dcc13f1b3.jpg', 700, 'info@theaterplay.at', '+4315234567', 'Burgtheater', 'www.theaterplay.at', 'Leisure', 1, 'Universitätsring', 2, '1010', 'Vienna'),
(14, 'Photography Workshop', '2023-12-02 10:00:00', 'A workshop teaching the basics of photography.', 'photography-6575dcdba0ac1.jpg', 20, 'info@photographyworkshop.at', '+4315345678', 'WestLicht', 'www.photographyworkshop.at', 'Educational', 1, 'Westbahnstrasse', 40, '1070', 'Salzburg'),
(15, 'Music Festival', '2023-12-18 12:00:00', 'A festival featuring live performances from various music genres.', 'musicFestival-6575dcf458956.jpg', 5000, 'info@musicfestival.at', '+4315456789', 'Donauinsel', 'www.musicfestival.at', 'Music', 1, 'Donau', 3, '1220', 'Innsbruck'),
(16, 'Comedy Show', '2023-12-21 20:00:00', 'A stand-up comedy show featuring local comedians.', 'comedyShow-6575dd0b27532.jpg', 300, 'info@comedyshow.at', '+4315567890', 'Kabarett Simpl', 'www.comedyshow.at', 'Leisure', 1, 'Wollzeille', 36, '1010', 'Innsbruck'),
(17, 'test event', '2023-12-07 11:49:00', 'very very nice!', 'Christmas-market-6575dd2f4ddec.jpg', 100, 'test@gmail.com', '+436601138845', 'test', 'www.test.events.com', 'Music', 1, 'Gurtel', 3, '1010', 'Salzburg');

-- --------------------------------------------------------

--
-- Table structure for table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `name`) VALUES
(1, 'Available'),
(2, 'Sold Out');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_5387574AAAED72D` (`fk_status_id`);

--
-- Indexes for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `FK_5387574AAAED72D` FOREIGN KEY (`fk_status_id`) REFERENCES `status` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
