-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 28, 2021 at 12:53 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `br`
--

-- --------------------------------------------------------

--
-- Table structure for table `collections`
--

CREATE TABLE `collections` (
  `collectionsId` int(10) NOT NULL,
  `collectionsName` varchar(255) NOT NULL,
  `collectionsCreatedBy` varchar(255) NOT NULL,
  `collectionsCreatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `collectionsIdentify` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `collections`
--

INSERT INTO `collections` (`collectionsId`, `collectionsName`, `collectionsCreatedBy`, `collectionsCreatedAt`, `collectionsIdentify`) VALUES
(1, 'php8', '', '2021-08-24 12:16:07', '');

-- --------------------------------------------------------

--
-- Table structure for table `communities`
--

CREATE TABLE `communities` (
  `communitiesId` int(10) NOT NULL,
  `communitiesName` varchar(255) NOT NULL,
  `communitiesCreatedBy` varchar(255) NOT NULL,
  `communitiesCreatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `communitiesIdentify` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `communities`
--

INSERT INTO `communities` (`communitiesId`, `communitiesName`, `communitiesCreatedBy`, `communitiesCreatedAt`, `communitiesIdentify`) VALUES
(1, 'MathVoice', '', '2021-08-24 12:22:21', '');

-- --------------------------------------------------------

--
-- Table structure for table `publishers`
--

CREATE TABLE `publishers` (
  `publishersId` int(10) NOT NULL,
  `publishersName` varchar(255) NOT NULL,
  `publishersCreatedBy` varchar(255) NOT NULL,
  `publishersCreatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `publishersIdentify` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `publishers`
--

INSERT INTO `publishers` (`publishersId`, `publishersName`, `publishersCreatedBy`, `publishersCreatedAt`, `publishersIdentify`) VALUES
(1, 'Medium', '', '2021-08-24 12:22:38', ''),
(2, 'titas', '', '2021-08-24 12:23:38', '');

-- --------------------------------------------------------

--
-- Table structure for table `uniquemaster`
--

CREATE TABLE `uniquemaster` (
  `uniqueMasterId` int(64) NOT NULL,
  `uniqueMaster` varchar(64) NOT NULL,
  `uniqueMasterTags` varchar(500) DEFAULT NULL,
  `uniqueMasterCategories` varchar(500) DEFAULT NULL,
  `uniqueMasterCreatedBy` varchar(225) DEFAULT NULL,
  `uniqueMasterPostedTo` varchar(255) DEFAULT NULL,
  `uniqueMasterCreatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `uniqueMasterAudience` varchar(64) DEFAULT NULL,
  `uniqueMasterPublicity` varchar(10) DEFAULT NULL,
  `uniqueMasterOrigin` varchar(225) DEFAULT NULL,
  `uniqueMasterLanguage` varchar(64) DEFAULT NULL,
  `uniqueMasterStatus` varchar(10) DEFAULT NULL,
  `uniqueMasterType` varchar(10) DEFAULT NULL,
  `uniqueMasterAction` varchar(10) DEFAULT NULL,
  `uniqueMasterNotificationStatus` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `uniquemaster`
--

INSERT INTO `uniquemaster` (`uniqueMasterId`, `uniqueMaster`, `uniqueMasterTags`, `uniqueMasterCategories`, `uniqueMasterCreatedBy`, `uniqueMasterPostedTo`, `uniqueMasterCreatedAt`, `uniqueMasterAudience`, `uniqueMasterPublicity`, `uniqueMasterOrigin`, `uniqueMasterLanguage`, `uniqueMasterStatus`, `uniqueMasterType`, `uniqueMasterAction`, `uniqueMasterNotificationStatus`) VALUES
(179, 'XPuUP6d7bx9', NULL, NULL, 'V6n0qTJ412u', NULL, '2021-07-05 06:55:07', 'Public', NULL, NULL, NULL, NULL, 'Article', NULL, NULL),
(180, 'CdPGjPAG18Z', NULL, NULL, 'V6n0qTJ412u', NULL, '0000-00-00 00:00:00', 'Public', NULL, NULL, NULL, NULL, 'Polls', NULL, NULL),
(181, '9PD24whT7QN', NULL, NULL, 'V6n0qTJ412u', NULL, '0000-00-00 00:00:00', 'Public', NULL, NULL, NULL, NULL, 'Polls', NULL, NULL),
(182, 'TNYQRUtZWej', NULL, NULL, NULL, NULL, '2021-07-12 07:52:00', 'Public', NULL, NULL, NULL, NULL, 'Polls', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` int(64) NOT NULL,
  `userAltName` varchar(64) NOT NULL,
  `userName` varchar(100) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userFirstName` varchar(64) DEFAULT NULL,
  `userLastName` varchar(64) DEFAULT NULL,
  `userPassword` varchar(500) NOT NULL,
  `userJoined` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `userLastLogged` varchar(100) NOT NULL,
  `userActivation` varchar(255) NOT NULL,
  `userType` varchar(10) NOT NULL,
  `userAvatar` varchar(255) DEFAULT NULL,
  `userCurrency` varchar(10) NOT NULL,
  `userOrigin` varchar(64) NOT NULL,
  `userLanguage` varchar(64) NOT NULL,
  `userMobile` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `userAltName`, `userName`, `userEmail`, `userFirstName`, `userLastName`, `userPassword`, `userJoined`, `userLastLogged`, `userActivation`, `userType`, `userAvatar`, `userCurrency`, `userOrigin`, `userLanguage`, `userMobile`) VALUES
(82, 'V6n0qTJ412u', 'aminul', 'mdahadaminul@gmail.com', 'Muhammad Ahad', 'Aminul', '', '2021-08-24 11:59:44', '', '44EdRj1d2oO5GJkME4sJTfnGfJqRvMynuEC3cLnAvWmWRhF4oKnMgEtWaotTdkYX', '', 'https://lh3.googleusercontent.com/a-/AOh14Gjp_6exZfXrs5lT7-PDHKwjUY4aMv2I4NF9xrd_1g=s96-c', '', '', '', ''),
(83, 'Q72dl1FRwou', '', 'fayhaakterisma@gmail.com', NULL, NULL, '1ff9416593b368d4b64a95255f8cd8b0', '2021-07-05 13:16:57', '', 'Qn3MVYsaHuyPc9kFW4FOHcWD7r4DMVH99SIXm3Gce4x4G0j88K9dAyzPMkDpj84v', '', NULL, '', '', '', ''),
(84, 'AF9HdHh4jq9', '', 'prince@gmail.com', NULL, NULL, '1ae5e76b43ad6e2d64cec47f7d350cfd', '2021-07-05 13:24:33', '', 'TPLmXpmd4oNopBKl4CwK2pMs3zO640xixWpj8GZ1NGINGTSF0HWB3dxdflplFn2Y', '', NULL, '', '', '', ''),
(85, 'XaNKIME5eco', '', 'themornstars@gmail.com', NULL, NULL, '', '2021-07-05 13:55:31', '', 'qhdj4VZNYdLXp4eVqtCb789fh37lrW6opVGb4e4ZQMom9EN2Cdg1r6P7weg48d7C', '', 'https://avatars.githubusercontent.com/u/20471308?v=4', '', '', '', ''),
(86, 'zRW9ObkaCXL', '', 'cinthiaseymour@yahoo.com', NULL, NULL, '5ec6225583f15acbe66a137aaa1f5ff5', '2021-07-06 15:13:43', '', 'sNJABld7QdyxV27kuFZQxziwOfFZ4yWzKxAFsE5amu5Cr8NCRYQmF7lRGOjqC0p8', '', NULL, '', '', '', ''),
(87, 'dSjNpYTlrk1', '', 'loftus.patti@yahoo.com', NULL, NULL, '5d1841ec4b2bfa0db24a0dca99a042cb', '2021-07-06 17:32:07', '', 'bRj1TAjsQ3VvOiQh8XocV3xyxnTRNzyELWWRVvuG7m95SCvCjRhZUoWrb7Hs2KuY', '', NULL, '', '', '', ''),
(88, 'CZ2ox24qFjj', '', 'glen.hedwig@yahoo.com', NULL, NULL, '8c0fb2f52c67caaa3ec0e6445612034d', '2021-07-08 22:52:19', '', '94W0PUftNo6oPtWz0xHQXGmOrv2Tx9SFkbhDGEkKQoyorgI4TEE8wYOkWvDIo9gZ', '', NULL, '', '', '', ''),
(89, '4h47C7JI9qY', '', 'lena.trofimova9292@gmail.com', NULL, NULL, '59ace0b284f3458b41727d55f3660f68', '2021-07-09 01:40:56', '', 'Hlq0oCORwS29L2xsveyFG1QLkA7jOoFdfCzONR0VneULsiH04UQ3tMljnSD9a7Mg', '', NULL, '', '', '', ''),
(90, 'mF13c7LorTb', '', 'suzie_mcclutcheon@yahoo.com', NULL, NULL, '5262cce1fcb137d96d31ab5871617c10', '2021-07-09 03:36:01', '', 'oGJjdDIWjC0zXxcerS7y8yIAzxIDJviqVSmItIWv5nRVGnSc8imHkbXMpOqjeQop', '', NULL, '', '', '', ''),
(91, 'DwHQ9Iofqdq', '', 'louriemiles@yahoo.com', NULL, NULL, 'a7cf08effa4df4647d1934fdc8a9cfe8', '2021-07-09 04:51:14', '', 'YAyFQeGKzd2wQs3pxXyZjeSTTU4Gw0jQLh7vPTlplc8LiwlP5st1pHfvMncrH8rs', '', NULL, '', '', '', ''),
(92, 'yh08Qv0FDII', '', 'vause.o@yahoo.com', NULL, NULL, 'a6b60144e87b813715c88a846870dd23', '2021-07-09 09:55:38', '', 'r5Ek8Jh81Ls8PbkibsY6JZQ75211FNCJ2MEO6AD7cFVFy5yHx9jnWFQwD3jYgEEF', '', NULL, '', '', '', ''),
(93, '5Io7XECSZlj', '', 'becroftayana@yahoo.com', NULL, NULL, 'd7b325ac0f00632efc2bf36fa6aaf856', '2021-07-09 11:06:27', '', 'AWph0V9xGh5iKcG9hLQcC767GV4rs5VQ4dnfotO2l5N5ulTdsC2bAv2HHn4jEmRX', '', NULL, '', '', '', ''),
(94, 'jHT2EBIideB', '', 'sofiya.pudina90@gmail.com', NULL, NULL, 'dd6c2e998d78ab103cb447bc02b5c225', '2021-07-09 22:32:35', '', 'AYBf7YbGdYsJtnHklr06UzGUMhh2RkMZHmKcEOTxr2nzAD0W2r5ZGmm7X8UXdoT8', '', NULL, '', '', '', ''),
(95, 'FO8KsFHk9Ct', '', 'thompson.sheff@yahoo.com', NULL, NULL, 'f726104bb37c30cf92d35d7fc1a7c156', '2021-07-09 23:26:06', '', 'OMrqHJntEet4AMUj8hICmBr5v5ypAZtZ76emO13W8kco7WAf1FKgzTqvU4aVB1M5', '', NULL, '', '', '', ''),
(96, 'MflaqH12Vrl', '', 'englebert_snow@yahoo.com', NULL, NULL, '7fa908c9d1a677022466ff53f81034fb', '2021-07-09 23:36:49', '', 'Q6i6uyO81eetJTuMt29eGgMiTf2827pm24pGKxWlT2v7yzsGHRKTJiDZOZPQCOZ3', '', NULL, '', '', '', ''),
(97, 'eKBDH75S6qE', '', 'lada.vishnyakova93@gmail.com', NULL, NULL, 'a4e618f752b499942cdcf09da4613f87', '2021-07-10 11:24:36', '', 'Ul1k80ivTPFWw6JsE0azank3efLPkLcVvIekkf7RT6N4OgPlcX8qLw5H2jZSW10E', '', NULL, '', '', '', ''),
(98, 'YiQk06FlM1w', '', 'mcconchie.claybourne@yahoo.com', NULL, NULL, '16f74c08209be016a010d7ee61ec40db', '2021-07-10 12:34:16', '', 'Ab7Q3Yp7u50EDfCLu293L2jcFWPX19apIXvstVb1UI489wiNMncZ6vLiQdcsmYWM', '', NULL, '', '', '', ''),
(99, 'ZQokyvUQta0', '', 'bonnington.derrick@yahoo.com', NULL, NULL, '2fa8a267fd747186f79af3fb6ca4ae29', '2021-07-10 13:32:01', '', 'BJ1rN4adYJjcDcbYE2iDkF5x7pYe4snjX6Tx5KGLyskb15qmUYw0mHT4f3ICAHhS', '', NULL, '', '', '', ''),
(100, '718bUxjyqBr', '', 'christoffer.conyers@yahoo.com', NULL, NULL, '8557bfc2089cbc3deba59794d1ee5783', '2021-07-10 14:48:04', '', 'yit4JZSGKSOeeFVOjuiSVsFFzckqQXA8kzfM1GH3DOuuaFRroLBnIbaxGuE5S2Db', '', NULL, '', '', '', ''),
(101, 'ahme8sUeevB', '', 'gordon.catharina@yahoo.com', NULL, NULL, '39ff317f84e64038ec45c8798a56f441', '2021-07-11 00:25:41', '', 'hZxqBIsYINBFkHvZ7RGdTuO7luRVrPoFGxpgDRYUAc1IFZZDj8MIJ9FbLFmqGzwX', '', NULL, '', '', '', ''),
(102, 'MscaWxjYo3h', '', 'granny_farmer@yahoo.com', NULL, NULL, '966bef51e7359a4559032b97f6a2ebd6', '2021-07-11 13:03:29', '', 'jp1ocGMoILTvbCOKr9OPdQKj38qFAMYitkplOf8EMoKxkCoOLt3mNvhsfCMYRUiD', '', NULL, '', '', '', ''),
(103, 'UpTstsMjIU8', '', 'allie.lund@yahoo.com', NULL, NULL, '5e0968752000f28e21fad12af2b98c27', '2021-07-12 10:51:26', '', 'DpCy5MkoNDFfAKKtB4S9uuzhQuC5Kuq564V3IpjIbjFpGFr9Lrr9MzIASGE8uIB9', '', NULL, '', '', '', ''),
(104, 'BUNPUWemkgv', '', 'lorant.teullard@yahoo.com', NULL, NULL, '73c04ce506c736d73f80d013a6715e8e', '2021-07-12 16:07:29', '', 'DRVEAzc6xynGd9MjkIemdCKdFAhCThWPfrQNhH1CHk7lP0nKaVOz7es58X50w1gR', '', NULL, '', '', '', ''),
(105, 'JMF2TUquMX9', '', 'klavdiya.sidorova92@gmail.com', NULL, NULL, 'c52a0e2e166326d487ee18190fa66789', '2021-07-13 13:40:46', '', 'gPjJhD5ptQuxkEw8J9STAC8Nmh6FYpclR3gzro8pTtNWiGS51sE6iFo8Ky6RjbTJ', '', NULL, '', '', '', ''),
(106, 'LrDLqGKfWmE', '', 'workmank371@gmail.com', NULL, NULL, '291e55724be39f2d8931ae58628e83c3', '2021-07-13 14:58:33', '', 'D71txsLyKdyBbIxAUcdavI2pKP5y5c5luM7aOokSMxzhxlvsDlZlXTjVWIvEd4uy', '', NULL, '', '', '', ''),
(107, 'lgZnGKm4x1w', '', 'micheilkroll@yahoo.com', NULL, NULL, '7fb45971a819eaff6142c84f9b621ff2', '2021-07-13 15:51:13', '', 'Wr2623SDBoy1grXfFsHsb9gFl65TmkmQtwfO6VMWkhzIi5gM253ZCAgBN4dojNon', '', NULL, '', '', '', ''),
(108, '2j8Xuq3DFJ6', '', 'parringtonshadow@yahoo.com', NULL, NULL, 'de5dfa051ddade3e6afd1fbd3062e331', '2021-07-14 03:53:03', '', 'CfdFyNSyixqp795p7cTTXtE88L9Gos5IgPZziBpYvqk2n1YN5E4BfUHNUmRd99Il', '', NULL, '', '', '', ''),
(109, 'W2ZIe80YwMD', '', 'harveycalver@yahoo.com', NULL, NULL, 'cc81329029b69ff33883ca7932f5f6d3', '2021-07-15 07:47:47', '', 'bCVTEMxMcbn11PYPCdtOjjU7xGjF2rJ5faJs8Abg761m2bbkINSPS5swKrNh5DQJ', '', NULL, '', '', '', ''),
(110, '7YXl6w7rSze', '', 'swifthadlee@yahoo.com', NULL, NULL, 'fb3704a04eb4c37b2c359d60b5191ca2', '2021-07-15 09:25:00', '', 'uYnedobg9HDkc719ZN3XGlvK30CcXlGVz9zZt0Oidbn6gCfXfOrqceR9fJ1L6cTb', '', NULL, '', '', '', ''),
(111, 'nzGDq6rnFiR', '', 'augustohallimond@yahoo.com', NULL, NULL, '594d4ea3e7e7a7592c56e0f649486c91', '2021-07-16 23:38:54', '', 'JEGXQJMQb1DIaNHMAZwbuE11wwQBO8BTBmVulS3lqTVYBIm4CMCF8Qpfqll1mKds', '', NULL, '', '', '', ''),
(112, 'qK1vuijEFeQ', '', 'claytonwhineray@yahoo.com', NULL, NULL, 'e93b0130d316dedcea085405c0112f91', '2021-07-17 13:27:29', '', '8llLOhbpuqzKjEYHKlP6H6P0xTaNtNURNl6dIJmjmagLcbvzJMoz05CmJU60Lyrm', '', NULL, '', '', '', ''),
(113, 'XLI9tPIH1It', '', 'bondon.passmore@yahoo.com', NULL, NULL, '387e5961abe6f38fac99001ccfe0a489', '2021-07-17 14:08:31', '', 'U3qvNTvcCJ1SmTjyI3IOuhea0DDRNcVqAPWbjAwh3NYSVCqqofE6mfCIVtNH2qZU', '', NULL, '', '', '', ''),
(114, 'VkbGFI9rLyB', '', 'jerebrekinfield@yahoo.com', NULL, NULL, 'c1b99f023c742e90d67a77e8788be17b', '2021-07-18 12:48:52', '', 'Y39qJhogCEbq19YnBjm8NPNhvXXVdTEdo5NxYppqLaJMPY32hRiftFm5SzyBcfaw', '', NULL, '', '', '', ''),
(115, '6b6hidXdbGY', '', 'smellie.demetre@yahoo.com', NULL, NULL, 'a0c782d90706a24cd476a4daf7fe47fc', '2021-07-18 12:55:59', '', 'NPTUk7z3kOmfHBgAVfDQDz1riRzh9VojVnEa5gxa3N27567RadsxJQR7XlUg3dhV', '', NULL, '', '', '', ''),
(116, 'uToqU2tHIYY', '', 'bevisgrant815@gmail.com', NULL, NULL, '54f1b3a7bf71c4cfd1b88d86e1d189d9', '2021-07-19 01:45:12', '', 'PDGETGb7e8Pfpz6ARNVq3ycxEso7oKiKl2kUw1TEgx0VMm6OOMIjAm1dmL2DqXMe', '', NULL, '', '', '', ''),
(117, 'Yll4GbTkt2G', '', 'kimberlywatkins833@gmail.com', NULL, NULL, '82f77703cccec5116ffcdb296904b89b', '2021-07-19 09:26:11', '', 'c9fCphfQUPkulSJ7f1ja91U2AYhg6mL3EMPFqQ8uWKvWVW1wqsFgNCYr4TSjTFRX', '', NULL, '', '', '', ''),
(118, 'NwkevpzHBef', '', 'loren.mcpherson@yahoo.com', NULL, NULL, '068298b05f4b2126d571443c69de691e', '2021-07-19 18:45:25', '', 'nZOJRgoZlIKVvxCkFlMYbi3ZURvCZGIBt3DdaozHPIB8fYnn1HbIRQwft50D6Hx6', '', NULL, '', '', '', ''),
(119, '90AnUkOv8Rs', '', 're.mas7747105@gmail.com', NULL, NULL, '1f9ad06cf84bf6a79e7763994672096c', '2021-07-19 22:47:54', '', 'KIncacyNM8HeBPpUwDgbcJ36rYybWDk5QB2mdo5cxmxoltrusnDdsp92Js3f5cvH', '', NULL, '', '', '', ''),
(120, 'V9IKEe34CtZ', '', 'xcg1234@gmail.com', NULL, NULL, '67db864aa43099a39b150d7e343823fa', '2021-07-20 01:29:25', '', 'xAiv59SLFKn1uaiCMrhABv6zxgl8vk0p1JpB6OtQZCnty4RJfiUu5bIMsbGUDDZD', '', NULL, '', '', '', ''),
(121, 'YHfEqcC4NCl', '', 'tyler.ferrone@icloud.com', NULL, NULL, '5ea8086d1f7a256f92ad5781a49e8983', '2021-07-20 09:51:23', '', 'JDTMT7Y3dEIthSmchEYTjmGgIGDj8lA7Wfd2NdRC9NMxa3FYqAFrpIPvv08g6Ca3', '', NULL, '', '', '', ''),
(122, 'QcSwSRVqRCD', '', 'smcginn2@cfl.rr.com', NULL, NULL, '28a4290841f0a89f79bd611d4da20e99', '2021-07-20 16:27:43', '', 'n0ryf87PJPDpuFVn2vVnSSxvi4UDvqNz0ZFwZMRg1HRehCcdpkmBjI6XLaDvbapq', '', NULL, '', '', '', ''),
(123, 'm2kFjHDeiUp', '', 'mcfluharty@gmail.com', NULL, NULL, '463230147abb891ba1365e9d78dceb72', '2021-07-20 21:35:51', '', 'MT5gUCEM4mHhB2uYkdZNIrfYz0NFxAta2p43oDFU24qQC8F78UvgaaS27Kp8xMjx', '', NULL, '', '', '', ''),
(124, 'tCzhmgBof35', '', 'andrew.braden@bradenfellman.com', NULL, NULL, '64c5f476acc0d66f63148ce7f88ee34d', '2021-07-20 21:50:07', '', '00Rbc6MLTIrls2JkjTD1ywRMxO5uPLXil46B7thgAkRphjrKJjbwmPofXxknNPSx', '', NULL, '', '', '', ''),
(125, 'iZpHjUftj9L', '', 'hanxiaonan2012@gmail.com', NULL, NULL, '6bd28cf5dbcde597011ba04e2edb922e', '2021-07-20 23:07:56', '', 'Tn0WiC5j2XqyXEVrPOuwU56QIN46CjKUqSvElYuqnmRQc6nEtBaIwvXVI04dKKG5', '', NULL, '', '', '', ''),
(126, '0by9GeEBL7Q', '', 'akashsteady@gmail.com', NULL, NULL, '91070c74c7b175ab6eb199b309945cb1', '2021-07-21 01:51:05', '', '1awuYoqxIVdHuhP7VzqugFj1lTdppiH6buP8CWmF4eeFuzMUZ7qWE11vApQrrIp7', '', NULL, '', '', '', ''),
(127, 'fU6J4TXsZtu', '', 'anabelalberto443@gmail.com', NULL, NULL, '49e8e925b27b8988c5b4c9220f925d9f', '2021-07-21 03:46:50', '', 'mFd12ehfwcEd1VHowVhxgW6AEtbJ0PAl2qkY1gW9kt3Pe4rZoQt4QhTe75beVHwA', '', NULL, '', '', '', ''),
(128, 'yxO2lxpUrQd', '', 'lintonmcneafoa@yahoo.com', NULL, NULL, 'aded94e23cf7b0e84c69ab16cf5fae10', '2021-07-21 05:08:02', '', 'Jj4oevTFV88fJmc39Zti8JJB5lK7onLZEocP3CIahHs4uWJshEcEiOK17txI4lDe', '', NULL, '', '', '', ''),
(129, 'Ey9nsRMeKtS', '', 'stephaniepetrone97@gmail.com', NULL, NULL, '840a9844797a79a99ad0490bcd987e0d', '2021-07-21 18:16:02', '', 'FE5WFLOQQBzIeu4LzTCcA3ItwHqVzluBnCwwF8lvpep3hAQl9H4rEnlyYnLVYf8V', '', NULL, '', '', '', ''),
(130, 'ArxG7en61Cw', '', 'sammy.bagdady@hotmail.com', NULL, NULL, '51904c777f0f1e48393091df4fb93277', '2021-07-21 21:30:22', '', 'jZN2qAyDh9Sa3nxxSofV7CesytB0UQ2JJsNIIhRGpcv9GPcxigNE0eoHylcQ4U8D', '', NULL, '', '', '', ''),
(131, 'XAbv1XXY13h', '', 'adautoelectric01@gmail.com', NULL, NULL, '9d7f3abe9992c77c9c0eed547bc7cc98', '2021-07-21 21:59:23', '', '9W9zKXudGaGjtMtPNq1BK6SUWQTia8xVYIZx8n7lX9UaeVTdjDHBu1QaLeCiZr6V', '', NULL, '', '', '', ''),
(132, 'kf8xq0RPybj', '', 'carlosrincon3@gmail.com', NULL, NULL, 'c8162a806f648b497194f173900860cb', '2021-07-22 00:19:35', '', '4pMoChNmSj8yVDS51ry5S9hewXpN2sltlDnCPTAaKygt29d0W7fhdo9t1MSrCVAD', '', NULL, '', '', '', ''),
(133, 'E1OE7haZHBG', '', 'jay.collierford@gmail.com', NULL, NULL, '9d539b488c2f8dccd20417ac6a37f28d', '2021-07-22 01:02:08', '', 'CKZ7ZPwsP89DLNfydqEFB6FpY1nzAxGQWUhD4bHWSrrb5csXjbGF1vMnFQs2LSko', '', NULL, '', '', '', ''),
(134, 'ghrvbgBmSqr', '', 'brodya6wh@yahoo.com', NULL, NULL, '13ffb0949df6428d7fc0c255a151eb8b', '2021-07-22 05:29:35', '', 'FqJC0hl1XCR9tLe6l00mZb9YRdWB5FZgAP8V76XpE8za2q4jx6zayDcxUpP4YwVW', '', NULL, '', '', '', ''),
(135, 'IOkWrfX9A0R', '', 'nmccoy381@comcast.net', NULL, NULL, 'a4cf217ce1a8cb04550ea08b7b6cbb09', '2021-07-22 07:51:43', '', 'Aa77HJQTgbMOGKINHND9OXgjrTXXLzBvPHQcFRxzJlGQS1ylRqAsMJ8PbOihakAF', '', NULL, '', '', '', ''),
(136, 'nPgjgGOubD1', '', 'gerivanollet@yahoo.com', NULL, NULL, '7c383a297da1c13afbebd3b525e5e28e', '2021-07-22 09:26:07', '', 'fysOA6ddzN2AdcAiXOU8iFSW6eO0q9E3h1UYsuTopKlHt9cWOmZBpAFo89Q7BUb2', '', NULL, '', '', '', ''),
(137, 'bVYZ28XxegB', '', 'bham0330@gmail.com', NULL, NULL, '8d86149232f9597a2798cabe37961833', '2021-07-22 17:24:42', '', 'rqg1plQXsA7P1ZWWdt7WNujC9CJTOsapnYbYkvqrugAMcu1YKrQqiqzI4ikLiAEn', '', NULL, '', '', '', ''),
(138, 'Uvxx8Yt8PQr', '', 'hyderd@nationwide.com', NULL, NULL, '9b555b8636679cf3fab142d6be138c47', '2021-07-22 23:29:13', '', 'SAMtAoI6CKoBoW24xYCvECr7NWonFXLj0OpNL4Wb6FPZ38ZD9Xakvc7wnuXgHCuY', '', NULL, '', '', '', ''),
(139, '60wO6iLF8Uf', '', 'jillsyx@jjelectric.net', NULL, NULL, '4c3f1d67bb652b89d28c5a713377a642', '2021-07-23 02:25:59', '', 'NUDwtHWN0duYgisxy4WWHsgUocaMGlvrrL1BnVlCRIpj09ZEu5Tsf1VMtwpD2ebx', '', NULL, '', '', '', ''),
(140, 'oY36doOvRGg', '', 'david@platinumidaho.com', NULL, NULL, 'de4d477fcfe3d2fe4cc04b42c50105e2', '2021-07-23 08:06:12', '', 'z4GmsahO2jxP3zvBxiJUsHZF3E91Ye4BweGKglOtqkYGipHtcRWIB1pzfO8BGtEF', '', NULL, '', '', '', ''),
(141, '2CbL35z3HLe', '', 'karlo@focus5studios.com', NULL, NULL, '4c63e8a4b9028d8739cae83938069cc3', '2021-07-23 23:02:24', '', 'n7clf9khzI5NhQ5ujbZ0nz8uUZbs73lIO3eBdKkmUDlDCEnjwDf5KG7pDq6rQ4uL', '', NULL, '', '', '', ''),
(142, 'PqEhdYwXK8l', '', 'underdogs74@gmail.com', NULL, NULL, '9d0f680f7a878e408d51253c9980927c', '2021-07-24 02:11:57', '', 'cxvdcXyYywlIQ1JdZNvLQfnZpyFsDLO4CXx5esU98gHwyNNqhwxDxBOSLXihHfsJ', '', NULL, '', '', '', ''),
(143, 'obth961lzxm', '', 'vikes828@gmail.com', NULL, NULL, '334d1e43cbc39bf10d65873e2fab8b9e', '2021-07-24 02:49:25', '', '5z4TGWD5Qz00qMUMCcQy7IjWvpoAepttjSXVyXknKkSKQWVAIiafR0zSfquXwqlY', '', NULL, '', '', '', ''),
(144, 'n6Pq8f6rqZn', '', 'esnowden@indiana.edu', NULL, NULL, '213b41dc23cf6b9dac46f53ec1f74a60', '2021-07-24 03:29:45', '', 'Se8OdeqqZMAYfyqDLdHUd7AY2D1pVG0mWqwOXcRJgLqMr7rhcE8ezoolGB9ka3W0', '', NULL, '', '', '', ''),
(145, '07dCPqgHIjt', '', 'mcfireprotection@gmail.com', NULL, NULL, '5317c4b01394d7e44e7c2a998e6ce932', '2021-07-24 06:24:28', '', 'o4Z3PzBO9pddDpamsvqQmdF0Uv91g5KeP5fHdyniu4B3B2VJCn87UdUDlkOd97oD', '', NULL, '', '', '', ''),
(146, 'ZqANvi22voq', '', 'junss0101@gmail.com', NULL, NULL, '736a22191e7c5e84a6245351f44990ae', '2021-07-24 15:29:28', '', 'pZAJDVZRodEk2UULWnsbH9DfAnjSti9taw9to2r7Fw2EpzKOJhy94U5B2t6mX0UV', '', NULL, '', '', '', ''),
(147, 'UQrpXOQElrx', '', 'skippercarmine@yahoo.com', NULL, NULL, '0494824551cc46810c29b2dae23642b9', '2021-07-24 23:57:51', '', '48QUvRaJGE5uV0JftQvARE2396asMSnEFdmY20bZaaKJn1WrXtitf09twI7JZNLZ', '', NULL, '', '', '', ''),
(148, 'Te6w9ZcSPya', '', 'laceyh6rgswatt@yahoo.com', NULL, NULL, '187de8aa6dcd54598a8ae528aac85ec2', '2021-07-26 15:45:17', '', '7dP7ARnF60PVcSU8u2NgDH9AtVDKh7U14ruqljPC6NZTDWUDLegAeUWWhGFDIS8P', '', NULL, '', '', '', ''),
(149, 'RJ5JgVTubsu', '', 'e.astraea@gmail.com', NULL, NULL, '6783e65ed30cb38bb24fce7fa8e1eb18', '2021-07-26 20:28:53', '', 'EuLeEj1T6cTEb7qClPWgpmchQoVpdTsENhjHH9V6ECXYrCG9Nn9M0b4zHMSH3fou', '', NULL, '', '', '', ''),
(150, 'HLbZl5oYhiD', '', 'hailierabaran1dl@yahoo.com', NULL, NULL, '897536e9ab52ca2c03ecff08a747a9c7', '2021-07-26 21:02:15', '', '54wYBIqaW90LcU5xrIZVsyR6H7EXr6UqCOKXhOyOAAScoXVwSnMvTX6T3drMe57R', '', NULL, '', '', '', ''),
(151, 'wl4StYphqIw', '', 'rbradley@wrenvironmental.com', NULL, NULL, '8bcf9290f97961e3ae5e4c5b3d295f1a', '2021-07-26 21:58:17', '', 'Ln9nlGGmx2Vm5CUOIgH9qS7LgesmmcHiXPoVktE4x5Q3DarEnazfyct29Hx8QQPF', '', NULL, '', '', '', ''),
(152, '7tR0zhRuKWD', '', 'jandrade12@socal.rr.com', NULL, NULL, '93d409c01ffd2ffc96eddb62ecac1a31', '2021-07-27 00:05:35', '', 'c46VmnyGIlqr5NiPwNzqYNelBBJCtWyyu99o6AUmH1FhPVXwgMHtsuxjLKVe3iqY', '', NULL, '', '', '', ''),
(153, 'bo7OjxwS2dC', '', 'whowiningsrt@gmail.com', NULL, NULL, '6192922b8570f1f72a9475f8204abc02', '2021-07-27 01:14:39', '', 'raPGRzeNs047usZPhcGrpNh8pExUb1KTDBBH926sYyX6Z8oTDeAAD5tDnZNpJf18', '', NULL, '', '', '', ''),
(154, 'IlwRMalyaf0', '', 'strientedfm@gmail.com', NULL, NULL, '2c995e960eb8850fb2745d0bab0e0df4', '2021-07-27 01:44:53', '', 'ZftWQgrpXvY1hY952T3YiMkXd9HlKTYLL5p99KIfOPMvGjpuvzvjoYtTqDKHt1aL', '', NULL, '', '', '', ''),
(155, 'NAb1xOOBMz4', '', 'flasheppsvdd@yahoo.com', NULL, NULL, 'eb8cbdf06d7c38f717d1ae24e25a916c', '2021-07-27 08:11:03', '', 'VR0gdqLwQkZjnMimbobg2DfWgFvqzvBpwcIgabOC34V9W5KDzJ9SnQkAs2KPJ8Ki', '', NULL, '', '', '', ''),
(156, 'RoKcEsJnfyA', '', 'ywqdhycgcm_1617583065@tfbnw.net', 'Dick', 'Sacapuntasson', '', '2021-07-28 13:20:33', '', 'ZvWlOsgZnoUnMSNPKLljNEJjrZoNhy0esudaYJ2jCp4bOC6GhsKnTJFDj0vEi63F', '', 'https://graph.facebook.com/v8.0/49302200618373/picture?width=150&height=150', '', '', '', ''),
(157, 'GZ34nCjgoqM', '', 'allisonanne@msn.com', NULL, NULL, 'f60c9ae77713d1f56f2768f23727dd24', '2021-07-28 17:09:45', '', 'vAUMsx5QRM4ZGQL1oRx90RIUuzJvD2OXmLFcXvmwqf20ud9IuRkrc2JVhZ8gi5kR', '', NULL, '', '', '', ''),
(158, 'ZMYrTCsBiT5', '', 'lam2dhsilber@yahoo.com', NULL, NULL, 'a90adfbfe1cd71c365f59e0f7f8341d9', '2021-07-28 23:11:59', '', '7pMfLRFyA4mUdQ3jk2gQxFHxEwLo6vv76xVdh4DbBi95rAKln3g3I31YCng9ltn0', '', NULL, '', '', '', ''),
(159, '01pWekMimFN', '', 'geogatedproject381@gmail.com', 'vaynecooler', 'vaynecooler', '', '2021-07-29 07:40:51', '', 'Gp9sPAdZ0dUJxrIZYaCLrfqSlwOoObxG3t06tnTHTlZXZIYz7W5H57QoiR6463nl', '', 'https://graph.facebook.com/v8.0/23002200708527/picture?width=150&height=150', '', '', '', ''),
(160, '3t0Q7UTiJAl', '', 'reddsthn@yahoo.com', NULL, NULL, '982e6538af05e83f614432119fd73b84', '2021-07-29 14:47:22', '', '03pLtPQzaedridlUIVXX9KUX7fISFCsBauxXoU9R20trIdOrEuOuqJBsKtAdAZ7n', '', NULL, '', '', '', ''),
(161, 'XJlBJDWNN8D', '', 'joannamcdwu@yahoo.com', NULL, NULL, 'f82fa450b8b7e9d6c18ed5e8a2034a68', '2021-07-29 17:20:45', '', 'N5ODZBt03ONNIjDQNmCUhX5LBKihGa7o34HHXScy9sczUQQkDv4B2gWMJnLuhama', '', NULL, '', '', '', ''),
(162, '0ts8OCus3rX', '', 'sharitaenlrde@yahoo.com', NULL, NULL, '312724bb65d396460be1c98a5cf14d0c', '2021-07-29 20:14:29', '', 'btMtcMAIHeDGtfGEk4qsxhngZFMjLZVkLIQUhHWvc6oaFelCoPXix0lxMoRRl47L', '', NULL, '', '', '', ''),
(163, 'Uumcn5ZjoFT', '', 'delorasxgpa@yahoo.com', NULL, NULL, '3bb050e311590e1aefd3ec70bfa2f1b9', '2021-07-29 20:18:40', '', '753jAWTQU48RtfKVZlbvRkZ7x9gjcZHkhjeesa37HYvNTPbmb3yi431TZTaZ33tw', '', NULL, '', '', '', ''),
(164, '8frcanqVVhe', '', 'shriekenks8z@yahoo.com', NULL, NULL, '1bab7810614170de51a66fbceb452f18', '2021-07-30 02:36:50', '', 'KYdfjoAk2eVxm3GAtmHUR2GxHgjiqTSiHBBzLgCs6AzGSmVx3fuxgNl80PnHKAg0', '', NULL, '', '', '', ''),
(165, '7laLRuzOZ2b', '', 'ji4kminzel@yahoo.com', NULL, NULL, '9c12fc5eaa9c646a166ddc21ef6277d9', '2021-07-30 02:39:26', '', 'xloyAnMpq9yxyo8C8SKJ5rqKBvRxEdloc1sTV1UEvd0pUz883jCVZHjzOvBmL5BD', '', NULL, '', '', '', ''),
(166, '7dzgLRzXYUj', '', 'karleenmuldoon@yahoo.com', NULL, NULL, '0eaf1f146552ecb1da99202c1e7de6a7', '2021-07-31 23:15:42', '', 'OEqsrbYSlcqVxNGbQLb3zKcf793ATQVTXOmHwGBlhcho45131bPaWUnktDjKrk79', '', NULL, '', '', '', ''),
(167, 'BHIecUgAtpS', '', 'debeaucorpsninfa@yahoo.com', NULL, NULL, '091c7c5ad65f72e14284aaa8b3a4c32f', '2021-08-01 03:18:58', '', 'mEtm5UFcDerUbjmRw5X2S6ikBTm1Olwk9TZOULmMECqRmlk7QLhHUOfCt43GLiYg', '', NULL, '', '', '', ''),
(168, 'zWq7vAz2p2F', '', 'mulkey.alma@yahoo.com', NULL, NULL, '3676c2398b076fd1dd4d4b46e432e01d', '2021-08-01 15:46:24', '', 'FzabcOrG5j6mZMQXfKDM1Z52MF5J0dZafA5ux69tpWM9rHrgV20gmpqv1IfnauEB', '', NULL, '', '', '', ''),
(169, 'SWeIyDGhoQR', '', 'lucinamcknight@yahoo.com', NULL, NULL, '275f0471992e68b24d0c2a9eac8d5202', '2021-08-01 23:21:53', '', 'T7n8ZeGxlFxPM5ColrSeEe33iWezjmLKlcVf8ZIhnc7071BqpFAgJtem2We2vMkL', '', NULL, '', '', '', ''),
(170, 'qTwxtjsZQqM', '', 'travis_dow@yahoo.com', NULL, NULL, '82be5bf1e577a612b080975723e1cc51', '2021-08-03 08:54:57', '', 'yMXtyXCQFSFXFy6iI0eLbgSoS7yuDTT52pqLp9Ly5v8HjKqZeJImYyqe0NJ1Lzdd', '', NULL, '', '', '', ''),
(171, 'paWuSMZK0m9', '', 'joselynfvj2s@yahoo.com', NULL, NULL, '521933bda87ea607c4c6856bbcb4678a', '2021-08-03 19:39:47', '', 'cddDZdpgO6dFlgiw3WNRUz3N5OvLSAjxlEAeIfsuXGgRZQxEzvPC1P6bLZts7tEq', '', NULL, '', '', '', ''),
(172, 'OajZmAyaLFJ', '', 'jemmyujkom@yahoo.com', NULL, NULL, '249de79e195c8f7e5c9e3cea392d81a8', '2021-08-04 01:20:49', '', 'NoXDWFv7XviXT5Hg3peESiUG977uaB1qn63dMaVKnVLeT1H4WGnKW3aqWjS1xwam', '', NULL, '', '', '', ''),
(173, 'L1zTtDlUtC0', '', 'raeqspsch@yahoo.com', NULL, NULL, '9aaa4451aa5c10f52e053c67eb899f0f', '2021-08-04 07:51:17', '', 'DciFYfFKmZ2dIx8hgRqffYBo6aMNf6IEaYue0NhGWvJFxXcdw9m04WOrC8WLaf8E', '', NULL, '', '', '', ''),
(174, 'G6MuLd5NaT0', '', 'jakkig8alv@yahoo.com', NULL, NULL, 'f088f998348b58f9e9b14d1e14f00e08', '2021-08-04 20:40:57', '', 'F3Tq5CsqhSO5Tbox1TvqeK57umWH1yCSulNx9X9ET9ZhVaKLuHv2hAI1WqlZtjJ1', '', NULL, '', '', '', ''),
(175, 'DI79JLOdyPb', '', 'suf5mgu@yahoo.com', NULL, NULL, 'c63b5d85076a847197f176bf9c18fec4', '2021-08-04 21:42:54', '', 'vGwSUyENbm0KOwIyV96cUYZudP2NOnSlQ6cjDgcWQWzaiQxeLkdeKnVFNLmJRc7i', '', NULL, '', '', '', ''),
(176, '3ojAIyWRX5M', '', 'vapamudar838@gmail.com', NULL, NULL, '3dae774f0488aebb11843f974093d2a3', '2021-08-08 04:25:26', '', 'yguZEfOa0rksUFJFfrYzsc2LwXjYB2ooHj1awsvf1p07dVLuvF4Mev26NwCsLQ1a', '', NULL, '', '', '', ''),
(177, '2qrPPCe0ISx', '', 'jdizon1@cox.net', NULL, NULL, '2eec828a5a06c5e40b5afc978705bcb2', '2021-08-09 06:33:12', '', 'FTEwc7zAWyZqbmdJ8yISwAl7k5DX4sdjEc8z2UkT4SrkE4WSSQoSbrBfXguS57GO', '', NULL, '', '', '', ''),
(178, '04h0ijZKVt1', '', 'sepporter04@gmail.com', NULL, NULL, '76ceea3236487adf0eef92eaa18c8c7c', '2021-08-09 18:03:46', '', 'oBNNbztWEtMV02fhbzIhZ5vkBs6z5r9B7e2naFgOtN3VlP2kjcD2Fg3Xb7y9wfyj', '', NULL, '', '', '', ''),
(179, 'AT820UkjJHb', '', 'jamewalkere@gmail.com', NULL, NULL, '812cc5a057c4a4f8af9ef52f07916a4c', '2021-08-09 18:34:55', '', '5M8L7pfzye2BWo6g0X5Tb76NvRgS1sRZKfK0YBRmYzfAPSlS9RtXvdWC88r7pTST', '', NULL, '', '', '', ''),
(180, 'SSRJzRkpoLg', '', 'brierley.margit@yahoo.com', NULL, NULL, '783ee6c5e03d2b6a0be8de2e2d3ac13a', '2021-08-09 19:39:50', '', '7thd8FNSd6YcdZyFlIaWAqYl57frRsmzYUkp3LIyspmFrQwdTGTo90riYN7IJZkd', '', NULL, '', '', '', ''),
(181, 'oS53VueCDzd', '', 'dhansey@mymts.net', NULL, NULL, 'f9ebc1190333171d7952c177f06a2d28', '2021-08-09 22:12:18', '', 'GNagAXMh66pnygEETVFaJNWEahobiqMskvvKNkUPxZ3RjrgcVs9eH4Gy04ntUS0X', '', NULL, '', '', '', ''),
(182, 'ScAnWyI0vbd', '', 'chrisw4rd84@gmail.com', NULL, NULL, '77b2f2a290f81b9f83983eeb60645ee0', '2021-08-09 23:48:45', '', 'xZ6W9usaJw8TVj31eippBnEOXmGsOKs6znSq2v1gkoecwY59Y8UrRFcnNYLPGWMh', '', NULL, '', '', '', ''),
(183, 'pVbnypTC619', '', 'cjuncker@cox.net', NULL, NULL, '51899c275448688f4c6d5da8cc5a6b8a', '2021-08-10 00:10:28', '', 'j0ni7XduQWbm7ozrgXqey8GiLcgXFdAbFcFNYMLOULalYW88XYVWeYBfUiywXj7z', '', NULL, '', '', '', ''),
(184, 'Ajq8hW4F0RP', '', 'purwono86@gmail.com', NULL, NULL, '7786403e46b6b7e6d78b590fc2e37429', '2021-08-10 00:46:18', '', 'EwirVk5dMvbFrte02QOq37NG3roPidsC7Mh8LVlztHH3mRW4LJUPH1UJPbxQlplv', '', NULL, '', '', '', ''),
(185, 'ZY7vEyWTru1', '', 'notsumensoko@gmail.com', NULL, NULL, '1bf4b366708069700b656bfe14f43cde', '2021-08-10 02:20:32', '', 'ShAaU29wH2JLr5Gmf709TiDkSIGuhh2nnYJAArG5pGIUao3jigbvjkNMa1SNQYsn', '', NULL, '', '', '', ''),
(186, 'MCd6qlii766', '', 'aidan.lopez2014@outlook.com', NULL, NULL, '7f4981956b52b7b73be210d86a729960', '2021-08-10 02:24:03', '', 'tecEUkvgH42xJB8XExx2ze9KmX36LoSBt0tx1gMu78se0Tmp7sCTRgLBJwFpGryp', '', NULL, '', '', '', ''),
(187, '9TYNjqk91N7', '', 'joehaynes51@gmail.com', NULL, NULL, 'd19ce86574e5f7d4fc33c679b42f90c4', '2021-08-10 05:40:39', '', 'LZZA0tEB5QF5GSjcwCC3Lb5Y3HovCSEZdiWKRSDlOQd6xd5z9e4S1gqlgnPh5SxY', '', NULL, '', '', '', ''),
(188, '9RjyZS9yLfz', '', 'brennenalvarez@gmail.com', NULL, NULL, 'ad700a06cac231c01049be7b1976351c', '2021-08-10 05:58:04', '', 'JpjQUC3OrFGPSLWEHr8f9zVdgknNbLgzOMoz1Bh6GcWGIIHmDcv3oRIzN8qBlP14', '', NULL, '', '', '', ''),
(189, 'bcyCqRPQZ3d', '', 'murphy.sophia@gmail.com', NULL, NULL, 'c650f2beba95238393786ee468c7584c', '2021-08-10 13:29:47', '', 'qJFQfYqNwdIaFJ7CQSahfQd1doJg6zCGRrZNYB3LskSYbb3WmPhrGNCvXOD8Ce8j', '', NULL, '', '', '', ''),
(190, 'X6MhBZArkae', '', 'ashleyncassell@gmail.com', NULL, NULL, '74da22f46fd4542809a07a94dd2b2bda', '2021-08-10 17:16:45', '', '5PQb8gBE7tmct1WClnSc4L2x8hDF89O3ynZG4vuOzTv9a34fJNiGjnyC1mqw2P5d', '', NULL, '', '', '', ''),
(191, 'bpsv5QPvXeX', '', 'tennie_tough@yahoo.com', NULL, NULL, '35144c040b70000161cc5f44fd2ba464', '2021-08-10 19:32:10', '', 'qqpLKBgw4KoG0pZcTpK3XhE6s5cmGfyhwxMI44hWNLWrUx5nu6or9K9dB3PDPPqt', '', NULL, '', '', '', ''),
(192, 'Abmkxc9DoIB', '', 'taylorhebrank@gmail.com', NULL, NULL, 'db257852390c1037de01a8d5228f58a1', '2021-08-10 19:53:12', '', 'VYL2nRwtRBlULupctxXSdoXaRgIshNSTVBIwCvN3swQ7Kl3yLAsvWf6XHOYQoTq9', '', NULL, '', '', '', ''),
(193, 'OIo4WQ3ouWU', '', 'ponchandjohn@gmail.com', NULL, NULL, '5db5615c98bf57b54e233f9af498ef08', '2021-08-10 20:29:46', '', 'e6ADlFiTYqUmKr7Y7yDKDeHlWkfIn60kymVAr2k0HAjZ4bBhUk0zcOcSLcVzqZp3', '', NULL, '', '', '', ''),
(194, 'xfFKRAcXETI', '', 'johnsonjeremy92@gmail.com', NULL, NULL, 'd62850eb911bb63c27d7a51aef065a25', '2021-08-11 01:58:52', '', 'k2f1TlcELlzNRbXQmqZXJ97WKx85kjDjznkjrLysGwTWo4Neb8Fe4nEVyP51pzQo', '', NULL, '', '', '', ''),
(195, 'tNbKLFlVQDL', '', 'shoaa.a-1411@hotmail.com', NULL, NULL, '729b47cb1d5722ccdec3b787cbdeb590', '2021-08-11 03:22:38', '', 'RkJMvmoCFQDHlCHWIcmPe5VYlE4e3Qfg2aXDgCwdL33hw2fAiyKIhv9wpFKCFFwV', '', NULL, '', '', '', ''),
(196, 'LZOQufB7OaB', '', 'idekanymoretbh1@gmail.com', NULL, NULL, '508d8b2fd43b18dd8394b21c5b1354ff', '2021-08-11 03:25:25', '', '0H16IygAMtrS5HXiJvPqs2UpswoJK9gAGdzMV86jYu44ER7pMqu09ZFVIAlZG7ZT', '', NULL, '', '', '', ''),
(197, 'eMrbRcFJIlU', '', 'selby.vania@yahoo.com', NULL, NULL, '13ac3a6d663c27d686e066737ca0af9c', '2021-08-11 03:32:25', '', 'QS5pme4564EkxXRCNMbS7ddwWdEi7W8IISc8qqRpx53GiZux5NHE4RKQCmds317o', '', NULL, '', '', '', ''),
(198, '2CAdKgkfV5a', '', 'filo360@o2.pl', NULL, NULL, '293f204e0448cc93c16d21dd2775a95b', '2021-08-11 07:09:24', '', 'lFeiwbwlxqGHsZRN5f9cn9GRV7rH6zErbqueRUMOkf3ACTtqbpmv5Xtx7nErgqQi', '', NULL, '', '', '', ''),
(199, 'zeh90tYnFVS', '', 'janimenelaws@yahoo.com', NULL, NULL, '83c146008a502efcba1b7c6035e2577b', '2021-08-11 08:26:09', '', 'mPIbZaEIC4aZMagxoK5QMJsnBbkPsodJFJX0U4Vkjx0akjKKhO2WkDON1uPTxcuX', '', NULL, '', '', '', ''),
(200, 'ktHuiH04GbV', '', 'markitahamm@gmail.com', NULL, NULL, '3038a44939263d3984500ad03b24cdc1', '2021-08-11 09:20:18', '', 'Sz4CbuI8fbYriUaOZtcoakSdM6qUCjY7CxoAxgvU0fz1E91cqPpniPk4YtqzBECs', '', NULL, '', '', '', ''),
(201, 'N7JpspEpWNK', '', 'productsven@gmail.com', NULL, NULL, 'c10674c1dbe70ad4ff5e99027cde9838', '2021-08-11 09:32:42', '', 'NdVlcXsCkng7nfAaoLPXNYm159YnnL8NYimdTqSLQy05wY4nUo28FacGAdcMXUYZ', '', NULL, '', '', '', ''),
(202, '3fCO4bTEHYG', '', 'glen@vantek.org', NULL, NULL, 'ace5fcd854f81573edc4c730607eda14', '2021-08-11 10:05:16', '', 'OOSGagQhwKc3wpkWMhrjhgzg5ruZgA11S8M8TwxFatZNR4nFMVu4rLDFD55O84nc', '', NULL, '', '', '', ''),
(203, '34SUuERK1Dp', '', 'lurline.monteith@yahoo.com', NULL, NULL, '7e6f3526d2d90cedbd47ea741b380674', '2021-08-11 12:08:31', '', 'jUsvANd33yTSbVxWLUhImKnQlCJ42JyGs9pUw9izfEk1UZbanU5JJ0FeYkQVNtVF', '', NULL, '', '', '', ''),
(204, 'ENAdCXpXbkD', '', 'connorlanghoff@gmail.com', NULL, NULL, '94aff760fe3b1c46776c56f4e3053810', '2021-08-11 17:27:36', '', 'GFOBlRXaLN1Vg0r7uzpp04pGIhn0LD6sXPk7W47AHSOWleA1pZNH1uKp2U49xi0S', '', NULL, '', '', '', ''),
(205, 'Zz8l26Xdmri', '', 'keri@redpillmedical.com', NULL, NULL, '6d2dc01aeb5f83febf2874999f43bf0e', '2021-08-11 21:58:50', '', 'aPdsNRIEhrGHQbSeDgGCLNSXnKWvVCBa8eYX1eAY6AyiikVxg2zKftuznWanZ261', '', NULL, '', '', '', ''),
(206, 'f5dTbpxoh4L', '', 'guym5779@gmail.com', NULL, NULL, 'e73fd395a2972b130fa7d34f582c0a13', '2021-08-11 22:39:00', '', 'BM1S0McUfvunprSuVUJ8hOQSPBQrVWQUyItum9gD606iRT6mJCLul32wgBY5thJu', '', NULL, '', '', '', ''),
(207, 'Ra4OvJhEFrM', '', 'pageroxie@yahoo.com', NULL, NULL, '69b328b3c1dc0b38fe3767cbc87c978c', '2021-08-12 00:07:37', '', '8G5eIG6fEQCtL7ET5AUpji8c4bq2S3Ri6lo388rmL2BCDCyv0vRrUeJ46zNBXp9U', '', NULL, '', '', '', ''),
(208, 'E2XYSr8LDbj', '', 'anna@skamarakas.com', NULL, NULL, '6b05e51bfef8cd503d2c4231728e1828', '2021-08-12 00:55:20', '', 'qYnIX89TWaqD3JKgfZbGlUJ9O9VO3bfqiF4om53SappffwbgQOIYYMA0NlhfQmpw', '', NULL, '', '', '', ''),
(209, 'PII3dbR6CRd', '', 'issacdeleon@hotmail.com', NULL, NULL, '46830793fb50beeda17c9deade7199de', '2021-08-12 01:57:42', '', 'b7bn2PDeiBCBenJsPMjrItf1vst2BXHZkCY2LLPo4JCHQVhiHqtZrNCwaW1kPk8e', '', NULL, '', '', '', ''),
(210, 'SCgNLyHLc18', '', 'adcarlson@mail.roanoke.edu', NULL, NULL, '34104583da34023f9d63d01f09ad9b9f', '2021-08-12 02:15:51', '', 'g4li90mEqpxu0gkHTj4KXbUWMuMgATyjhlETsW9vom1q37RlnMi0r54Cw1jcJ0JJ', '', NULL, '', '', '', ''),
(211, 'vluSIfa2Wyk', '', 'adamwilbanks.contact@gmail.com', NULL, NULL, '0c32e7656f0edb24758413c8c9343fdf', '2021-08-12 05:29:48', '', 'gEsjvmrQjh3FEu7SFeUfjwQ1CdORTzESzTLSVUTjj1mQJ9Hf5v9DspCVjwGSbncz', '', NULL, '', '', '', ''),
(212, 'rGYyYOC08Av', '', 'gavenbentley@icloud.com', NULL, NULL, 'c26c73b2c3d1c4f2626daee69ea56eb2', '2021-08-12 08:59:42', '', '1dh3eh6Wm5tYhWW43g7ySinj6VERSO3qQCSGuDEBQbeQYReyJHXnx3vOIJlHajnF', '', NULL, '', '', '', ''),
(213, 'WHvQ1KC9aN7', '', 'collerville@gmail.com', NULL, NULL, 'e02980ce96afb2070c4013788f8dbcf2', '2021-08-12 19:42:27', '', 'kx9zz4uUShvyiFoR6gpjeYn1VTP1bC6pakwjEFX0yddys9KwHq4L7O091VFwzAkg', '', NULL, '', '', '', ''),
(214, 'VUV1Zd6gVIe', '', 'solakgiller@gmail.com', NULL, NULL, '45585234b33dc4ea0e30599fd02a5713', '2021-08-12 21:09:32', '', 'FWyrUMHUAD9zWxccfPiYMIkhuEo0riNyW2h7mVzybQSBV2InV83HwCRIdxclzyeI', '', NULL, '', '', '', ''),
(215, 'aXf8er5Vgws', '', 'cdebouch@amphi.com', NULL, NULL, '5f160c235092fedd0d9318d809335907', '2021-08-12 23:15:45', '', 'Xm9KD76Behb8aaCK3jKSgGCe1VoWNXgV6Z7EYoKkECIdhNk6vngFDxW1UDelOeYi', '', NULL, '', '', '', ''),
(216, 'ClQnWnARbGd', '', 'adp29063@gmail.com', NULL, NULL, '3b9bbd5ccd457a596d64f26e7520364d', '2021-08-13 00:05:24', '', 'KIeqEVBKWFDiWTuYFoYnLBsBCQPuPMYkMEdf8ydvCD7J7tnfkUJ9KFxEpWxli4Q4', '', NULL, '', '', '', ''),
(217, 'IgNnpwEbSwp', '', 'gavin@langlie.com', NULL, NULL, '5201f34d1bb244246ae7f4942d03234b', '2021-08-13 01:30:17', '', '9U6HI5ZSTsrwfiRdGhxDRIE5OIx4xZv5SqlInN7Pyk6s1LAvHqkLFVxavm41q8IQ', '', NULL, '', '', '', ''),
(218, 'E5GV2oz6INc', '', 'suepwilliams85@gmail.com', NULL, NULL, '9df8c308c17d06a4336f60c5b66335c4', '2021-08-13 01:30:26', '', 'mveRAeZFXLJEDGL4l8qzTfrUNaT4V0yfeoqonq0H54ekSIDhSXOHy2Wb0VItulCF', '', NULL, '', '', '', ''),
(219, 'b5WZ1oiARUW', '', 'rendad3edueber@yahoo.com', NULL, NULL, '088138cb5ad77cdb2196fad88ab6a9cf', '2021-08-13 02:40:57', '', 'tCYQNhX4q1daWnOshzp1OBzfJf0DuLiERx4qYZxnSLhBDOxzCIOacmGJp1FclrpV', '', NULL, '', '', '', ''),
(220, '6XkCmy6pXCE', '', 'tracyjc1@optimum.net', NULL, NULL, 'b066df84b4c803c12659e8dcbbb51797', '2021-08-13 04:46:02', '', '57b62dSnpLwlKNjGfuHNpaMElRhK8wjYSqCZ1cnyOq06l0IMa2G2iDIJtq2PXwRc', '', NULL, '', '', '', ''),
(221, 'g2vlc8rkXtP', '', 'josefplitzko@o2.pl', NULL, NULL, '82974d30100479800bcfde2fca786dfe', '2021-08-13 07:33:50', '', 'ftpRoZNy8CXoQZJvH4OK5ilXddKkIr7EiVqqT6KesUkACia1i9rNT9YDhn8wnixn', '', NULL, '', '', '', ''),
(222, 'qPqRNLtBvXI', '', 'alancv5@yahoo.com', NULL, NULL, '7c1f54b7d5b8f12dfd29e4c698603c2d', '2021-08-13 10:22:43', '', 'wYhgdyGrXvQS2hWMs6uSTvnB8mNUYQkdcCgYIuPE6YAQs3NNLqGaXZDvILEyaNsY', '', NULL, '', '', '', ''),
(223, '7NEeQq6bcGV', '', 'tracyboys@comcast.net', NULL, NULL, 'e1f2961e9b7393aaeaefd2e20e025c99', '2021-08-13 10:23:49', '', 'KRmJzqo4nIkDPvyS0xAPmwY81QbtXROQ6FV1dgewlr4AScD82R5YttgEdkrhTO4Z', '', NULL, '', '', '', ''),
(224, '16RnOeFyLzd', '', 'maisoonkz.37@gmail.com', NULL, NULL, 'f76f1d10ee22e254a46ab7a5692be24b', '2021-08-13 11:15:34', '', 'kOYBAutjH7pmqH6BSB763aVDgqhuyqCIDzmui6TRPFaqvO5JTgy9o5On9vFezpbp', '', NULL, '', '', '', ''),
(225, 'CMuetDgxV1u', '', 'marleymflueger@gmail.com', NULL, NULL, '228c9902cb4d9c33885dad26ad11b967', '2021-08-13 15:51:00', '', '9DNkTDwmmxCCWlSG0ydYtgLf2EeaXHyLVIRQoLjoRFXBcGHEKHY56h6bTtyffWOb', '', NULL, '', '', '', ''),
(226, 'MgR0muS1LlP', '', 'bonebosstj@gmail.com', NULL, NULL, '85e604f6d0aeb897049994c2354c690f', '2021-08-13 21:34:47', '', 'U60sJnkPsWsECiBEkzw5buX5yNMq8LzdSYWbxGocfZRmZpMFS5cymvINCtQPPena', '', NULL, '', '', '', ''),
(227, 'Nk1xs160E5C', '', 'miss.say@gmail.com', NULL, NULL, '42b062b7ef42df343a3a51094af0b703', '2021-08-13 22:11:36', '', 'zC04QQmeOjX7WsdwmP00nn31gWBQ6b0KJcdqUpx03fCcMkLviGIYJfE9ouhnrBhY', '', NULL, '', '', '', ''),
(228, 'bJKYOxN6HQB', '', 'hgarcell@gmail.com', NULL, NULL, '84435dfe3cba120a44935b424233d3b2', '2021-08-14 06:36:08', '', 'qlZaRDUGFv2qpJShYbCZ0m14YJGHB2xQLOQ1cm5BQNIxZxD4lg9u5DpmC4TJ28sg', '', NULL, '', '', '', ''),
(229, 'w6mDENNkT13', '', 'alialocke1@gmail.com', NULL, NULL, '25e802e7b6e36cbce09d30bbe0fd8a79', '2021-08-14 08:25:20', '', 'C44QRaHofF0SPOV6QqCS5w8H6RCAG51y1XonQq270JiRQy152cNHAvLl6bDhJX3i', '', NULL, '', '', '', ''),
(230, 'QWCXi4Ql3cl', '', 'parkertw61@gmail.com', NULL, NULL, '48f75e288c56e3b21940e201b3246b12', '2021-08-14 19:50:01', '', 'kNwKixK21U0W15IPhs3Fey6nKm3fJOZ8DS3c2aV1VHdnp2fiocvLM1zbsTBYcqCE', '', NULL, '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `collections`
--
ALTER TABLE `collections`
  ADD PRIMARY KEY (`collectionsId`);

--
-- Indexes for table `communities`
--
ALTER TABLE `communities`
  ADD PRIMARY KEY (`communitiesId`);

--
-- Indexes for table `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`publishersId`);

--
-- Indexes for table `uniquemaster`
--
ALTER TABLE `uniquemaster`
  ADD PRIMARY KEY (`uniqueMasterId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `collections`
--
ALTER TABLE `collections`
  MODIFY `collectionsId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `communities`
--
ALTER TABLE `communities`
  MODIFY `communitiesId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `publishers`
--
ALTER TABLE `publishers`
  MODIFY `publishersId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `uniquemaster`
--
ALTER TABLE `uniquemaster`
  MODIFY `uniqueMasterId` int(64) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(64) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
