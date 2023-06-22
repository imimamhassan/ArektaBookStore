-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2023 at 08:14 AM
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
-- Database: `arektabookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `user_id` varchar(10) NOT NULL,
  `user_password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`user_id`, `user_password`) VALUES
('imam', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `author_id` varchar(5) NOT NULL,
  `author_firstName` varchar(25) NOT NULL,
  `author_lastName` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`author_id`, `author_firstName`, `author_lastName`) VALUES
('a105', 'William', 'Shakespeare'),
('a110', 'J. K.', 'Rowling'),
('a115', 'Stephen', 'King'),
('a120', 'J. R. R.', 'Tolkien'),
('a125', 'E. L.', 'James'),
('a130', 'Irma S. ', 'Rombauer'),
('a135', 'Julia ', 'Child'),
('a140', 'Mark ', 'Bittman'),
('a145', 'Ina', 'Garten'),
('a150', 'Yotam ', 'Ottolenghi'),
('a155', 'Chrissy ', 'Teigen'),
('a160', 'Ina ', 'Garten'),
('a165', 'Yotam', ' Ottolenghi'),
('a170', 'Jamie ', ' Oliver');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_id` varchar(25) NOT NULL,
  `book_title` varchar(50) NOT NULL,
  `ISBN` int(11) NOT NULL,
  `book_price` int(11) NOT NULL,
  `author_id` varchar(5) NOT NULL,
  `publisher_id` varchar(5) NOT NULL,
  `category_id` varchar(5) NOT NULL,
  `img` varchar(255) NOT NULL DEFAULT 'C:\\Users\\imamh\\Downloads\\img.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `book_title`, `ISBN`, `book_price`, `author_id`, `publisher_id`, `category_id`, `img`) VALUES
('b101', 'Macbeth (Folger Shakespeare Library)', 743477103, 400, 'a105', 'p101', 'c101', 'C:\\Users\\imamh\\Downloads\\img.jpg'),
('b102', 'Romeo and Juliet (Folger Shakespeare Library Serie', 2147483647, 650, 'a105', 'p101', 'c101', 'C:\\Users\\imamh\\Downloads\\img.jpg'),
('b103', 'Hamlet', 978145166, 1005, 'a105', 'p101', 'c101', 'C:\\Users\\imamh\\Downloads\\img.jpg'),
('b104', 'Macbeth', 1451694727, 1050, 'a105', 'p101', 'c101', 'C:\\Users\\imamh\\Downloads\\img.jpg'),
('b105', 'King Lear', 978150111, 780, 'a105', 'p101', 'c101', 'C:\\Users\\imamh\\Downloads\\img.jpg'),
('b106', 'Harry Potter and the Sorcerer\'s Stone ', 590353403, 800, 'a110', 'p101', 'c102', 'C:\\Users\\imamh\\Downloads\\img.jpg'),
('b107', 'The Way Home', 59354739, 20000, 'a110', 'p103', 'c103', 'C:\\Users\\imamh\\Downloads\\img.jpg'),
('b108', 'The Ickabog', 142419672, 900, 'a110', 'p106', 'c103', 'C:\\Users\\imamh\\Downloads\\img.jpg'),
('b109', 'Quidditch Through the Ages', 545850584, 500, 'a110', 'p105', 'c106', 'C:\\Users\\imamh\\Downloads\\img.jpg'),
('b110', ' The Christmas Pig', 1338790234, 400, 'a110', 'p106', 'c106', 'C:\\Users\\imamh\\Downloads\\img.jpg'),
('b111', 'The Gunslinger (Dark Tower)', 451160525, 1800, 'a115', 'p107', 'c107', 'C:\\Users\\imamh\\Downloads\\img.jpg'),
('b112', 'The Stand', 451169530, 550, 'a115', 'p107', 'c107', 'C:\\Users\\imamh\\Downloads\\img.jpg'),
('b113', 'The Shining', 451193881, 650, 'a115', 'p107', 'c107', 'C:\\Users\\imamh\\Downloads\\img.jpg'),
('b114', 'Pet Sematary', 451139755, 740, 'a115', 'p107', 'c108', 'C:\\Users\\imamh\\Downloads\\img.jpg'),
('b115', 'Mr. Mercedes', 1476754454, 350, 'a115', 'p108', 'c109', 'C:\\Users\\imamh\\Downloads\\img.jpg'),
('b116', 'The Joy of Cooking', 451498964, 400, 'a125', 'p106', 'c122', 'C:\\Users\\imamh\\Downloads\\img.jpg'),
('b117', 'Salt, Fat, Acid, Heat: Mastering the Elements of G', 476753836, 505, 'a130', 'p107', 'c122', 'C:\\Users\\imamh\\Downloads\\img.jpg'),
('b118', 'How to Cook Everything: Simple Recipes for Great F', 978060960, 876, 'a170', 'p105', 'c122', 'C:\\Users\\imamh\\Downloads\\img.jpg'),
('b119', 'The Complete Vegetarian Cookbook', 1338732870, 200, 'a145', 'p105', 'c122', 'C:\\Users\\imamh\\Downloads\\img.jpg'),
('b120', 'Known for her simple yet elegant recipes', 545850764, 560, 'a160', 'p108', 'c122', 'C:\\Users\\imamh\\Downloads\\img.jpg'),
('b121', 'Barefoot Contessa At Home', 453742387, 1500, 'a160', 'p103', 'c122', 'C:\\Users\\imamh\\Downloads\\img.jpg'),
('b122', 'Barefoot Contessa Foolproof', 437657, 230, 'a160', 'p106', 'c122', 'C:\\Users\\imamh\\Downloads\\img.jpg'),
('b123', 'Cravings', 35479847, 250, 'a150', 'p107', 'c122', 'C:\\Users\\imamh\\Downloads\\img.jpg'),
('b124', 'Cravings: Hungry for More', 4563543, 336, 'a155', 'p104', 'c122', 'C:\\Users\\imamh\\Downloads\\img.jpg'),
('b125', 'Jerusalem', 963245752, 900, 'a160', 'p104', 'c122', 'C:\\Users\\imamh\\Downloads\\img.jpg'),
('b126', 'Plenty', 398524, 850, 'a165', 'p105', 'c122', 'C:\\Users\\imamh\\Downloads\\img.jpg'),
('b127', '5 Ingredients', 785412, 960, 'a165', 'p106', 'c122', 'C:\\Users\\imamh\\Downloads\\img.jpg'),
('b128', 'Jamie at Home', 84587554, 750, 'a170', 'p105', 'c122', 'C:\\Users\\imamh\\Downloads\\img.jpg'),
('b129', 'The Norton Shakespeare', 784545848, 782, 'a105', 'p104', 'c121', 'C:\\Users\\imamh\\Downloads\\img.jpg'),
('b130', 'The Comedy of Errors', 74889749, 990, 'a105', 'p105', 'c114', 'C:\\Users\\imamh\\Downloads\\img.jpg'),
('b131', 'A Walk in the Woods', 142419684, 2000, 'a125', 'p108', 'c121', 'C:\\Users\\imamh\\Downloads\\img.jpg'),
('b132', 'In a Sunburned Country ', 142485684, 200, 'a125', 'p108', 'c121', 'C:\\Users\\imamh\\Downloads\\img.jpg'),
('b133', 'Notes from a Small Island ', 355619684, 960, 'a125', 'p108', 'c121', 'C:\\Users\\imamh\\Downloads\\img.jpg'),
('b134', 'Eat, Pray, Love', 14599484, 560, 'a125', 'p108', 'c121', 'C:\\Users\\imamh\\Downloads\\img.jpg'),
('b135', 'Neither Here nor There: Travels in Europe', 55259684, 300, 'a125', 'p108', 'c121', 'C:\\Users\\imamh\\Downloads\\img.jpg'),
('b136', 'Wild: From Lost to Found on the Pacific Crest Trai', 145845584, 520, 'a125', 'p108', 'c121', 'C:\\Users\\imamh\\Downloads\\img.jpg'),
('b137', 'The Lost Continent: Travels in Small-Town America', 585489746, 550, 'a145', 'p104', 'c121', 'C:\\Users\\imamh\\Downloads\\img.jpg'),
('b138', 'Into the Wild ', 50097646, 550, 'a145', 'p104', 'c121', 'C:\\Users\\imamh\\Downloads\\img.jpg'),
('b139', 'Travels with Charley: In Search of America', 8548946, 590, 'a145', 'p104', 'c121', 'C:\\Users\\imamh\\Downloads\\img.jpg'),
('b140', 'Vagabonding: An Uncommon Guide to the Art of Long-', 99565746, 590, 'a145', 'p104', 'c121', 'C:\\Users\\imamh\\Downloads\\img.jpg'),
('b141', 'I\'m a Stranger Here Myself: Notes on Returning to ', 945548946, 550, 'a145', 'p104', 'c121', 'C:\\Users\\imamh\\Downloads\\img.jpg'),
('b142', 'A Year in Provence ', 5854746, 650, 'a145', 'p104', 'c121', 'C:\\Users\\imamh\\Downloads\\img.jpg'),
('b143', 'Harry Potter and the Philosophers Stone', 9781408, 550, 'a110', 'p101', 'c101', ''),
('b144', 'Harry Potter and the Chamber of Secrets', 74538492, 2000, 'a110', 'p101', 'c101', ''),
('b145', 'Harry Potter and the Prisoner of Azkaban', 53492455, 700, 'a110', 'p101', 'c101', ''),
('b146', 'Harry Potter and the Goblet of Fire', 40855652, 1500, 'a110', 'p101', 'c101', ''),
('b147', 'Harry Potter and the Order of the Phoenix', 78855652, 1500, 'a110', 'p101', 'c101', ''),
('b148', 'Harry Potter and the Half-Blood Prince', 74581088, 1000, 'a110', 'p101', 'c101', ''),
('b149', 'Harry Potter and the Deathly Hallows', 408556, 750, 'a110', 'p101', 'c101', '');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` varchar(5) NOT NULL,
  `category_name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
('c116', 'Autobiogra'),
('c117', 'Biography'),
('c119', 'Business'),
('c104', 'Children\'s'),
('c114', 'Comedy'),
('c122', 'Cookbooks'),
('c109', 'Crime'),
('c107', 'Dark Fanta'),
('c106', 'Fantasy'),
('c105', 'Fantasy Fi'),
('c120', 'Health and'),
('c113', 'Historical'),
('c110', 'Mystery'),
('c115', 'Poetry'),
('c108', 'psychologi'),
('c112', 'Romance'),
('c103', 'Science Fi'),
('c118', 'Self-Help'),
('c102', 'Story'),
('c111', 'Thriller'),
('c101', 'Tragedy'),
('c121', 'Travel');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `user_id` varchar(10) NOT NULL,
  `user_firstName` varchar(25) NOT NULL,
  `user_lastName` varchar(25) NOT NULL,
  `user_email` varchar(25) DEFAULT NULL,
  `user_address` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`user_id`, `user_firstName`, `user_lastName`, `user_email`, `user_address`) VALUES
('imam', 'imam', 'hassan', 'imam@gmail.com', 'dhaka');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_id` int(11) NOT NULL,
  `order_value` int(11) NOT NULL,
  `order_date` date DEFAULT NULL,
  `order_deliveryAdd` varchar(50) DEFAULT NULL,
  `book_id` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `order_id` int(11) NOT NULL,
  `payment_amount` int(11) NOT NULL,
  `payment_status` tinyint(1) DEFAULT 0,
  `payment_method` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `publication`
--

CREATE TABLE `publication` (
  `publisher_id` varchar(5) NOT NULL,
  `publisher_name` varchar(25) NOT NULL,
  `publication_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `publication`
--

INSERT INTO `publication` (`publisher_id`, `publisher_name`, `publication_date`) VALUES
('p101', 'Simon & Schuster', '0000-00-00'),
('p102', 'Scholastic Press', '0000-00-00'),
('p103', 'Ace Books', '0000-00-00'),
('p104', 'Dutton Books for Young Re', '2013-12-01'),
('p105', 'Diane Alber Art LLC', '2020-04-01'),
('p106', 'Scholastic Inc.', NULL),
('p107', 'Signet', NULL),
('p108', 'Scribner Book Company', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`author_id`),
  ADD UNIQUE KEY `author_id` (`author_id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`),
  ADD UNIQUE KEY `book_id` (`book_id`),
  ADD UNIQUE KEY `ISBN` (`ISBN`),
  ADD KEY `author_id` (`author_id`),
  ADD KEY `publisher_id` (`publisher_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `category_id` (`category_id`),
  ADD UNIQUE KEY `category_name` (`category_name`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD UNIQUE KEY `user_email` (`user_email`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `book_id` (`book_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD UNIQUE KEY `order_id` (`order_id`);

--
-- Indexes for table `publication`
--
ALTER TABLE `publication`
  ADD PRIMARY KEY (`publisher_id`),
  ADD UNIQUE KEY `publisher_id` (`publisher_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `account_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `customer` (`user_id`);

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `author` (`author_id`),
  ADD CONSTRAINT `books_ibfk_2` FOREIGN KEY (`publisher_id`) REFERENCES `publication` (`publisher_id`),
  ADD CONSTRAINT `books_ibfk_3` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`);

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
