-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2021 at 10:13 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `node_usermanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `comments` text NOT NULL,
  `status` varchar(45) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `email`, `phone`, `comments`, `status`) VALUES
(1, 'mohamad', 'cheaib', 'mac.cheaib@gmail.com', '70926372', '', 'removed'),
(2, 'Amanda', 'Nunes', 'anunes@ufc.com', '012345 678910', '', 'active'),
(3, 'Alexander', 'Volkanovski', 'avolkanovski@ufc.com', '012345 678910', '', 'active'),
(4, 'Khabib', 'Nurmagomedov', 'knurmagomedov@ufc.com', '012345 678910', '', 'active'),
(5, 'Kamaru', 'Usman', 'kusman@ufc.com', '012345 678910', '', 'active'),
(6, 'Israel', 'Adesanya', 'iadesanya@ufc.com', '012345 678910', '', 'active'),
(7, 'Henry', 'Cejudo', 'hcejudo@ufc.com', '012345 678910', '', 'active'),
(8, 'Valentina', 'Shevchenko', 'vshevchenko@ufc.com', '012345 678910', '', 'active'),
(9, 'Tyron', 'Woodley', 'twoodley@ufc.com', '012345 678910', '', 'active'),
(10, 'Rose', 'Namajunas ', 'rnamajunas@ufc.com', '012345 678910', '', 'active'),
(11, 'Tony', 'Ferguson ', 'tferguson@ufc.com', '012345 678910', '', 'active'),
(12, 'Jorge', 'Masvidal ', 'jmasvidal@ufc.com', '012345 678910', '', 'active'),
(13, 'Nate', 'Diaz ', 'ndiaz@ufc.com', '012345 678910', '', 'active'),
(14, 'Conor', 'McGregor ', 'cmcGregor@ufc.com', '012345 678910', '', 'active'),
(15, 'Cris', 'Cyborg ', 'ccyborg@ufc.com', '012345 678910', '', 'active'),
(16, 'Tecia', 'Torres ', 'ttorres@ufc.com', '012345 678910', '', 'active'),
(17, 'Ronda', 'Rousey ', 'rrousey@ufc.com', '012345 678910', '', 'active'),
(18, 'Holly', 'Holm ', 'hholm@ufc.com', '012345 678910', '', 'active'),
(19, 'Joanna', 'Jedrzejczyk ', 'jjedrzejczyk@ufc.com', '012345 678910', '', 'active'),
(20, 'Carolyn', 'Moran', 'duxenojat@mailinator.com', '+1 (392) 476-3928', 'Ut quis aute et eos', 'active'),
(21, 'September', 'Bauer', 'dogi@mailinator.com', '+1 (437) 276-4592', 'Ipsum et fugiat vo', 'active'),
(22, 'September', 'Bauer', 'dogi@mailinator.com', '+1 (437) 276-4592', 'Ipsum et fugiat vo', 'active'),
(23, 'Cade', 'Becker', 'divusybenu@mailinator.com', '+1 (656) 708-1736', 'Veritatis fugiat au', 'active'),
(24, 'Guinevere', 'Pollard', 'rypo@mailinator.com', '+1 (815) 827-8784', 'Aut corrupti ration', 'active'),
(25, 'xxxx', 'Oneal', 'qacedula@mailinator.com', '+1 (973) 728-5048', 'Qui aut iusto omnis ', 'active'),
(26, 'Keefe', 'Ellison', 'lypyky@mailinator.com', '+1 (462) 596-3384', 'Dolor adipisicing qu', 'active'),
(27, 'Quintessa', 'Sawyer', 'loluj@mailinator.com', '+1 (207) 947-5892', 'Voluptas nobis enim ', 'active'),
(28, 'Price', 'Nguyen', 'lary@mailinator.com', '+1 (617) 189-2382', 'Amet eveniet dolor', 'active'),
(32, 'Brynne', 'Russell', 'pamore@mailinator.com', '+1 (576) 273-3212', 'Numquam minima paria', 'active'),
(33, 'Wilma', 'Christensen', 'wyhaqu@mailinator.com', '+1 (639) 773-9104', 'Et facere non volupt', 'active'),
(34, 'Dylan', 'Bradford', 'gasehupyto@mailinator.com', '+1 (325) 101-3244', 'Neque delectus adip', 'active'),
(35, 'Phillip', 'Benton', 'qycapyno@mailinator.com', '+1 (258) 197-5217', 'Ex vel rerum minus v', 'active'),
(36, 'Veda', 'Dodson', 'kiki@mailinator.com', '+1 (278) 895-9878', 'Cupiditate a eius et', 'active'),
(38, 'Nissim', 'Cook', 'hinix@mailinator.com', '+1 (415) 962-9628', 'Eiusmod hic obcaecat', 'active'),
(40, 'Renee', 'Gamble', 'sadener@mailinator.com', '+1 (519) 504-6667', 'Officia omnis repell', 'active'),
(42, 'Quail', 'Zimmerman', 'rokol@mailinator.com', '+1 (877) 182-3043', 'Voluptates quis a au', 'active'),
(43, 'Jerry', 'Cash', 'zufec@mailinator.com', '+1 (877) 198-2317', 'Placeat dolorem deb', 'active'),
(44, 'Raya', 'Mullen', 'verihopaq@mailinator.com', '+1 (425) 825-4211', 'Minim ullamco ullamc', 'active'),
(45, 'Holmes', 'Clayton', 'hovasimule@mailinator.com', '+1 (493) 912-8737', 'Asperiores iusto in ', 'active'),
(46, 'Cailin', 'Walter', 'xiraf@mailinator.com', '+1 (907) 868-7525', 'Ad obcaecati sed tem', 'active'),
(49, 'Juliet', 'Combs', 'texepijemy@mailinator.com', '+1 (596) 418-7089', 'Ipsum duis molestiae', 'active'),
(50, 'Bevis', 'Schmidt', 'fafi@mailinator.com', '+1 (145) 389-7869', 'Fugit inventore tem', 'active'),
(52, 'Logan', 'Gomez', 'fugabav@mailinator.com', '+1 (388) 407-3306', 'Praesentium mollit l', 'active'),
(53, 'Lev', 'Rush', 'pivewu@mailinator.com', '+1 (469) 215-2442', 'Unde qui veritatis s', 'active'),
(54, 'Nash', 'Espinoza', 'fave@mailinator.com', '+1 (219) 322-3401', 'Pariatur Animi lib', 'active'),
(55, 'Kibo', 'Beasley', 'kofoze@mailinator.com', '+1 (668) 894-4894', 'Quisquam odio aliqui', 'active'),
(56, 'Judith', 'Simmons', 'dycyku@mailinator.com', '+1 (569) 806-1187', 'Molestiae omnis cons', 'active'),
(57, 'Leslie', 'Valentine', 'gohela@mailinator.com', '+1 (194) 244-4759', 'Omnis sit non conse', 'active'),
(58, 'David', 'Mooney', 'zizywo@mailinator.com', '+1 (266) 709-7164', 'Deserunt cupiditate ', 'active'),
(59, 'David', 'Mooney', 'zizywo@mailinator.com', '+1 (266) 709-7164', 'Deserunt cupiditate ', 'active'),
(60, 'David', 'Mooney', 'zizywo@mailinator.com', '+1 (266) 709-7164', 'Deserunt cupiditate ', 'active'),
(61, 'David', 'Mooney', 'zizywo@mailinator.com', '+1 (266) 709-7164', 'Deserunt cupiditate ', 'active'),
(62, 'David', 'Mooney', 'zizywo@mailinator.com', '+1 (266) 709-7164', 'Deserunt cupiditate ', 'active'),
(63, 'David', 'Mooney', 'zizywo@mailinator.com', '+1 (266) 709-7164', 'Deserunt cupiditate ', 'active'),
(64, 'Damian', 'Jackson', 'xekog@mailinator.com', '+1 (709) 306-1116', 'Dignissimos soluta e', 'active'),
(65, 'Damian', 'Jackson', 'xekog@mailinator.com', '+1 (709) 306-1116', 'Dignissimos soluta e', 'active'),
(66, 'Damian', 'Jackson', 'xekog@mailinator.com', '+1 (709) 306-1116', 'Dignissimos soluta e', 'active'),
(67, 'Damian', 'Jackson', 'xekog@mailinator.com', '+1 (709) 306-1116', 'Dignissimos soluta e', 'active'),
(68, 'Damian', 'Jackson', 'xekog@mailinator.com', '+1 (709) 306-1116', 'Dignissimos soluta e', 'active'),
(119, 'Patrick', 'Rojas', 'caqej@mailinator.com', '+1 (771) 939-1974', 'Et praesentium totam', 'active'),
(120, 'fff', 'ttt', '', '', '', 'active'),
(123, 'Dawnnn', 'Pierce', 'vysisojar@mailinator.com', '+1 (892) 521-8708', 'Id sapiente consequu', 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
