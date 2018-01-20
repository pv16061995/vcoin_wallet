-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 16, 2018 at 03:07 PM
-- Server version: 5.7.20-0ubuntu0.16.04.1
-- PHP Version: 5.6.32-1+ubuntu16.04.1+deb.sury.org+2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wallet_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `balance`
--

CREATE TABLE `balance` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `curr_id` int(11) NOT NULL,
  `curr_address` varchar(255) NOT NULL,
  `curr_bal` double(25,10) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `balance`
--

INSERT INTO `balance` (`id`, `user_id`, `curr_id`, `curr_address`, `curr_bal`, `created_date`, `updated_date`) VALUES
(3, 1, 1, 'my3SXS6vnxKpPfjhGJWupPsZa4Lzao4xzo', 0.0000000000, '2018-01-13 15:03:05', '0000-00-00 00:00:00'),
(4, 1, 1, 'mj7J56jffGjqEfj7tiyKGnXD9nRj9FJVuC', 0.0000000000, '2018-01-13 15:03:32', '0000-00-00 00:00:00'),
(5, 1, 2, 'mpsdBLeYutuJ6cF2vUUTeFPM54t9SoYyae', 0.0000000000, '2018-01-13 16:02:57', '0000-00-00 00:00:00'),
(6, 1, 2, 'mtonCh9RDMEiby8FY8UVovCfGfowTHceST', 0.0000000000, '2018-01-13 16:04:11', '0000-00-00 00:00:00'),
(7, 1, 2, 'mgGJLT2SY7zErr7CXmwQ9MrxrcuVAYkBgu', 0.0000000000, '2018-01-13 16:04:55', '0000-00-00 00:00:00'),
(8, 1, 2, 'myFVV8WwJ6bQq8a8i8ynoyJB3wgUUnwsNz', 0.0000000000, '2018-01-13 16:05:59', '0000-00-00 00:00:00'),
(9, 1, 5, 'muv9EqtaBxeghRqbBM6MD6b1GEaKfHhRkQ', 0.0000000000, '2018-01-15 18:16:12', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `currency_list`
--

CREATE TABLE `currency_list` (
  `id` int(11) NOT NULL,
  `short_name` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `host` varchar(50) NOT NULL,
  `user` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `port` varchar(50) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currency_list`
--

INSERT INTO `currency_list` (`id`, `short_name`, `name`, `host`, `user`, `pass`, `port`, `status`) VALUES
(1, 'BTC', 'Bitcoin', '162.213.252.66', 'test', 'test123', '18332', 1),
(2, 'LTC', 'LiteCoin', '162.213.252.66', 'test', 'test123', '18332', 0),
(3, 'INR', 'Indian Rupee', '162.213.252.66', 'test', 'test123', '18332', 0),
(4, 'Aux', 'American', '162.213.252.66', 'test', 'test123', '18332', 0),
(5, 'VCN', 'V-Coin', '162.213.252.66', 'test', 'test123', '18332', 1);

-- --------------------------------------------------------

--
-- Table structure for table `fee_charges`
--

CREATE TABLE `fee_charges` (
  `id` int(11) NOT NULL,
  `min_amt` int(11) NOT NULL,
  `max_amt` int(11) NOT NULL,
  `charge` double(25,10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fee_charges`
--

INSERT INTO `fee_charges` (`id`, `min_amt`, `max_amt`, `charge`) VALUES
(1, 0, 100, 0.0100000000),
(2, 101, 1000, 0.0500000000),
(3, 1001, 100000, 0.1000000000);

-- --------------------------------------------------------

--
-- Table structure for table `login_detail`
--

CREATE TABLE `login_detail` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_detail`
--

INSERT INTO `login_detail` (`id`, `user_id`, `ip_address`, `created_date`) VALUES
(1, 1, '::1', '2018-01-15 15:48:15'),
(2, 1, '::1', '2018-01-15 16:00:14'),
(3, 1, '::1', '2018-01-15 16:06:37'),
(4, 1, '::1', '2018-01-15 16:07:16'),
(5, 1, '::1', '2018-01-15 16:37:05'),
(6, 1, '::1', '2018-01-15 18:04:01'),
(7, 1, '::1', '2018-01-15 21:25:42'),
(8, 1, '::1', '2018-01-15 22:59:18'),
(9, 1, '::1', '2018-01-16 10:23:39'),
(10, 1, '::1', '2018-01-16 10:51:52'),
(11, 1, '::1', '2018-01-16 11:33:57'),
(12, 1, '::1', '2018-01-16 12:43:52');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `Curr_id` int(11) NOT NULL,
  `trans_address` varchar(100) NOT NULL,
  `amount` double(25,10) NOT NULL,
  `fee` double(25,10) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `ip_address` varchar(10) NOT NULL,
  `pin` varchar(100) NOT NULL,
  `tfa_status` tinyint(4) NOT NULL DEFAULT '0',
  `tfa_key` varchar(100) NOT NULL,
  `email_verify_status` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `kyc_status` tinyint(4) NOT NULL DEFAULT '0',
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` datetime NOT NULL,
  `last_login` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `ip_address`, `pin`, `tfa_status`, `tfa_key`, `email_verify_status`, `status`, `kyc_status`, `created_date`, `updated_date`, `last_login`) VALUES
(1, 'Prateek Verma', 'pv16061995@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '::1', '7c4a8d09ca3762af61e59520943dc26494f8941b', 0, 'EKDLKGLR2UPCJOZG', 1, 1, 0, '2018-01-15 17:15:06', '0000-00-00 00:00:00', '2018-01-16 12:43:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `balance`
--
ALTER TABLE `balance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency_list`
--
ALTER TABLE `currency_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fee_charges`
--
ALTER TABLE `fee_charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_detail`
--
ALTER TABLE `login_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `balance`
--
ALTER TABLE `balance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `currency_list`
--
ALTER TABLE `currency_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `fee_charges`
--
ALTER TABLE `fee_charges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `login_detail`
--
ALTER TABLE `login_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
