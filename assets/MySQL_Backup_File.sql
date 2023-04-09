-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:4306
-- Generation Time: Apr 09, 2023 at 07:08 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `guvi`
--
CREATE DATABASE IF NOT EXISTS `guvi` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `guvi`;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `name`, `email`, `password`) VALUES
(1, 'sanjay', 'sanjay457510@gmail.com', '$2y$10$3KziXyRzrxF/m.tWVbRQBemsahhLG8v.QDuAF8XfYZfqGuP1sGaP6'),
(2, 'rakesh', 'rakesh@gmail.com', '$2y$10$2ZYZNMhkkzfpN3BeoQkKeufZUEgRwJaGmAs67C7SgwqdMpTb5JTN2'),
(3, 'bharath', 'bharath@gmail.com', '$2y$10$gowYR9aHhBmI2QC03r9bvOQYVektH.s9.6ybwdirgBSsYg1NT3MbW'),
(4, 'John', 'john@gmail.com', '$2y$10$JSv75KD8SJ1f1knHBOA48.2oBPQZPpxXHcv2XJkwcEFrnwEnddKBq'),
(5, 'karthick', 'karthick@gmail.com', '$2y$10$bpfNW1LvZV3LJQJsgj8DSuF2ik0MIcWgNmiXjbQfWU9MMMOe458oK'),
(6, 'Ramesh', 'ramesh@gmail.com', '$2y$10$/we.1Z3pOfiZaLMb4Z8YrO2ctoNx8sAt8rOqzcz.oUS9TrGxCfoSK'),
(7, 'Shanker', 'shanker@gmail.com', '$2y$10$iwtFqiBBoxkNicn8MwafKedYjM2YhY1U.YXVxknA5/Y3rwRh0ojw.'),
(8, 'Suresh', 'suresh@gmail.com', '$2y$10$eEQ7RsrgFk3GwPM3xbxqUe7efBn5nuXdmnVQp4TTs1vOFjYXXEyVO');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Database: `library`
--
CREATE DATABASE IF NOT EXISTS `library` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `library`;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `name` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `publisher` varchar(255) NOT NULL,
  `edition` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`name`, `author`, `publisher`, `edition`, `price`, `category`) VALUES
('Think and Grow Rich', 'Nepolien Hill', 'UNI', 'First Edition', 499, 'Motivation'),
('demo', '', '', '', 0, ''),
('nice', '', '', '', 0, ''),
('great', '', '', '', 0, ''),
('great', '', '', '', 0, ''),
('de', '', '', '', 0, ''),
('', '', '', '', 0, ''),
('', '', '', '', 0, '');
--
-- Database: `lms_db`
--
CREATE DATABASE IF NOT EXISTS `lms_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `lms_db`;

-- --------------------------------------------------------

--
-- Table structure for table `book_details`
--

CREATE TABLE `book_details` (
  `book_name` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `publisher` varchar(255) NOT NULL,
  `edition` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Database: `myresume`
--
CREATE DATABASE IF NOT EXISTS `myresume` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `myresume`;

-- --------------------------------------------------------

--
-- Table structure for table `usertab`
--

CREATE TABLE `usertab` (
  `userid` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `pswd` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usertab`
--

INSERT INTO `usertab` (`userid`, `username`, `fullname`, `pswd`) VALUES
(1, 'saho', 'sanjay', '123456'),
(2, 'santhosh', 'DV', '123456'),
(3, 's', 'san', 's'),
(4, 'sanjay', 'sanjay', '123'),
(5, 'ratz', 'rathish', '123456'),
(6, 'akila123', 'akila', '123456'),
(7, 'sanjay123', 'sanjay', '123456'),
(8, 'sanjay369', 'sanjay', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `usertab`
--
ALTER TABLE `usertab`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `userid` (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `usertab`
--
ALTER TABLE `usertab`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"library\",\"table\":\"books\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-10-02 14:05:17', '{\"Console\\/Mode\":\"collapse\",\"NavigationWidth\":0}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `rec`
--
CREATE DATABASE IF NOT EXISTS `rec` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `rec`;

-- --------------------------------------------------------

--
-- Table structure for table `empdetails`
--

CREATE TABLE `empdetails` (
  `empid` int(11) NOT NULL,
  `ename` varchar(20) DEFAULT NULL,
  `desig` varchar(20) DEFAULT NULL,
  `dept` varchar(20) DEFAULT NULL,
  `doj` date DEFAULT NULL,
  `salary` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `empdetails`
--

INSERT INTO `empdetails` (`empid`, `ename`, `desig`, `dept`, `doj`, `salary`) VALUES
(12, 'sanjay', 'student', 'cse', '2002-09-12', 20000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `empdetails`
--
ALTER TABLE `empdetails`
  ADD PRIMARY KEY (`empid`);
--
-- Database: `recafe`
--
CREATE DATABASE IF NOT EXISTS `recafe` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `recafe`;

-- --------------------------------------------------------

--
-- Table structure for table `deliverperson`
--

CREATE TABLE `deliverperson` (
  `employeeId` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `about` varchar(500) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `itemId` int(11) NOT NULL,
  `itemName` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`itemId`, `itemName`, `price`) VALUES
(1, 'Idli', 20),
(2, 'Dosa', 70),
(3, 'Ven Pongal', 120),
(4, 'Fried Rice', 200),
(5, 'Meal', 100),
(6, 'Biriyani', 250),
(7, 'Chapathi', 30),
(8, 'Upma', 90),
(9, 'Appam', 70);

-- --------------------------------------------------------

--
-- Table structure for table `mappingorders`
--

CREATE TABLE `mappingorders` (
  `orderId` int(11) NOT NULL,
  `itemId` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `orderedTime` datetime NOT NULL,
  `deliveryTime` time NOT NULL,
  `fromDate` date NOT NULL,
  `toDate` date NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `todayorders`
--

CREATE TABLE `todayorders` (
  `oderId` int(11) NOT NULL,
  `deliveryPersonId` int(11) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userId` int(11) NOT NULL,
  `userName` varchar(50) NOT NULL,
  `address` varchar(300) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userId`, `userName`, `address`, `phone`, `email`, `password`) VALUES
(1, 'shrish', 'undefined', '1234567890', 'mynameisshrish@gmail.com', 'qweasd'),
(2, 'shrish', 'undefined', '1234567890', 'mynameisshrish@gmail.com', 'qweasd'),
(3, 'shrish', 'undefined', '1234512344', 'mynameisshrish@gmail.com', 'zxcasd'),
(4, 'shrish', 'undefined', '1234512344', 'mynameisshrish@gmail.com', 'zxcasd'),
(5, 'shrish', 'undefined', '1234567890', 'mynameisshrish@gmail.com', 'asdzxc'),
(6, 'shrish', 'undefined', '1234567890', 'mynameisshrish@gmail.com', 'asdzxc'),
(7, 'shrish', 'undefined', '8940410946', 'admintest2@gmail.com', 'asdzxc'),
(8, 'sdd', 'undefined', '1234567890', 'mynameisshrish@gmail.com', 'asd'),
(9, 'sanjay', 'undefined', '8940410946', 'mynameissanja@gmail.com]', 'asdzxc'),
(10, 'rakay', 'undefined', '1234567789', 'rajay@gmail.com', '$2b$10$..FZvfvW3/81Z0nCgTukpOtvp1lA13GxdahjqksCzKQiXpI8.R37W');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `deliverperson`
--
ALTER TABLE `deliverperson`
  ADD PRIMARY KEY (`employeeId`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`itemId`),
  ADD UNIQUE KEY `itemId` (`itemId`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `deliverperson`
--
ALTER TABLE `deliverperson`
  MODIFY `employeeId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `itemId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Database: `tamilmovies`
--
CREATE DATABASE IF NOT EXISTS `tamilmovies` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `tamilmovies`;

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `name` text NOT NULL,
  `storyline` text NOT NULL,
  `directors` text NOT NULL,
  `writers` text NOT NULL,
  `productionCompany` text NOT NULL,
  `rating` text NOT NULL,
  `releaseDate` text NOT NULL,
  `stars` text NOT NULL,
  `length` text NOT NULL,
  `genre` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`name`, `storyline`, `directors`, `writers`, `productionCompany`, `rating`, `releaseDate`, `stars`, `length`, `genre`) VALUES
('விஸ்வரூபம்', 'நியூயார்க்கில் உள்ள கதக் நடன ஆசிரியரான விஸ்வநாதன், நியூக்ளியர் ஆன்காலஜிஸ்ட் நிருபமாவுடன் மகிழ்ச்சியான திருமணத்தில் இருக்கிறார். அவள் கணவனைக் கண்காணிக்க ஒரு துப்பறியும் நபரை நியமிக்கிறாள், அவர் விஸ்வநாதனின் உண்மையான அடையாளத்தை வெளிப்படுத்தும் ஒரு தவறான இடத்தில் முடிவடைகிறார். -சரத் சந்திரா', 'கமல்ஹாசன்', 'எச். பானர்ஜி (வசனங்கள்) கமல்ஹாசன் அதுல் திவாரி (உரையாடல்)', 'ராஜ்கமல் பிலிம்ஸ் இன்டர்நேஷனல் பிவிபி சினிமா', '7.9', 'ஜனவரி 25, 2013 (இந்தியா)', 'பூஜா குமார் மைல்ஸ் ஆண்டர்சன் கமல்ஹாசன்', '2 மணி 28 நிமிடங்கள்', 'ஆக்‌ஷன் த்ரில்லர்'),
('உத்தம வில்லன்', 'மனோரஞ்சன் (கமல்ஹாசன்) ஒரு சூப்பர் ஸ்டார், அவர் மூளைக் கட்டியால் தனது இறுதி நாட்களை எண்ணிக் கொண்டிருப்பதை உணர்ந்தார். எனவே அவர் திடீரென்று ஒரு தயாரிப்பாளரிடமிருந்து வாங்கிய முன்பணத்தை திருப்பித் தர முடிவு செய்கிறார், அதற்குப் பதிலாக அவர் தனது குருவும் குருவுமான மார்கதர்சியை (கே பாலச்சந்தர்) தனது இறுதி விருப்பமாக நகைச்சுவைப் படம் செய்ய விரும்புகிறார். இது அவரது குடும்பத்தினர் மற்றும் மேலாளர் உட்பட அனைவருக்கும் அதிர்ச்சியை ஏற்படுத்தும் பெரிய செய்தி. மனோரஞ்சன் அதை எப்படிச் செல்கிறார் என்பது கதையின் மீதியை உருவாக்குகிறது. -சூர்ய குமார்', 'ரமேஷ் அரவிந்த்', 'கமல்ஹாசன் (கதை மற்றும் திரைக்கதை) கிரேசி மோகன் (உரையாடல்)', 'ராஜ்கமல் பிலிம்ஸ் இன்டர்நேஷனல் திருப்பதி பிரதர்ஸ்', '7.3', 'மே 2, 2015 (இந்தியா)', 'கமல்ஹாசன் கே. பாலச்சந்தர் கே. விஸ்வநாத்', 'தமிழ் தெலுங்கு', 'நகைச்சுவை நாடகம்'),
('விஸ்வாசம்', 'தூக்கு துரை ஒரு கவர்ச்சியான கிராமத் தலைவர் ஆவார், அவர் தனது சொந்த ஊரில் உள்ள சச்சரவுகளைத் தீர்த்து வைப்பார், அவர் தனது எதிரிகளின் இதயத்தில் பயத்தைத் தூண்டுகிறார். நிரஞ்சனாவின் பகையால் கலங்கி, அவரது மனைவி தங்கள் மகள் ஸ்வேதாவை அழைத்துச் சென்று அவரை விட்டுச் செல்கிறார், இது அவரது வாழ்க்கையை மாற்றுகிறது. - சந்தோஷ்', 'சிவா', 'சிவா(கதை) ஜி. ஆதி நாராயண(கதை)மணிகண்டன் கே.(உரையாடல்)', 'சத்ய ஜோதி பிலிம்ஸ் கோல்ட்மைன்ஸ் டெலிஃபிலிம்ஸ்', '6.5', 'ஜனவரி 10, 2019 (அமெரிக்கா)', 'அஜித் குமார் நயன்தாரா ஜெகபதி பாபு', 'தமிழ்', 'அதிரடி நாடகம்'),
('தனி ஒருவன்', 'தொழிலதிபர்கள் மற்றும் அரசியல்வாதிகள் மலிவான மருந்துகள் கிடைப்பதை மறுப்பதன் மூலம் தேசத்தை சீரழித்து வருவதால் விரக்தியடைந்த ஐபிஎஸ் அதிகாரி மித்ரன், இந்த மருந்து மாஃபியாவின் தலைவரைக் கண்டுபிடிக்கும் முயற்சியில் ஈடுபட்டுள்ளார். ஆனால் இறுதி வில்லன், சித்தார்த் அபிமன்யு, ஒரு அலங்கரிக்கப்பட்ட விஞ்ஞானியும் ஒரு இரக்கமற்ற மற்றும் அடக்க முடியாத எதிரி என்பதை நிரூபிக்கிறார். —PipingHotViews', 'மோகன் ராஜா', 'மோகன்ராஜா(கதை) டி. சுரேஷ் (திரைக்கதை) ஏ.என். பாலகிருஷ்ணன் (திரைக்கதை)', 'ஏஜிஎஸ் என்டர்டெயின்மென்ட் கோல்ட்மைன்ஸ் டெலிஃபிலிம்ஸ்', '8.4', 'ஆகஸ்ட் 28, 2015 (அமெரிக்கா)', 'ஜெயம் ரவிஅரவிந்த் சுவாமி நயன்தாரா', 'அதிகாரப்பூர்வ பேஸ்புக்', 'ஒன்றின் சக்தி.'),
('விவேகம்', 'உலக ஒழுங்கை சீர்குலைப்பதற்காக பயங்கரவாதிகளால் திருடப்பட்ட கொடிய புளூட்டோனியம் ஆயுதங்களுக்கான வெடிக்கும் குறியீடுகளை மீட்டெடுக்கும் ஒரு பிரபலமான இரகசிய நடவடிக்கை நிபுணர் அஜய் குமாருக்கு அதிக ஆபத்துள்ள பணி ஒதுக்கப்பட்டுள்ளது. தனது ஒப்பற்ற திறமைகளைப் பயன்படுத்திய பிறகு, அவர் தனது பணியை வெற்றிகரமாக முடிக்கும் விளிம்பில் இருப்பதைக் காண்கிறார், அவர் கனவில் கூட நினைத்துப் பார்க்காத துரோகச் செயல்களால் அதிர்ச்சியடைகிறார். பின்னர் அவர் உயிர்வாழ்வதற்காக அவருக்கு எதிராக அடுக்கப்பட்ட பெரும் முரண்பாடுகளை சமாளிக்க விடப்படுகிறார். —PipingHotViews', 'சிவா', 'சிவா (திரைக்கதை) கௌதம் சித்தார்த் (இந்தி வசனம்)', 'சத்ய ஜோதி பிலிம்ஸ் கோல்ட்மைன்ஸ் டெலிஃபிலிம்ஸ்', '5.2', 'ஆகஸ்ட் 25, 2017 (அமெரிக்கா)', 'அஜித் குமார் விவேக் ஓபராய் காஜல் அகர்வால்', '2 மணி 29 நிமிடங்கள்', 'ஆக்‌ஷன் த்ரில்லர்'),
('கே.ஜி.எஃப்: அத்தியாயம் 2', 'கோலார் கோல்ட் ஃபீல்ட்ஸ் (KGF) என்ற இரத்தத்தில் நனைந்த நிலத்திற்கு இப்போது ஒரு புதிய அதிபதி இருக்கிறார் - ராக்கி, அவரது பெயர் எதிரிகளின் இதயத்தில் பயத்தை ஏற்படுத்துகிறது. அவரது கூட்டாளிகள் ராக்கியை தங்கள் மீட்பராக பார்க்கிறார்கள், அரசாங்கம் அவரை சட்டம் மற்றும் ஒழுங்குக்கு அச்சுறுத்தலாக பார்க்கிறது; எதிரிகள் பழிவாங்குவதற்காக கூச்சலிடுகிறார்கள் மற்றும் அவரது வீழ்ச்சிக்கு சதி செய்கிறார்கள். சவாலற்ற மேலாதிக்கத்திற்கான தனது தேடலை ராக்கி தொடர்ந்து மேற்கொள்ளும் போது இரத்தம் தோய்ந்த போர்களும் இருண்ட நாட்களும் காத்திருக்கின்றன.', 'பிரசாந்த் நீல்', 'பிரசாந்த் நீல் (உரையாடல்)', 'ஹோம்பலே திரைப்படங்கள்', '8.4', 'ஏப்ரல் 13, 2022 (அமெரிக்கா)', 'யாஷ்சஞ்சய் தத் ரவீனா டாண்டன்', 'அதிகாரப்பூர்வ பேஸ்புக் அதிகாரப்பூர்வ தளம்', 'மிகவும் எதிர்பார்க்கப்பட்ட திரைப்படம்'),
('கே.ஜி.எஃப்: அத்தியாயம் 1', 'இத்திரைப்படம் 1951ஆம் ஆண்டைச் சேர்ந்தது. இங்கு இரண்டு சம்பவங்கள் நடைபெறுகின்றன; கோலார் தங்க வயல்களில் (K.G.F) நாயகனும் பிறரும் பிறந்தால் தங்கம் கிடைக்கும். ஹீரோ வறுமையில் வளர்க்கப்படுகிறார். அவர் மிகவும் இளமையாக இருக்கும் போது அவர் ஒரு மாஃபியா டான் ஆக மும்பை செல்கிறார். தன் மகனை பணக்காரனாகவும், சக்தி வாய்ந்தவனாகவும் பார்க்க வேண்டும் என்பதே அவனது தாயின் விருப்பம். சிறிது காலம் மும்பையில் இருந்த அவர் மீண்டும் திரும்பினார். அவர் டான் ஆக முடியுமா? பழங்கால அடிமைத்தனத்திலிருந்து தம் மக்களை விடுவிப்பாரா? படத்தின் கதைக்களத்தை உருவாக்குகிறதா? -அரவிந்த் என்.சி', 'பிரசாந்த் நீல்', 'எம் சந்திரமௌலி சிவகோபால் கிருஷ்ணா (இந்தி உரையாடல்) பிரசாந்த் நீல்', 'ஹோம்பலே திரைப்படங்கள்', '8.2', 'டிசம்பர் 20, 2018 (அமெரிக்கா)', 'யாஷ்ஸ்ரீநிதி ஷெட்டி ராமச்சந்திர ராஜு', 'அதிகாரப்பூர்வ பேஸ்புக்', 'மும்பையின் தெருக்களில் இருந்து... கோலார் வயல்களின் இரத்தம் தோய்ந்த தங்கச் சுரங்கங்கள் வரை'),
('96', 'இரண்டு உயர்நிலைப் பள்ளி அன்பர்கள் 22 ஆண்டுகளுக்குப் பிறகு மீண்டும் ஒரு சந்திப்பில் சந்தித்து தங்கள் கடந்த காலத்தை நினைவு கூர்ந்தனர்.', 'சி.பிரேம் குமார்', 'சாரு குப்தா (இந்தி உரையாடல்) சி. பிரேம் குமார்', 'கோல்ட்மைன்ஸ் டெலிஃபிலிம்ஸ் மெட்ராஸ் எண்டர்பிரைசஸ்', '8.5', 'அக்டோபர் 3, 2018 (அமெரிக்கா)', 'விஜய் சேதுபதி ஆதித்யா பாஸ்கர் த்ரிஷா கிருஷ்ணன்', '2 மணி 38 நிமிடங்கள்', 'நாடகக் காதல்'),
('கர்ணன்', 'கர்ணன் என்ற அச்சமற்ற கிராமத்து இளைஞன், ஒரு போலீஸ் அதிகாரி கொடுத்த சித்திரவதையால், தன் கிராமத்தின் பழமைவாத மக்களின் உரிமைகளுக்காகப் போராட வேண்டும்.', 'மாரி செல்வராஜ்', 'மாரி செல்வராஜ்', 'வி. கிரியேஷன்ஸ்விவி தயாரிப்பு', '8.0', 'ஏப்ரல் 9, 2021 (இந்தியா)', 'தனுஷ்லால் ரஜிஷா விஜயன்', 'தமிழ்', 'அதிரடி நாடகம்'),
('ஈஸ்வரன்', 'ஈஸ்வரன் பெரியசாமியின் கதையைச் சொல்கிறார், அவரது எளிமையான மற்றும் மகிழ்ச்சியான வாழ்க்கை உள் குடும்பச் சண்டைகளுடன் ஒரு கனவாக மாறுகிறது.', 'சுசீந்திரன்', 'சுசீந்திரன்', 'டி கம்பெனிமாதவ் மீடியா', '4.3', 'ஜனவரி 14, 2021 (இந்தியா)', 'சிலம்பரசன் ராஜேந்தர் பாரதிராஜாநிதி அகர்வால்', 'தமிழ்', 'அதிரடி நாடகம்'),
('சர்ப்பட்ட பரம்பரை', '1970 களின் பின்னணியில் எடுக்கப்பட்ட ஒரு விளையாட்டு நாடகத் திரைப்படம், வடசென்னையில் உள்ள சர்ப்பட்ட பரம்பரை மற்றும் இடியப்ப பரம்பரை ஆகிய இரு குலங்களுக்கிடையேயான மோதலைச் சுற்றி வருகிறது, இது உள்ளூர் குத்துச்சண்டை கலாச்சாரத்தையும் அதில் உள்ள அரசியலையும் காட்டுகிறது.', 'பா.ரஞ்சித்', 'தமிழ் பிரபா (திரைக்கதை) பா. ரஞ்சித் (திரைக்கதை)', 'கே9 ஸ்டுடியோஸ் நீலம் புரொடக்ஷன்ஸ்', '8.5', 'ஜூலை 22, 2021 (அமெரிக்கா)', 'ஆர்யபசுபதி ஜான் கொக்கன்', '2 மணி 53 நிமிடங்கள்', 'ஆக்ஷன் டிராமாஸ்போர்ட்'),
('மகான்', 'இது ஒரு சாதாரண மனிதனின் முழு வாழ்க்கையையும், அவனைச் சுற்றியுள்ள அனைத்து மக்களையும் மாற்றும் தொடர்ச்சியான நிகழ்வுகளின் கதை. மகான் படத்தில் பாபி சிம்ஹா மற்றும் சிம்ரன் முக்கிய வேடங்களில் விக்ரம் மற்றும் துருவ் விக்ரம் ஆகியோர் நிஜ வாழ்க்கையின் தந்தை-மகன் இரட்டையர்களாக முதல் முறையாக இணைந்து நடித்துள்ளனர். தனிமனித சுதந்திரத்திற்கான தேடலில் கருத்தியல் வாழ்க்கைப் பாதையில் இருந்து விலகிச் செல்லும் போது குடும்பம் அவரை விட்டு வெளியேறும் ஒரு மனிதனின் கதை இது. இருப்பினும், அவர் தனது லட்சியங்களை உணர்ந்ததால், அவர் தனது வாழ்க்கையில் தனது மகனின் இருப்பை இழக்கிறார். பில்லியனர் ஆக வேண்டும் என்ற தனது கனவை நனவாக்கிய நிலையில், வாழ்க்கை அவருக்கு தந்தையாகும் வாய்ப்பை வழங்குகிறதா? இந்த பரபரப்பான, அதிரடியான பயணத்தில் எதிர்பாராத தொடர் நிகழ்வுகளின் வழியாக அவனது வாழ்க்கை எப்படி செல்கிறது என்பதே இந்தக் கதை.', 'கார்த்திக் சுப்புராஜ்', 'கார்த்திக் சுப்புராஜ்', 'ஏழு திரை ஸ்டுடியோக்கள்', '7.6', 'பிப்ரவரி 10, 2022 (அமெரிக்கா)', 'விக்ரம் சிம்ரன் துருவ் விக்ரம்', 'பிரைம் வீடியோவில் பார்க்கவும்', 'ஒரு கார்த்திக் சுப்பராஜ் படம்'),
('பொன்னியின் செல்வன்: பகுதி I', 'இந்த தலைப்பு வரலாற்று புனைகதை வகையின் கீழ் வருகிறது. கி.பி. 900க்கும் 950க்கும் இடைப்பட்ட சோழர் ஆட்சியின் போது நடந்த அதிகாரப் போட்டி பற்றி கல்கி கிருஷ்ணமூர்த்தி எழுதிய கதை இது. கதைக்களத்தின் மூன்று முக்கிய புள்ளிகள் மன்னன் சுந்தர சோழன் மற்றும் அவனது மகன்கள் ஆதித்த கரிகாலன் மற்றும் அருண்மொழிவர்மன் (பின்னர் இராஜராஜ சோழனாக ஆட்சி செய்தவர்). முக்கிய கதாபாத்திரங்களுக்கும் அவர்களைச் சுற்றியுள்ளவர்களுக்கும் இடையிலான சதிகளும் அதிகாரத்திற்கான போராட்டமும் இந்த கதையின் அடிப்படையை உருவாக்குகின்றன.', 'மணிரத்னம்', 'மணிரத்னம் (திரைக்கதை) ஜெயமோகன் (திரைக்கதை) குமாரவேல் (திரைக்கதை)', 'லைகா புரொடக்ஷன்ஸ் மெட்ராஸ் டாக்கீஸ்', '8.0', 'செப்டம்பர் 30, 2022 (இந்தியா)', 'விக்ரம் கார்த்தி ஜெயம் ரவி', '2 மணி 47 நிமிடங்கள்', 'ஆக்‌ஷன் டிராமா குடும்ப ஃபேண்டஸி வரலாறு'),
('சிங்கம் 3', 'முன்னுரையைத் தொடர்ந்து, கமிஷனரின் மரணத்தை விசாரிக்க துரைசிங்கம் மங்களூருக்கு மாற்றப்படுகிறார். அந்த செயல்பாட்டில் அவர் ஆஸ்திரேலிய நச்சு கழிவுகளை கையாளும் மாஃபியாவுடன் தொடர்பு கொள்கிறார். மேலும் இதில் ஆஸ்திரேலிய மாஃபியா ஈடுபட்டிருப்பதை துரைசிங்கம் கண்டுபிடித்தார். துரைசிங்கம் பல வேலை அழுத்தங்களையும் அரசியல் அழுத்தங்களையும் எதிர்கொண்டாலும் குற்றவாளியை எப்படிப் பிடிக்கிறார் என்பதே மீதிக்கதை -கிருஷ்ண வம்சி.', 'ஹரிபி.எச். குமணன் (இணை இயக்குனர்)', 'ஹரி', 'அட்னா ஆர்ட்ஸ் பென் மூவிஸ்ஸ்டுடியோ கிரீன்', '6.0', 'பிப்ரவரி 9, 2017 (அமெரிக்கா)', 'சூர்யா அனுஷ்கா ஷெட்டி ஸ்ருதி ஹாசன்', 'அதிகாரப்பூர்வ பேஸ்புக் அதிகாரப்பூர்வ ட்விட்டர்', 'யுனிவர்சல் காப்'),
('பாரிஸ் ஜெயராஜ்', 'மகிழ்ச்சியான இளைஞரான ஜெயராஜ் குடிப்பழக்கத்தில் ஈடுபடுகிறார், ஏனெனில் அவர் மீது வெறுப்பு கொண்ட வழக்கறிஞரால் திட்டமிடப்பட்ட அவரது காதலில் சோகமான முறிவு ஏற்பட்டது. அவர் மீண்டும் காதலிக்கிறார், அவர் காதலித்த பெண்ணை திருமணம் செய்து கொள்வாரா அல்லது மீண்டும் சதிக்கு இரையாகிவிடுவார்.', 'கே. ஜான்சன்', 'ப்ருத்விராஜ் மொட்டா ராஜேந்திரன் தேஜு அஸ்வினி', '11:11 ProductionsGoldmines TelefilmsLark Studios', '5.8', 'பிப்ரவரி 12, 2021 (இந்தியா)', 'கே. ஜான்சன்', '2 மணி 16 நிமிடங்கள்', 'நாடகம்'),
('சபாபதி', 'ஒரு பணக்கார, மகிழ்ச்சியான அதிர்ஷ்டசாலி இளைஞன் மற்றும் அவனது முரட்டுத்தனமான, ஆனால் விசுவாசமான வேலைக்காரனின் கதை. அந்த இளைஞன் தன்னைவிடப் படித்த நல்ல வசதி படைத்த பெண்ணைத் திருமணம் செய்துகொண்டு, அவனைப் பொறுப்புள்ள ஒருவனாக மாற்றுகிறான்.', 'ஏ.டி. கிருஷ்ணசாமி ஏ.வி. மெய்யப்பன்', 'ஆர். பத்மசி.டி. ராஜகாந்தம்காளி என்.ரத்னம்', 'பிரகதி பிக்சர்ஸ் சபாபதி படங்கள்', 'பிரகதி பிக்சர்ஸ் சபாபதி படங்கள்', 'டிசம்பர் 14, 1941 (இந்தியா)', 'ஏ.டி. கிருஷ்ணசாமி ஏ.வி. மெய்யப்பன்', 'தமிழ்', 'நகைச்சுவை'),
('கைதி', 'ஒட்டு மொத்த காவல்துறை அதிகாரிகளும் அசைக்க முடியாத ஒரு இரவில், பரோல் செய்யப்பட்ட ஒரு குற்றவாளி, தன் மகளை வாழ்க்கையில் முதல்முறையாகப் பார்க்க வேண்டும் என்பதற்காக, காவல்துறைக்கு உதவ வேண்டிய கட்டாயத்தில் இருக்கிறார். இந்த அதிரடி பொழுதுபோக்கின் கதையை அவர் துறைக்கு எவ்வாறு உதவுகிறார்.', 'லோகேஷ் கனகராஜ்', 'லோகேஷ் கனகராஜ் பொன் பார்த்திபன் (உரையாடல்) சஞ்சீவ் திவாரி (இந்தி உரையாடல்)', 'ட்ரீம் வாரியர் பிக்சர்ஸ் விவேகானந்தர் படங்கள்', '8.5', 'அக்டோபர் 24, 2019 (அமெரிக்கா)', 'கார்த்தி நரேன் அர்ஜுன் தாஸ்', '2 மணி 25 நிமிடங்கள்', 'அதிரடி அட்வென்ச்சர் க்ரைம் த்ரில்லர்'),
('வட சென்னை', 'வட சென்னையில் ஒரு இளம் கேரம் பிளேயர் சண்டையிடும் இரண்டு கும்பல்களுக்கு இடையே நடக்கும் போரில் தயக்கத்துடன் பங்கேற்கிறார்.', 'வெற்றிமாறன்', 'கௌதம் சித்தார்த் (இந்தி உரையாடல்) வெற்றிமாறன்', 'கோல்ட்மைன்ஸ் டெலிஃபிலிம்ஸ் கிராஸ் ரூட் பிலிம் நிறுவனம் லைகா புரொடக்ஷன்ஸ்', '8.4', 'அக்டோபர் 17, 2018 (அமெரிக்கா)', 'தனுஷ்அமீர் சுல்தான் ராதா ரவி', 'தமிழ்', 'ஆக்‌ஷன் க்ரைம் டிராமா த்ரில்லர்'),
('திருச்சிற்றம்பலம்', 'இது ஜூனியர் பழம் என்ற டெலிவரி டிரைவரின் வாழ்க்கையைப் பின்தொடர்கிறது, அவர் தனது கண்டிப்பான தந்தை நீலகண்டன், ஒரு போலீஸ்காரர் மற்றும் தாத்தா சீனியர் பழம் ஆகியோருடன் வாழ்கிறார். அவரது தாயும் சகோதரியும் விபத்தில் இறந்தனர். அவர் தனது வாழ்க்கையில் செல்லும்போது, ​​​​அவர் அனுஷா மற்றும் ரஞ்சனி என்ற இரண்டு பெண்களிடம் விழுகிறார். முதலாவதாக, முன்மொழிய தைரியம் இல்லாவிட்டாலும் அவர் அவர்களுடன் நட்பு கொள்கிறார். சிறுவயதில் இருந்தே அவனை உண்மையாக நேசிக்கும் அவனது நெருங்கிய தோழி ஷோபனா தன் கனவுகளையும் மகிழ்ச்சியையும் தியாகம் செய்து அவன் மீதுள்ள நிபந்தனையற்ற உண்மையான காதலையும், அதை அவனிடம் வெளிப்படுத்த முடியாமல் தீராத வேதனையையும் மறைத்து அவனது வாழ்க்கைக்கு எப்படி உதவுகிறாள். அவள் முகத்தில் ஒரு அழகான புன்னகையுடன் இதயம் கதையின் மையமாக அமைகிறது. - விக்கிபீடியா', 'மித்ரன் ஜவஹர்', 'மித்ரன் ஜவஹர்', 'சன் பிக்சர்ஸ்', '7.9', 'ஆகஸ்ட் 18, 2022 (இந்தியா)', 'தனுஷ் நித்யா மேனன் பாரதிராஜா', '2 மணி 11 நிமிடங்கள்', 'நகைச்சுவை நாடகம் இசைக் காதல்'),
('சர்க்கார்', 'சுந்தர் ராமசுவாமி அமெரிக்காவை தளமாகக் கொண்ட மிகவும் வெற்றிகரமான ஒரு வெளிநாட்டு இந்திய தொழிலதிபர் ஆவார். தமிழக சட்டப் பேரவைத் தேர்தலில் வாக்களிக்க சென்னை வருகிறார். இருப்பினும், அவர் பெயரில் வேறு யாரோ ஏற்கனவே வாக்களித்திருப்பதை அவர் கண்டுபிடித்தார். அவர் இந்த விஷயத்தை விசாரிக்க முடிவு செய்தபோது, ​​​​அவர் இரண்டு ஊழல் அரசியல்வாதிகளுக்கு எதிராக தன்னைக் காண்கிறார். - சந்தோஷ்', 'ஏ.ஆர். முருகதாஸ்', 'ஜெயமோகன் (உரையாடல்) ஏ.ஆர். முருகதாஸ் (உரையாடல்) கிரிஷ் திருக்குமரன்', 'சன் பிக்சர்ஸ்', '6.7', 'நவம்பர் 6, 2018 (அமெரிக்கா)', 'ஜோசப் விஜய் வரலட்சுமி சரத்குமார் யோகி பாபு', '2 மணி 43 நிமிடங்கள்', 'அதிரடி நாடகம்'),
('சீமா ராஜா', 'அரச குடும்பத்தைச் சேர்ந்த ஒரு இளைஞன் தன் கிராம மக்களுக்கு இரட்சகராக விளையாட வேண்டும்.', 'பொன்ராம்', 'பொன்ராம் (உரையாடல்)', '24AM ஸ்டுடியோஸ்', '4.2', 'செப்டம்பர் 12, 2018 (அமெரிக்கா)', 'சிவகார்த்திகேயன் சமந்தா ரூத் பிரபுசூரி', 'தமிழ்', 'அதிரடி நாடகம்'),
('இன்று காதல்', 'இரண்டு இளம் காதலர்கள், ஒரு நாளுக்கு தங்கள் தொலைபேசிகளை பரிமாறிக்கொள்வார்கள், அதனால் என்ன நடக்கிறது.', 'பிரதீப் ரங்கநாதன்', 'பிரதீப் ரங்கநாதன்', 'ஏஜிஎஸ் பொழுதுபோக்கு', '8.7', 'நவம்பர் 4, 2022 (இந்தியா)', 'பிரதீப் ரங்கநாதன் இவனயோகி பாபு', '2 மணி 34 நிமிடங்கள்', 'நகைச்சுவை நாடகம் காதல்'),
('கோமாலி', '16 வருடங்களாக நீடித்த கோமாவில் இருந்து விழித்தெழுந்த கதாநாயகன் ஜெயம் ரவிக்கு தற்போதைய காலகட்டத்திற்கு ஏற்ப சிரமங்களும் சவால்களும் உள்ளன. திரைப்படம் அடிப்படையில் 90 களில் இருந்து தற்போதைய சகாப்தத்தின் மாற்றங்களைக் காட்டுகிறது. ஹீரோ கோமாவுக்கு வந்ததில் இருந்து அவர் பார்க்கும் மாற்றங்களுடன் எப்படி போராடுகிறார் என்பதை படம் காட்டும்.', 'பிரதீப் ரங்கநாதன்', 'ரிஷப் புரோஹித் (இந்தி உரையாடல்) பிரதீப் ரங்கநாதன்', 'Goldmines TelefilmsVels Film International', '6.9', 'ஆகஸ்ட் 14, 2019 (அமெரிக்கா)', 'ஜெயம் ரவி காஜல் அகர்வால் யோகி பாபு', '2 மணி 23 நிமிடங்கள்', 'நகைச்சுவை'),
('கத்தி', 'ஒரு பன்னாட்டு நிறுவனம், ஒரு காலத்தில் வளமான விவசாய நிலமாக இருந்த ஒரு கிராமத்தை தனது வணிகத் திட்டங்களுக்கு வழி வகுக்கும் வகையில் வலுக்கட்டாயமாக கையகப்படுத்த முயல்கிறது. ஜீவானந்தம், ஹைட்ராலஜி பட்டதாரி மற்றும் அநேகமாக கிராமத்தில் மிகவும் படித்த நபர், MNC க்கு சண்டையை எடுத்துச் சென்று தங்களுக்கு சொந்தமானதை மீட்டெடுப்பதாக சபதம் செய்கிறார். அவர் வாக்குறுதியை நிறைவேற்றுகிறாரா? அவருடைய முயற்சிக்கு பலன் கிடைக்குமா? - பதில்கள் இந்த முக்கியமான-பிரச்சினை கருப்பொருளின் முக்கிய அம்சமாக அமைகின்றன. —PipingHotViews', 'ஏ.ஆர். முருகதாஸ்', 'ஏ.ஆர். முருகதாஸ் (உரையாடல்)', 'ஐங்கரன் இன்டர்நேஷனல் லைகா புரொடக்ஷன்ஸ்', '8.0', 'அக்டோபர் 21, 2014 (அமெரிக்கா)', 'ஜோசப் விஜய் சமந்தா ரூத் பிரபுநீல் நிதின் முகேஷ்', '2 மணி 46 நிமிடங்கள்', 'அதிரடி நாடகம்'),
('பாகுபலி 2: முடிவு', 'மகிஷ்மதியின் இளவரசனாகவும் அமரேந்திர பாகுபலியின் மகனாகவும் தனது பரம்பரையைக் கற்றுக்கொண்ட ஷிவுடுவிடம் அமரேந்திர பாகுபலியின் கதையை கட்டப்பா விவரிக்கிறார். ஷிவுடு, இப்போது மகேந்திர பாகுபலி, கட்டப்பாவின் உதவியுடன் பல்லாலதேவாவின் அனைத்து தவறுகளுக்காகவும் அவரை பதவியிலிருந்து இறக்கி தண்டிக்க முடிவு செய்கிறார்.', 'எஸ்.எஸ்.ராஜமௌலி', 'விஜயேந்திர பிரசாத் (கதை) எஸ்.எஸ். ராஜமௌலி (திரைக்கதை) சி.எச். விஜய் குமார் (தெலுங்கு உரையாடல்)', 'ஆர்கா மீடியாவொர்க்ஸ்', '8.2', 'ஏப்ரல் 28, 2017 (அமெரிக்கா)', 'பிரபாஸ்ராணா டக்குபதி அனுஷ்கா ஷெட்டி', 'தெலுங்கு தமிழ் இந்தி', 'இந்தியாவின் மிகப்பெரிய பிளாக்பஸ்டர்'),
('வரிசு', 'வரிசு ஒரு ஆக்‌ஷன்-சஸ்பென்ஸ் த்ரில்லர் படமாகும். ஒரு பெரிய குடும்பம் மகிழ்ச்சியுடன் ஒன்றாக வாழ்வதில் கதை தொடங்குகிறது, மேலும் அவர்கள் ஒரு பெரிய நிறுவனத்தை வைத்திருக்கிறார்கள், அதில் எல்லோரும் ஒன்றாக வணிகத்தை நிர்வகிக்கிறார்கள். அப்போது திடீரென்று ஒரு மனிதன் உள்ளே வருகிறான். இது வணிகத்தில் நிறைய சிக்கல்களை உருவாக்குகிறது; வியாபாரத்தில் பெரும் நஷ்டம் ஏற்பட்டது, குடும்பம் பிரிந்தது. வியாபாரத்தில் நஷ்டம் எப்படி ஏற்படுகிறது? குடும்பம் ஏன் பிரிகிறது? இந்த சஸ்பென்ஸ் நீடிக்கிறது. —Baapofmovies.com', 'வம்சி பைடிப்பள்ளி', 'வம்ஷி பைடிப்பள்ளி(கதை)ஹரி(கதை)அஹிஷோர் சாலமன்(கதை)', 'பிவிபி சினிமாஸ்ரீ வெங்கடேஸ்வரா கிரியேஷன்ஸ்', '6.6', 'ஜனவரி 11, 2023 (இந்தியா)', 'ஜோசப் விஜய் ரஷ்மிகா மந்தனாஷாம்', 'இந்தியா', 'முதலாளி திரும்புகிறார்');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD UNIQUE KEY `name` (`name`) USING HASH,
  ADD UNIQUE KEY `name_2` (`name`) USING HASH;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `user`
--
CREATE DATABASE IF NOT EXISTS `user` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `user`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
