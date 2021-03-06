-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2017 at 05:25 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sportstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `CatId` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`CatId`, `Name`) VALUES
(1, 'Food'),
(2, 'Clothe'),
(3, 'Sport Equipment'),
(15, 'Animal');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Description` text,
  `CatId` int(11) NOT NULL,
  `Price` double NOT NULL,
  `Image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`Id`, `Name`, `Description`, `CatId`, `Price`, `Image`) VALUES
(1, 'Protein Chicken', 'Super muscular with this chicken! ', 1, 200, 'http://cdn-image.myrecipes.com/sites/default/files/styles/4_3_horizontal_-_1200x900/public/rosemary-garlic-chicken-quarters-sl.jpg?itok=t7lywxvk'),
(2, 'Eve\'s Apple', 'A fruit from heaven. Have a bite and your dream will come true.', 1, 500, 'data:image/jpeg;base64,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'),
(3, 'Blue Boxing Gloves', 'Get your boxing class a little more color with anti bacteria boxing gloves.', 3, 600, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRFFrcSUKkiRd2zVtyLMuOo0qOu4TbJZzxCY3qTZYSoZ4PWIr-gQ'),
(5, 'Kiddy First Swim', 'Bring you children to the beach with vibrant color swim suite!', 2, 550, 'https://ae01.alicdn.com/kf/HTB1KwE4LFXXXXarXVXXq6xXFXXXY/2-6-Years-Baby-Swim-Vest-Float-Kid-Swim-Trainer-Boy-Girl-Buoyancy-Swimwear-Child-Life.jpg'),
(6, 'Skirt', 'Don\'t like shorts? Choose skirt!', 2, 860, 'https://images-na.ssl-images-amazon.com/images/I/61QjQwgEDvL._UX342_.jpg'),
(7, 'Mouth Burner', 'Decrease your jaw size by chewing this red hot chili.', 1, 32, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzldJP4zG8VrCoLOPn47qkAjeb62e_BBzGMu0BHlgUmDREo514lA'),
(10, 'BADminton', 'BADminton', 3, 450, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDsMYFAr9ZaY3t6V4gcUwfw7aLSLbkEYpGpch-2lLddFWGdO72Ow'),
(11, 'Neon Shirt', 'Nice pretty shirt', 2, 230, 'https://www.dhresource.com/0x0s/f2-albu-g4-M01-93-79-rBVaEVdlTNeAGmrzAACuLoSs7nA322.jpg/man-badminton-shirt-cool-hot-sale-sport-wear.jpg'),
(12, 'Padthai', 'Delicious Padthai for your stomach.', 1, 60, 'https://img.kapook.com/u/2015/surauch/cook2/PT1.jpg'),
(13, 'Balls Set', 'All type of balls at once. Good for ball lover.', 3, 315, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBtCWgWKkpmUYZpcgF39Bax6lsFj2hiNYogSbmswmh8PyxNxMA'),
(14, 'Crispy Spring Rolls', 'Eat it.', 1, 12, 'https://eat24hours.com/files/cuisines/v4/thai.jpg?e24v=103?e24v=178?e24v=178'),
(15, 'Sport Fruit', 'Eat it and become sport master!', 1, 75, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTs9VtSuNUJZbOJ-MdZAB6smsA3zlOZJjQRgz4BDo0kaIhj3uRXJA'),
(16, 'Hula Hula Eiyayaya Pai Tale', 'Stay with sea breeze with Hula Hula Eiyayaya Pai Tale.', 3, 620, 'https://www.canyonhoops.com/wp-content/uploads/2011/08/p-76292-1170.jpg'),
(17, 'Mr. Horse', 'Stallion ready for ride.Yeeha', 15, 12000, 'https://media1.britannica.com/eb-media/91/1291-004-8FED0EE7.jpg'),
(18, 'Pan', 'Swing you hand with non-stick pan in your hand!', 3, 1200, 'https://images-na.ssl-images-amazon.com/images/I/318jcwVHWpL.jpg'),
(19, 'Puffy Pie', 'Flaky salmon pie.', 1, 70, 'https://truffle-assets.imgix.net/4e897761-ho-221-herb-coated-salmon-in-puff-pastry-thumbnail-l-en-us.jpg'),
(20, 'PiiiiiiZZa', 'Perfect for anyone who try to lose their weight', 1, 559, 'http://www.delonghi.com/Global/recipes/multifry/pizza_fresca.jpg'),
(21, 'Pink Flamingo', 'Acting like a Red Queen. Use this flamingo as your hockey club. Don\'t know what I am talking about? Watch Alice in Wonderland!', 15, 999, 'https://www.photocase.com/photos/1504491-pink-flamingos-beautiful-animal-bird-bright-wild-animal-photocase-stock-photo-large.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Id` int(11) NOT NULL,
  `Username` varchar(50) CHARACTER SET utf32 NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Id`, `Username`, `Password`, `Role`) VALUES
(1, 'admin', '1234', 'admin'),
(2, 'user', '1234', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CatId`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `CatId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
