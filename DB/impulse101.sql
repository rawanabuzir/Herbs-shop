-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2022 at 05:16 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `impulse101`
--

-- --------------------------------------------------------

--
-- Table structure for table `buyerregistration`
--

CREATE TABLE `buyerregistration` (
  `buyer_id` int(255) NOT NULL,
  `buyer_name` varchar(30) NOT NULL,
  `buyer_phone` bigint(10) NOT NULL,
  `buyer_addr` text NOT NULL,
  `buyer_comp` varchar(100) NOT NULL,
  `buyer_license` varchar(100) NOT NULL,
  `buyer_bank` int(16) NOT NULL,
  `buyer_pan` varchar(10) NOT NULL,
  `buyer_mail` varchar(20) NOT NULL,
  `buyer_username` varchar(20) NOT NULL,
  `buyer_password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buyerregistration`
--

INSERT INTO `buyerregistration` (`buyer_id`, `buyer_name`, `buyer_phone`, `buyer_addr`, `buyer_comp`, `buyer_license`, `buyer_bank`, `buyer_pan`, `buyer_mail`, `buyer_username`, `buyer_password`) VALUES
(20, 'samar', 79444444, '079444444', 'c company', 'hello world', 1, '1', 'samar@domain.com', 'samaar', 'ypWKurxd5VU0'),
(21, 'rawanrawan', 78444444, '078444444', 'vvvvvvvvvds', 'ferew58', 2147483647, '88634', 'rfxdfd@gmail.com', 'rawanrr', 'ypWKurxd5VU0');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `product_id` int(255) NOT NULL,
  `phonenumber` bigint(10) NOT NULL,
  `qty` int(10) NOT NULL DEFAULT 1,
  `subtotal` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`product_id`, `phonenumber`, `qty`, `subtotal`) VALUES
(32, 8169193101, 2, 10);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Recipes'),
(2, 'Treatment'),
(3, 'Herbs');

-- --------------------------------------------------------

--
-- Table structure for table `consumer`
--

CREATE TABLE `consumer` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `consumer`
--

INSERT INTO `consumer` (`id`, `name`, `email`, `pincode`, `password`, `address`, `phone`) VALUES
(5, 'samar', 'samar@gmail', '421202', 'yw==', 'm', '8828071232'),
(6, 'hello world', 'hello@world.com', '421202', 'yw==', 'world', '9999999999');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `pincode` varchar(6) NOT NULL,
  `password` varchar(10) NOT NULL,
  `clinicName` varchar(15) NOT NULL,
  `clinicAddress` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `startTime` varchar(8) NOT NULL,
  `endTime` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`id`, `name`, `email`, `pincode`, `password`, `clinicName`, `clinicAddress`, `phone`, `startTime`, `endTime`) VALUES
(4, 'samar', 'samar@gmail', '421202', '078444444', 'xyz', 'xyz', '078444444', '10:00', '12:00'),
(6, 'samar', 'rawan@dd.com', '077444', '077444444', '1', '1', '077444444', '10:00', '01:00');

-- --------------------------------------------------------

--
-- Table structure for table `farmerregistration`
--

CREATE TABLE `farmerregistration` (
  `farmer_id` int(255) NOT NULL,
  `farmer_name` varchar(255) NOT NULL,
  `farmer_phone` bigint(10) NOT NULL,
  `farmer_address` text NOT NULL,
  `farmer_state` varchar(50) NOT NULL,
  `farmer_district` varchar(50) NOT NULL,
  `farmer_pan` varchar(10) NOT NULL,
  `farmer_bank` int(16) NOT NULL,
  `farmer_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `farmerregistration`
--

INSERT INTO `farmerregistration` (`farmer_id`, `farmer_name`, `farmer_phone`, `farmer_address`, `farmer_state`, `farmer_district`, `farmer_pan`, `farmer_bank`, `farmer_password`) VALUES
(1, 'samar', 78444444, 'jordan', 'jordan,amman', 'amman', '1234567890', 2147483647, '078444444'),
(3, 'rawan', 77444444, 'jordan,zarqa', 'zarqa', 'jordan ', '123ABC', 45745425, '077444444'),
(47, 'name', 8169193143, 'jordan', 'jordan,amman', 'amman', '11', 11, 'yw=='),
(94, 'samar', 79444999, 'jordan,madaba ', '0', 'Select District', '886347', 987432, 'ypWLurxd6Fg5');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(255) NOT NULL,
  `product_id` int(255) NOT NULL,
  `qty` int(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `delivery` varchar(10) NOT NULL,
  `phonenumber` bigint(10) NOT NULL,
  `total` int(10) NOT NULL,
  `payment` varchar(10) NOT NULL,
  `buyer_phonenumber` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `product_id`, `qty`, `address`, `delivery`, `phonenumber`, `total`, `payment`, `buyer_phonenumber`) VALUES
(61, 21, 1, '078444444', 'Farmer', 8169193101, 99, 'cod', 78444444),
(63, 23, 1, '078444444', 'Farmer', 8169193101, 56, 'paytm', 78444444),
(64, 30, 5, '078444444', 'Farmer', 8169193101, 325, 'cod', 78444444),
(66, 25, 1, '078444444', 'Farmer', 8169193101, 80, 'paytm', 78444444),
(67, 19, 1, 'hgvvhbjnjkmkmlkmklmlmlml', 'Farmer', 8169193101, 56, 'paytm', 77444444),
(68, 1, 1, 'hgvvhbjnjkmkmlkmklmlmlml', 'Farmer', 8169193101, 12, 'paytm', 77444444),
(72, 38, 1, '078444444', 'Farmer', 77444444, 998, 'cod', 78444444),
(73, 21, 1, '078444444', 'Farmer', 8169193101, 99, 'cod', 78444444),
(74, 29, 1, '078444444', 'Farmer', 8169193102, 50, 'cod', 78444444),
(75, 25, 1, '078444444', 'Farmer', 8169193101, 80, 'paytm', 78444444),
(77, 21, 1, 'amman', 'Farmer', 78444444, 99, 'cod', 78444444),
(78, 27, 1, 'amman', 'Farmer', 77444444, 200, 'cod', 78444444),
(79, 38, 1, '078444444', 'Farmer', 77444444, 998, 'paytm', 78444444),
(80, 3, 1, '078444444', 'Farmer', 78444444, 5, 'cod', 78444444),
(81, 18, 1, 'lpojjhjdegbnm,l,mlkjjijijkmkji', 'Farmer', 77444444, 2, 'paytm', 79444444),
(82, 29, 1, '078444444', 'Farmer', 77444444, 50, 'cod', 78444444),
(83, 22, 1, '078444444', 'Farmer', 77444444, 12, 'paytm', 78444444),
(84, 38, 2, '078444444', 'Farmer', 77444444, 1996, 'cod', 78444444),
(85, 40, 1, '078444444', 'Farmer', 78444444, 10, 'cod', 78444444),
(86, 17, 1, 'dcxfcfvhjn', 'Farmer', 77444444, 30, 'cod', 77444444),
(87, 17, 1, '<br />\r\n<b>Notice</b>:  Undefined variable: buyer_addr in <b>C:xampphtdocshhBuyerPortal2checkout.php</b> on line <b>399</b><br />\r\n', 'Farmer', 77444444, 30, 'cod', 77444444),
(88, 24, 1, '078444444', 'Farmer', 78444444, 101, 'cod', 78444444),
(89, 23, 1, '078444444', 'Farmer', 78444444, 56, 'cod', 78444444),
(90, 30, 1, '078444444', 'Farmer', 78444444, 65, 'cod', 78444444),
(91, 42, 1, '078444444', '', 0, 0, 'cod', 78444444),
(92, 48, 1, '078444444', 'Farmer', 79444999, 11, 'cod', 78444444),
(93, 48, 1, '<br />\r\n<b>Notice</b>:  Undefined variable: buyer_addr in <b>C:xampphtdocsHerbs_shopBuyerPortal2checkout.php</b> on line <b>399</b><br />\r\n', 'Farmer', 79444999, 11, 'cod', 79444999);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `farmer_fk` int(255) NOT NULL,
  `product_title` varchar(100) NOT NULL,
  `product_cat` varchar(100) NOT NULL,
  `product_type` varchar(100) NOT NULL,
  `product_expiry` varchar(25) NOT NULL,
  `product_image` text NOT NULL,
  `product_stock` int(100) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_keywords` text NOT NULL,
  `product_delivery` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `farmer_fk`, `product_title`, `product_cat`, `product_type`, `product_expiry`, `product_image`, `product_stock`, `product_price`, `product_desc`, `product_keywords`, `product_delivery`) VALUES
(44, 3, 'Calendula officinalis ', '3', 'calendula gardens', '2022-05-03', 'Calandula.gif', 4069, 7, 'Calendula is also considered a garden plant known as Calendula or Calendula, one of the most important ingested herbs since antiquity, and it is of the white chrysanthemum family and daisy with yellow chrysanthemums. This herb grows in the Middle East, especially in Egypt, where some people plant it as ornamental flowers for the beauty of the colors of its flowers. The most important properties of the garden calendula herb are that it is anti-insomnia, diuretic, and diuretic, analgesic for spasms, and prevents cancer. It is also used as bile (gallbladder)It is a tonic and stimulant for the excretion of toxic and harmful waste products from the body, as it purifies the blood. Calendula gardens are also considered a perennial herb, which is sedative for wounds and ulcers and is used externally to remove skin scabs and warts. Various scientific studies have proven its effectiveness in treating uterine and reproductive system diseases in women.\r\n\r\nFor the treatment of uterine - endometrial cancer, ovarian - cancer, breast - breast', 'dermatitis,Pancreas,Lymphoma,Colon', 'yes'),
(45, 94, 'Burdock', '3', 'herbs belonging to the stellate family', '2022-08-07', '2008.jpg', 10958, 6, 'Burdock is a type of herb that belongs to the Asteraceae family, the same family as the sunflower.\r\n\r\nBurdock has spherical fruits surrounded by a rich rind with long, pointed thorns, and it has long carrot-like roots that contain a high amount of some important nutrients, and the majority of the benefits of burdock are attributed to this part of the herb in particular.\r\n\r\nIt is possible to benefit from this herb by using several different parts of it in a variety of ways. The roots of this herb are edible and contain a high amount of dietary fiber. As for burdock flowers and seeds, it is possible to extract a special oil from them that has many potential health benefits.\r\nHelps regulate blood sugar levels\r\nHelps diuresis\r\nHelps improve skin health', 'cereal,Liver_cleaning,pebbles,eczema', 'yes'),
(46, 94, 'Artemisia', '3', 'black wormwood', '2022-09-06', 'z_artemisia-_4423.png', 1025, 12, 'Artemisia: (from the Greek) Barnjasef (from the Persian) Shuila. The colloquial names known by it in Syria and other Arab countries: (Abaitran, Baitran. Habakkuk) and a perennial type that grows wild and is cultivated for its aromatic leaves.\r\n\r\nThe location of the plant: the banks of rivers, and between the weeds of neglected fences, and it can be planted in every type of soil, by sowing it: either in spring in the months (March and April), which is preferred, or in the fall (late September and October).\r\ndescriptions: A herb that ranges in length between one and one and a half meters, its stems from the bottom are woody, and its color is red. Its upper leaves consist of (3) fingers, its upper surface is dark, and the lower is white covered with wool like felt. Its flowers are clustered yellow in color, blooming between the months of (June and September). Its roots are thick, forked, brown or red, and have a strong unpleasant smell. Its herb is a few years old. The medical part of it: Leaves before flowers open, flowering clusters, and non-woody brown roots, to be taken in early spring before new leaves appear, or in autumn.\r\n', 'digestion,hysteria,epilepsy', 'yes'),
(47, 94, 'Chrysanthemum', '3', 'Chrysanthemum coronarium, Chrysanthemum morifolium,rose gold,Daoudi,', '2022-04-23', 'tbl_articles_article_27567_893d1219d75-f783-42c7-9d51-a1b3705b9681.jpg', 406, 32, 'It is a perennial aromatic plant belonging to the daisy family within the star family, native to the Balkan Peninsula, but spread in many other regions, such as: North Africa, China, European countries, the United States of America and others.\r\n\r\nThe yellow chrysanthemum flowers bloom from July to October, the diameter of one flower ranges from 2 cm and its length is from 0.3-1 m.\r\n\r\nIt contains active substances, the most important of which is Parthenolide, flavonoids, and many volatile oils, so it is likely to have many therapeutic effects in the body, such as: inhibiting the production of prostaglandins, preventing the secretion of platelet granules, inhibiting the secretion of serotonin and histamine, and an anti-inflammatory effect. cancer, and others, but there is not yet enough evidence to prove it.\r\nThe chrysanthemum flower is primarily used to prevent migraines, as it likely reduces the duration of headaches and the number of attacks, and may reduce nausea and vomiting.\r\n\r\nAlthough there is not enough evidence that it is effective in curing diseases, it is used to help treat many diseases, such as:\r\n\r\nItching in patients with pruritus nodularis.\r\nAsthma.\r\nBone problems.\r\nMenstrual disorders.\r\nstomach disorders;\r\nParasitic infection in the intestine.\r\nEar problems, such as: pain, tinnitus.\r\ntoothache.\r\nCancerous diseases.\r\nPsoriasis.', 'itching,asthma,bone,stomach', 'yes'),
(48, 94, 'Rosemary', '3', 'Antioxidants, Rosemary', '2022-09-05', 'tbl_articles_article_14232_936cae4345d-cbdf-4e6a-a9b8-196b68a730ba.jpg', 552, 11, 'Rosemary was used in ancient medicine as an antispasmodic, tonic, and gas repellent, and for digestive problems as well. Science and modern medicine have found that it has many benefits, as it contains high amounts of fiber, minerals, and vitamins.\r\n\r\nAmong the potential benefits of rosemary: immune-boosting and anti-inflammatory\r\nanti-cancer\r\n Promote digestive health\r\nSide effects of using rosemary\r\nAfter learning about the benefits of rosemary, it is important to be aware of the potential side effects that may result from using large amounts of it:\r\n\r\nnausea;\r\nconvulsions;\r\ncoma.\r\nPulmonary edema.', 'aging,depression,immunity', 'yes'),
(49, 94, ' Hyssop', '3', 'Hyssop', '2022-05-08', 'tbl_articles_article_20908_344d3ffd8a-35bf-4edd-99a5-49d079b782d9.jpg', 2424, 70, 'Ahmed included his tweet, which he launched on Twitter, with joy that emerged from among the few letters he wrote, and enthusiasm that made the tweet a gateway to the green meadows and hills decorated with the colors of spring.\r\n\r\nThe young man who cheerfully wrote: “Today was the search for hyssop and wild thyme,” shortened his journey through the lap of nature by lighting up its target. Although he did not mention that he would return triumphantly by achieving his goal, however, those who left him likes on the post seemed to conclude that the \"weed hunter\" had achieved his goal.\r\n\r\nMemories and descriptions\r\n\r\nAnd about the hyssop itself, and this time on Twitter as well, the user recalled Ahlam and flashes from her childhood in a painting that the reader imagines to be in black and white, as the young woman’s post stated: “My mother, she still wraps me oil and thyme with a cup of dry hyssop. waiting for me.\"\r\nThe encyclopedia went on to talk about the therapeutic properties of hyssop, pointing out that it is \"antispasmodic, appetite-stimulating, carminative, cough-reducing, expectorant, diuretic, choleretic, relieves tissue congestion, fits wounds, and purifies blood.\" She also explained that the method of use is as follows: boiling, compresses, and gargling.\r\n\r\nIn turn, the account of the \"Alternative Medicine Wizard\" stated that drinking hyssop cooking water is beneficial for bladder tumors and its hardness. In another publication, he said that \"immersion in hyssop clears the effects on the face, and purifies and purifies the skin.\"', 'digestion,teeth,Flavonglykoside ', 'yes'),
(50, 94, 'Achillea', '2', 'depression', '2022-04-08', 'z_artemisia-_4423.png', 1025, 11, 'Rosemary was used in ancient medicine as an antispasmodic, tonic, and gas repellent, and for digestive problems as well. Science and modern medicine have found that it has many benefits, as it contains high amounts of fiber, minerals, and vitamins.\r\n\r\nAmong the potential benefits of rosemary: immune-boosting and anti-inflammatory\r\nanti-cancer\r\n Promote digestive health\r\nSide effects of using rosemary\r\nAfter learning about the benefits of rosemary, it is important to be aware of the potential side effects that may result from using large amounts of it:\r\n\r\nnausea;\r\nconvulsions;\r\ncoma.\r\nPulmonary edema.', 'aging,depression,immunity', 'yes'),
(51, 94, ' enthusiasm Hyssop', '2', 'wounds', '2022-07-05', 'tbl_articles_article_20908_344d3ffd8a-35bf-4edd-99a5-49d079b782d9.jpg', 2424, 70, 'Description: Herb with a height of about (50) centimeters, many branches, aromatic.\r\nIts lanceolate-shaped, wrinkled, opposite, non-serrated leaves bloom on one side of the head between June and August. Small, indigo flowers, rarely white or red.\r\nThe medicinal part of it: the flowering herb from the leaves.\r\nThe active substances in it: Flavonglykoside with volatile oil and expectorant and astringent substances to excrete sweat.\r\nMedical use:\r\nA - From the outside: The emulsion is used to lubricate wounds and ulcers and to rinse the mouth and gargle, to treat inflammation of the tonsils, mouth and gums (for dental adenoma).\r\n\r\nThe emulsion works in the well-known ways and at a ratio of (2 - 3) grams of dried herb per cup of hot water at a boiling point, and filtered.B - From the inside: The emulsion should be drunk (1 - 2) a cup daily, to treat chest diseases (asthma, cough, hoarseness), and to strengthen the digestive organs.', 'aging,depression,immunity', 'yes'),
(53, 94, 'Alfalfa', '1', 'cudweeds', '2022-12-08', 'y.jpg', 6050, 10, 'What is the best way for alfalfa? root consumed. [10] How do I add alfalfa to the diet? There are many forms of alfalfa use, the number to buy and take in the form of powder, tablets, for the idea of ??preparing tea or preparing it at home, and because there are a number of studies that start the number with the number from the number Suitable food, suitable for printing, suitable for printing, suitable weight for printing, suitable weight, suitable for fasting, suitable for printing, suitable for printing, suitable for printing, suitable for printing, suitable for printing suitable for printing: eat it in the form of sprouts that can be prepared at home from seeds. Add buds to sandwiches or exposed. There are many ways, add alfalfa, food, eat, eat, eat alfalfa sprouts, with the possibility of adding sprouts easily to sandwiches, salads, and more..', 'salads,Alfalfa', 'yes'),
(54, 94, 'Hyssop', 'Select a Category', 'wounds', '2022-06-12', 'Hyssop-bloom.jpg', 2424, 70, 'Description: Herb with a height of about (50) centimeters, many branches, aromatic. Its lanceolate-shaped, wrinkled, opposite, non-serrated leaves bloom on one side of the head between June and August. Small, indigo flowers, rarely white or red. The medicinal part of it: the flowering herb from the leaves. The active substances in it: Flavonglykoside with volatile oil and expectorant and astringent substances to excrete sweat. Medical use: A - From the outside: The emulsion is used to lubricate wounds and ulcers and to rinse the mouth and gargle, to treat inflammation of the tonsils, mouth and gums (for dental adenoma). The emulsion works in the well-known ways and at a ratio of (2 - 3) grams of dried herb per cup of hot water at a boiling point, and filtered.B - From the inside: The emulsion should be drunk (1 - 2) a cup daily, to treat chest diseases (asthma, cough, hoarseness), and to strengthen the digestive organs..\r\n', 'to strengthen ', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `shopkeeper`
--

CREATE TABLE `shopkeeper` (
  `id` int(255) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `pincode` varchar(6) NOT NULL,
  `password` varchar(10) NOT NULL,
  `shopName` varchar(20) NOT NULL,
  `shopAddress` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `startTime` varchar(8) NOT NULL,
  `endTime` varchar(8) NOT NULL,
  `slotInterval` int(11) NOT NULL,
  `slotUser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shopkeeper`
--

INSERT INTO `shopkeeper` (`id`, `name`, `email`, `pincode`, `password`, `shopName`, `shopAddress`, `phone`, `startTime`, `endTime`, `slotInterval`, `slotUser`) VALUES
(1, 'samar', 'samar@gmail.com', '421202', 'yw==', 'xyz', 'xyz', '079444444', '10:30', '12:30', 30, 5);

-- --------------------------------------------------------

--
-- Table structure for table `slot`
--

CREATE TABLE `slot` (
  `slot_id` int(255) NOT NULL,
  `shop_id` int(255) NOT NULL,
  `slot` varchar(10) NOT NULL,
  `vacancy` int(255) NOT NULL,
  `date` varchar(12) NOT NULL,
  `phonenumber` bigint(10) NOT NULL,
  `passcode` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buyerregistration`
--
ALTER TABLE `buyerregistration`
  ADD PRIMARY KEY (`buyer_id`),
  ADD UNIQUE KEY `buyer_username` (`buyer_username`),
  ADD UNIQUE KEY `buyer_phone` (`buyer_phone`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `consumer`
--
ALTER TABLE `consumer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `farmerregistration`
--
ALTER TABLE `farmerregistration`
  ADD UNIQUE KEY `farmer_id` (`farmer_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `phonenumber` (`phonenumber`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `farmer_fk` (`farmer_fk`);

--
-- Indexes for table `shopkeeper`
--
ALTER TABLE `shopkeeper`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slot`
--
ALTER TABLE `slot`
  ADD PRIMARY KEY (`slot_id`),
  ADD UNIQUE KEY `passcode` (`passcode`),
  ADD KEY `slot_ibfk_1` (`shop_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buyerregistration`
--
ALTER TABLE `buyerregistration`
  MODIFY `buyer_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `consumer`
--
ALTER TABLE `consumer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `farmerregistration`
--
ALTER TABLE `farmerregistration`
  MODIFY `farmer_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `shopkeeper`
--
ALTER TABLE `shopkeeper`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `slot`
--
ALTER TABLE `slot`
  MODIFY `slot_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `slot`
--
ALTER TABLE `slot`
  ADD CONSTRAINT `slot_ibfk_1` FOREIGN KEY (`shop_id`) REFERENCES `shopkeeper` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
