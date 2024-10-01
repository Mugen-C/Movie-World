
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `posts` (
  `id` varchar(20) NOT NULL,
  `title` varchar(50) NOT NULL,
  `image` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `posts` (`id`, `title`, `image`) VALUES
('h12FAnxY6JoXb51iDpda', 'Across the spiderverse', 'post_1.webp'),
('sRKX0vSREJbBzO07wM1H', 'The dark Knight', 'post_2.webp'),
('G6zDaxTTS0fV5UT4BQ46', 'Dune 2', 'post_3.webp'),
('6zQRsklaYIO38cLIgYZN', 'The boy and heron', 'post_4.webp'),
('mMj2FWPRVWZPsfOsjSUL', 'Invincible', 'post_5.webp'),
('hK2tgabAaK1c1FAak6UW', 'Fallout', 'post_6.webp');



CREATE TABLE `reviews` (
  `id` varchar(20) NOT NULL,
  `post_id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `rating` varchar(1) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `users` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `image` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
COMMIT;
