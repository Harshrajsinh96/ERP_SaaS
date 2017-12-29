-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2017 at 11:34 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `college2`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_calender`
--

CREATE TABLE `academic_calender` (
  `academic_id` smallint(5) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `discipline_id` tinyint(2) NOT NULL COMMENT '** Foreign Key',
  `sem_id` tinyint(2) NOT NULL COMMENT '** Foreign Key',
  `year` varchar(10) COLLATE utf32_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `academic_calender`
--

INSERT INTO `academic_calender` (`academic_id`, `start_date`, `end_date`, `discipline_id`, `sem_id`, `year`) VALUES
(1, '2016-12-19', '2017-04-20', 1, 8, '2016-17'),
(2, '2016-12-19', '2017-04-20', 1, 6, '2016-17'),
(3, '2017-01-16', '2017-05-18', 1, 4, '2017'),
(4, '2017-02-06', '2017-05-18', 1, 2, '2017');

-- --------------------------------------------------------

--
-- Table structure for table `addr_city_table`
--

CREATE TABLE `addr_city_table` (
  `city_id` smallint(4) UNSIGNED NOT NULL,
  `state_id` tinyint(2) NOT NULL,
  `city_name` varchar(50) COLLATE utf32_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `addr_city_table`
--

INSERT INTO `addr_city_table` (`city_id`, `state_id`, `city_name`) VALUES
(1, 21, 'Mumbai'),
(2, 10, 'Delhi'),
(3, 17, 'Bengaluru'),
(4, 12, 'Ahmedabad'),
(5, 32, 'Hyderabad'),
(6, 31, 'Chennai'),
(7, 36, 'Kolkata'),
(8, 21, 'Pune'),
(9, 29, 'Jaipur'),
(10, 12, 'Surat'),
(11, 34, 'Lucknow'),
(12, 34, 'Kanpur'),
(13, 21, 'Nagpur'),
(14, 5, 'Patna'),
(15, 20, 'Indore'),
(16, 21, 'Thane'),
(17, 20, 'Bhopal'),
(18, 2, 'Visakhapatnam'),
(19, 12, 'Vadodara'),
(20, 34, 'Firozabad'),
(21, 28, 'Ludhiana'),
(22, 12, 'Rajkot'),
(23, 34, 'Agra'),
(24, 36, 'Siliguri'),
(25, 21, 'Nashik'),
(26, 13, 'Faridabad'),
(27, 28, 'Patiala'),
(28, 34, 'Meerut'),
(29, 21, 'Kalyan-Dombivali'),
(30, 21, 'Vasai-Virar'),
(31, 34, 'Varanasi'),
(32, 15, 'Srinagar'),
(33, 16, 'Dhanbad'),
(34, 29, 'Jodhpur'),
(35, 28, 'Amritsar'),
(36, 7, 'Raipur'),
(37, 34, 'Allahabad'),
(38, 31, 'Coimbatore'),
(39, 20, 'Jabalpur'),
(40, 20, 'Gwalior'),
(41, 2, 'Vijayawada'),
(42, 31, 'Madurai'),
(43, 4, 'Guwahati'),
(44, 6, 'Chandigarh'),
(45, 17, 'Hubli-Dharwad'),
(46, 34, 'Amroha'),
(47, 34, 'Moradabad'),
(48, 13, 'Gurgaon'),
(49, 34, 'Aligarh'),
(50, 21, 'Solapur'),
(51, 16, 'Ranchi'),
(52, 28, 'Jalandhar'),
(53, 31, 'Tiruchirappalli'),
(54, 26, 'Bhubaneswar'),
(55, 31, 'Salem'),
(56, 32, 'Warangal'),
(57, 21, 'Mira-Bhayandar'),
(58, 18, 'Thiruvananthapuram'),
(59, 21, 'Bhiwandi'),
(60, 34, 'Saharanpur'),
(61, 2, 'Guntur'),
(62, 21, 'Amravati'),
(63, 29, 'Bikaner'),
(64, 34, 'Noida'),
(65, 16, 'Jamshedpur'),
(66, 7, 'Bhilai Nagar'),
(67, 26, 'Cuttack'),
(68, 18, 'Kochi'),
(69, 29, 'Udaipur'),
(70, 12, 'Bhavnagar'),
(71, 35, 'Dehradun'),
(72, 36, 'Asansol'),
(73, 21, 'Nanded-Waghala'),
(74, 29, 'Ajmer'),
(75, 12, 'Jamnagar'),
(76, 20, 'Ujjain'),
(77, 21, 'Sangli'),
(78, 34, 'Loni'),
(79, 34, 'Jhansi'),
(80, 27, 'Pondicherry'),
(81, 2, 'Nellore'),
(82, 15, 'Jammu'),
(83, 17, 'Belagavi'),
(84, 26, 'Raurkela'),
(85, 17, 'Mangaluru'),
(86, 31, 'Tirunelveli'),
(87, 21, 'Malegaon'),
(88, 5, 'Gaya'),
(89, 31, 'Tiruppur'),
(90, 17, 'Davanagere'),
(91, 18, 'Kozhikode'),
(92, 21, 'Akola'),
(93, 2, 'Kurnool'),
(94, 16, 'Bokaro Steel City'),
(95, 2, 'Rajahmundry'),
(96, 17, 'Ballari'),
(97, 33, 'Agartala'),
(98, 5, 'Bhagalpur'),
(99, 21, 'Latur'),
(100, 21, 'Dhule'),
(101, 7, 'Korba'),
(102, 29, 'Bhilwara'),
(103, 26, 'Brahmapur'),
(104, 17, 'Mysore'),
(105, 5, 'Muzaffarpur'),
(106, 21, 'Ahmednagar'),
(107, 18, 'Kollam'),
(108, 36, 'Raghunathganj'),
(109, 7, 'Bilaspur'),
(110, 34, 'Shahjahanpur'),
(111, 18, 'Thrissur'),
(112, 29, 'Alwar'),
(113, 2, 'Kakinada'),
(114, 32, 'Nizamabad'),
(115, 20, 'Sagar'),
(116, 17, 'Tumkur'),
(117, 13, 'Hisar'),
(118, 13, 'Rohtak'),
(119, 13, 'Panipat'),
(120, 5, 'Darbhanga'),
(121, 36, 'Kharagpur'),
(122, 24, 'Aizawl'),
(123, 21, 'Ichalkaranji'),
(124, 2, 'Tirupati'),
(125, 13, 'Karnal'),
(126, 28, 'Bathinda'),
(127, 34, 'Rampur'),
(128, 17, 'Shivamogga'),
(129, 20, 'Ratlam'),
(130, 34, 'Modinagar'),
(131, 7, 'Durg'),
(132, 23, 'Shillong'),
(133, 22, 'Imphal'),
(134, 34, 'Hapur'),
(135, 31, 'Ranipet'),
(136, 2, 'Anantapur'),
(137, 5, 'Arrah'),
(138, 32, 'Karimnagar'),
(139, 21, 'Parbhani'),
(140, 34, 'Etawah'),
(141, 29, 'Bharatpur'),
(142, 5, 'Begusarai'),
(143, 10, 'New Delhi'),
(144, 5, 'Chhapra'),
(145, 2, 'Kadapa'),
(146, 32, 'Ramagundam'),
(147, 29, 'Pali'),
(148, 20, 'Satna'),
(149, 2, 'Vizianagaram'),
(150, 5, 'Katihar'),
(151, 35, 'Hardwar'),
(152, 13, 'Sonipat'),
(153, 31, 'Nagercoil'),
(154, 31, 'Thanjavur'),
(155, 20, 'Murwara (Katni)'),
(156, 36, 'Naihati'),
(157, 34, 'Sambhal'),
(158, 12, 'Nadiad'),
(159, 13, 'Yamunanagar'),
(160, 36, 'English Bazar'),
(161, 2, 'Eluru'),
(162, 5, 'Munger'),
(163, 13, 'Panchkula'),
(164, 17, 'Raayachuru'),
(165, 21, 'Panvel'),
(166, 16, 'Deoghar'),
(167, 2, 'Ongole'),
(168, 2, 'Nandyal'),
(169, 20, 'Morena'),
(170, 13, 'Bhiwani'),
(171, 12, 'Porbandar'),
(172, 18, 'Palakkad'),
(173, 12, 'Anand'),
(174, 5, 'Purnia'),
(175, 36, 'Baharampur'),
(176, 29, 'Barmer'),
(177, 12, 'Morvi'),
(178, 34, 'Orai'),
(179, 34, 'Bahraich'),
(180, 29, 'Sikar'),
(181, 31, 'Vellore'),
(182, 20, 'Singrauli'),
(183, 32, 'Khammam'),
(184, 12, 'Mahesana'),
(185, 4, 'Silchar'),
(186, 26, 'Sambalpur'),
(187, 20, 'Rewa'),
(188, 34, 'Unnao'),
(189, 36, 'Hugli-Chinsurah'),
(190, 36, 'Raiganj'),
(191, 16, 'Phusro'),
(192, 16, 'Adityapur'),
(193, 18, 'Alappuzha'),
(194, 13, 'Bahadurgarh'),
(195, 2, 'Machilipatnam'),
(196, 34, 'Rae Bareli'),
(197, 36, 'Jalpaiguri'),
(198, 12, 'Bharuch'),
(199, 28, 'Pathankot'),
(200, 28, 'Hoshiarpur'),
(201, 15, 'Baramula'),
(202, 2, 'Adoni'),
(203, 13, 'Jind'),
(204, 29, 'Tonk'),
(205, 2, 'Tenali'),
(206, 31, 'Kancheepuram'),
(207, 12, 'Vapi'),
(208, 13, 'Sirsa'),
(209, 12, 'Navsari'),
(210, 32, 'Mahbubnagar'),
(211, 26, 'Puri'),
(212, 17, 'Robertson Pet'),
(213, 31, 'Erode'),
(214, 28, 'Batala'),
(215, 35, 'Haldwani-cum-Kathgodam'),
(216, 20, 'Vidisha'),
(217, 5, 'Saharsa'),
(218, 13, 'Thanesar'),
(219, 2, 'Chittoor'),
(220, 12, 'Veraval'),
(221, 34, 'Lakhimpur'),
(222, 34, 'Sitapur'),
(223, 2, 'Hindupur'),
(224, 36, 'Santipur'),
(225, 36, 'Balurghat'),
(226, 20, 'Ganjbasoda'),
(227, 28, 'Moga'),
(228, 2, 'Proddatur'),
(229, 35, 'Srinagar'),
(230, 36, 'Medinipur'),
(231, 36, 'Habra'),
(232, 5, 'Sasaram'),
(233, 5, 'Hajipur'),
(234, 12, 'Bhuj'),
(235, 20, 'Shivpuri'),
(236, 36, 'Ranaghat'),
(237, 14, 'Shimla'),
(238, 31, 'Tiruvannamalai'),
(239, 13, 'Kaithal'),
(240, 7, 'Rajnandgaon'),
(241, 12, 'Godhra'),
(242, 16, 'Hazaribag'),
(243, 2, 'Bhimavaram'),
(244, 20, 'Mandsaur'),
(245, 4, 'Dibrugarh'),
(246, 17, 'Kolar'),
(247, 36, 'Bankura'),
(248, 17, 'Mandya'),
(249, 5, 'Dehri-on-Sone'),
(250, 2, 'Madanapalle'),
(251, 28, 'Malerkotla'),
(252, 34, 'Lalitpur'),
(253, 5, 'Bettiah'),
(254, 31, 'Pollachi'),
(255, 28, 'Khanna'),
(256, 20, 'Neemuch'),
(257, 13, 'Palwal'),
(258, 12, 'Palanpur'),
(259, 2, 'Guntakal'),
(260, 36, 'Nabadwip'),
(261, 17, 'Udupi'),
(262, 7, 'Jagdalpur'),
(263, 5, 'Motihari'),
(264, 34, 'Pilibhit'),
(265, 25, 'Dimapur'),
(266, 28, 'Mohali'),
(267, 29, 'Sadulpur'),
(268, 31, 'Rajapalayam'),
(269, 2, 'Dharmavaram'),
(270, 35, 'Kashipur'),
(271, 31, 'Sivakasi'),
(272, 36, 'Darjiling'),
(273, 17, 'Chikkamagaluru'),
(274, 2, 'Gudivada'),
(275, 26, 'Baleshwar Town'),
(276, 32, 'Mancherial'),
(277, 2, 'Srikakulam'),
(278, 32, 'Adilabad'),
(279, 21, 'Yavatmal'),
(280, 28, 'Barnala'),
(281, 4, 'Nagaon'),
(282, 2, 'Narasaraopet'),
(283, 7, 'Raigarh'),
(284, 35, 'Roorkee'),
(285, 12, 'Valsad'),
(286, 7, 'Ambikapur'),
(287, 16, 'Giridih'),
(288, 34, 'Chandausi'),
(289, 36, 'Purulia'),
(290, 12, 'Patan'),
(291, 5, 'Bagaha'),
(292, 34, 'Hardoi'),
(293, 21, 'Achalpur'),
(294, 21, 'Osmanabad'),
(295, 12, 'Deesa'),
(296, 21, 'Nandurbar'),
(297, 34, 'Azamgarh'),
(298, 16, 'Ramgarh'),
(299, 28, 'Firozpur'),
(300, 26, 'Baripada Town'),
(301, 17, 'Karwar'),
(302, 5, 'Siwan'),
(303, 2, 'Rajampet'),
(304, 31, 'Pudukkottai'),
(305, 15, 'Anantnag'),
(306, 2, 'Tadpatri'),
(307, 21, 'Satara'),
(308, 26, 'Bhadrak'),
(309, 5, 'Kishanganj'),
(310, 32, 'Suryapet'),
(311, 21, 'Wardha'),
(312, 17, 'Ranebennuru'),
(313, 12, 'Amreli'),
(314, 31, 'Neyveli (TS)'),
(315, 5, 'Jamalpur'),
(316, 11, 'Marmagao'),
(317, 21, 'Udgir'),
(318, 2, 'Tadepalligudem'),
(319, 31, 'Nagapattinam'),
(320, 5, 'Buxar'),
(321, 21, 'Aurangabad'),
(322, 5, 'Jehanabad'),
(323, 28, 'Phagwara'),
(324, 34, 'Khair'),
(325, 29, 'Sawai Madhopur'),
(326, 28, 'Kapurthala'),
(327, 2, 'Chilakaluripet'),
(328, 5, 'Aurangabad'),
(329, 18, 'Malappuram'),
(330, 13, 'Rewari'),
(331, 29, 'Nagaur'),
(332, 34, 'Sultanpur'),
(333, 20, 'Nagda'),
(334, 1, 'Port Blair'),
(335, 5, 'Lakhisarai'),
(336, 11, 'Panaji'),
(337, 4, 'Tinsukia'),
(338, 20, 'Itarsi'),
(339, 25, 'Kohima'),
(340, 26, 'Balangir'),
(341, 5, 'Nawada'),
(342, 26, 'Jharsuguda'),
(343, 32, 'Jagtial'),
(344, 31, 'Viluppuram'),
(345, 21, 'Amalner'),
(346, 28, 'Zirakpur'),
(347, 34, 'Tanda'),
(348, 31, 'Tiruchengode'),
(349, 34, 'Nagina'),
(350, 2, 'Yemmiganur'),
(351, 31, 'Vaniyambadi'),
(352, 20, 'Sarni'),
(353, 31, 'Theni Allinagaram'),
(354, 11, 'Margao'),
(355, 21, 'Akot'),
(356, 20, 'Sehore'),
(357, 20, 'Mhow Cantonment'),
(358, 28, 'Kot Kapura'),
(359, 29, 'Makrana'),
(360, 21, 'Pandharpur'),
(361, 32, 'Miryalaguda'),
(362, 34, 'Shamli'),
(363, 20, 'Seoni'),
(364, 17, 'Ranibennur'),
(365, 2, 'Kadiri'),
(366, 21, 'Shrirampur'),
(367, 35, 'Rudrapur'),
(368, 21, 'Parli'),
(369, 34, 'Najibabad'),
(370, 32, 'Nirmal'),
(371, 31, 'Udhagamandalam'),
(372, 34, 'Shikohabad'),
(373, 16, 'Jhumri Tilaiya'),
(374, 31, 'Aruppukkottai'),
(375, 18, 'Ponnani'),
(376, 5, 'Jamui'),
(377, 5, 'Sitamarhi'),
(378, 2, 'Chirala'),
(379, 12, 'Anjar'),
(380, 27, 'Karaikal'),
(381, 13, 'Hansi'),
(382, 2, 'Anakapalle'),
(383, 7, 'Mahasamund'),
(384, 28, 'Faridkot'),
(385, 16, 'Saunda'),
(386, 12, 'Dhoraji'),
(387, 31, 'Paramakudi'),
(388, 20, 'Balaghat'),
(389, 29, 'Sujangarh'),
(390, 12, 'Khambhat'),
(391, 28, 'Muktsar'),
(392, 28, 'Rajpura'),
(393, 2, 'Kavali'),
(394, 7, 'Dhamtari'),
(395, 20, 'Ashok Nagar'),
(396, 29, 'Sardarshahar'),
(397, 12, 'Mahuva'),
(398, 26, 'Bargarh'),
(399, 32, 'Kamareddy'),
(400, 16, 'Sahibganj'),
(401, 32, 'Kothagudem'),
(402, 17, 'Ramanagaram'),
(403, 17, 'Gokak'),
(404, 20, 'Tikamgarh'),
(405, 5, 'Araria'),
(406, 35, 'Rishikesh'),
(407, 20, 'Shahdol'),
(408, 16, 'Medininagar (Daltonganj)'),
(409, 31, 'Arakkonam'),
(410, 21, 'Washim'),
(411, 28, 'Sangrur'),
(412, 32, 'Bodhan'),
(413, 28, 'Fazilka'),
(414, 2, 'Palacole'),
(415, 12, 'Keshod'),
(416, 2, 'Sullurpeta'),
(417, 12, 'Wadhwan'),
(418, 28, 'Gurdaspur'),
(419, 18, 'Vatakara'),
(420, 23, 'Tura'),
(421, 13, 'Narnaul'),
(422, 28, 'Kharar'),
(423, 17, 'Yadgir'),
(424, 21, 'Ambejogai'),
(425, 12, 'Ankleshwar'),
(426, 12, 'Savarkundla'),
(427, 26, 'Paradip'),
(428, 31, 'Virudhachalam'),
(429, 18, 'Kanhangad'),
(430, 12, 'Kadi'),
(431, 31, 'Srivilliputhur'),
(432, 28, 'Gobindgarh'),
(433, 31, 'Tindivanam'),
(434, 28, 'Mansa'),
(435, 18, 'Taliparamba'),
(436, 21, 'Manmad'),
(437, 2, 'Tanuku'),
(438, 2, 'Rayachoti'),
(439, 31, 'Virudhunagar'),
(440, 18, 'Koyilandy'),
(441, 4, 'Jorhat'),
(442, 31, 'Karur'),
(443, 31, 'Valparai'),
(444, 2, 'Srikalahasti'),
(445, 18, 'Neyyattinkara'),
(446, 2, 'Bapatla'),
(447, 13, 'Fatehabad'),
(448, 28, 'Malout'),
(449, 31, 'Sankarankovil'),
(450, 31, 'Tenkasi'),
(451, 21, 'Ratnagiri'),
(452, 17, 'Rabkavi Banhatti'),
(453, 34, 'Sikandrabad'),
(454, 16, 'Chaibasa'),
(455, 7, 'Chirmiri'),
(456, 32, 'Palwancha'),
(457, 26, 'Bhawanipatna'),
(458, 18, 'Kayamkulam'),
(459, 20, 'Pithampur'),
(460, 28, 'Nabha'),
(461, 34, 'Shahabad Hardoi'),
(462, 26, 'Dhenkanal'),
(463, 21, 'Uran Islampur'),
(464, 5, 'Gopalganj'),
(465, 4, 'Bongaigaon City'),
(466, 31, 'Palani'),
(467, 21, 'Pusad'),
(468, 15, 'Sopore'),
(469, 34, 'Pilkhuwa'),
(470, 28, 'Tarn Taran'),
(471, 34, 'Renukoot'),
(472, 32, 'Mandamarri'),
(473, 17, 'Shahabad'),
(474, 26, 'Barbil'),
(475, 32, 'Koratla'),
(476, 5, 'Madhubani'),
(477, 36, 'Arambagh'),
(478, 13, 'Gohana'),
(479, 29, 'Ladnu'),
(480, 31, 'Pattukkottai'),
(481, 17, 'Sirsi'),
(482, 32, 'Sircilla'),
(483, 36, 'Tamluk'),
(484, 28, 'Jagraon'),
(485, 36, 'AlipurdUrban Agglomerationr'),
(486, 20, 'Alirajpur'),
(487, 32, 'Tandur'),
(488, 2, 'Naidupet'),
(489, 31, 'Tirupathur'),
(490, 13, 'Tohana'),
(491, 29, 'Ratangarh'),
(492, 4, 'Dhubri'),
(493, 5, 'Masaurhi'),
(494, 12, 'Visnagar'),
(495, 34, 'Vrindavan'),
(496, 29, 'Nokha'),
(497, 2, 'Nagari'),
(498, 13, 'Narwana'),
(499, 31, 'Ramanathapuram'),
(500, 34, 'Ujhani'),
(501, 5, 'Samastipur'),
(502, 34, 'Laharpur'),
(503, 21, 'Sangamner'),
(504, 29, 'Nimbahera'),
(505, 32, 'Siddipet'),
(506, 36, 'Suri'),
(507, 4, 'Diphu'),
(508, 36, 'Jhargram'),
(509, 21, 'Shirpur-Warwade'),
(510, 34, 'Tilhar'),
(511, 17, 'Sindhnur'),
(512, 31, 'Udumalaipettai'),
(513, 21, 'Malkapur'),
(514, 32, 'Wanaparthy'),
(515, 2, 'Gudur'),
(516, 26, 'Kendujhar'),
(517, 20, 'Mandla'),
(518, 14, 'Mandi'),
(519, 18, 'Nedumangad'),
(520, 4, 'North Lakhimpur'),
(521, 2, 'Vinukonda'),
(522, 17, 'Tiptur'),
(523, 31, 'Gobichettipalayam'),
(524, 26, 'Sunabeda'),
(525, 21, 'Wani'),
(526, 12, 'Upleta'),
(527, 2, 'Narasapuram'),
(528, 2, 'Nuzvid'),
(529, 4, 'Tezpur'),
(530, 12, 'Una'),
(531, 2, 'Markapur'),
(532, 20, 'Sheopur'),
(533, 31, 'Thiruvarur'),
(534, 12, 'Sidhpur'),
(535, 34, 'Sahaswan'),
(536, 29, 'Suratgarh'),
(537, 20, 'Shajapur'),
(538, 26, 'Rayagada'),
(539, 21, 'Lonavla'),
(540, 2, 'Ponnur'),
(541, 32, 'Kagaznagar'),
(542, 32, 'Gadwal'),
(543, 7, 'Bhatapara'),
(544, 2, 'Kandukur'),
(545, 32, 'Sangareddy'),
(546, 12, 'Unjha'),
(547, 24, 'Lunglei'),
(548, 4, 'Karimganj'),
(549, 18, 'Kannur'),
(550, 2, 'Bobbili'),
(551, 5, 'Mokameh'),
(552, 21, 'Talegaon Dabhade'),
(553, 21, 'Anjangaon'),
(554, 12, 'Mangrol'),
(555, 28, 'Sunam'),
(556, 36, 'Gangarampur'),
(557, 31, 'Thiruvallur'),
(558, 18, 'Tirur'),
(559, 34, 'Rath'),
(560, 26, 'Jatani'),
(561, 12, 'Viramgam'),
(562, 29, 'Rajsamand'),
(563, 27, 'Yanam'),
(564, 18, 'Kottayam'),
(565, 31, 'Panruti'),
(566, 28, 'Dhuri'),
(567, 31, 'Namakkal'),
(568, 18, 'Kasaragod'),
(569, 12, 'Modasa'),
(570, 2, 'Rayadurg'),
(571, 5, 'Supaul'),
(572, 18, 'Kunnamkulam'),
(573, 21, 'Umred'),
(574, 32, 'Bellampalle'),
(575, 4, 'Sibsagar'),
(576, 13, 'Mandi Dabwali'),
(577, 18, 'Ottappalam'),
(578, 5, 'Dumraon'),
(579, 2, 'Samalkot'),
(580, 2, 'Jaggaiahpet'),
(581, 4, 'Goalpara'),
(582, 2, 'Tuni'),
(583, 29, 'Lachhmangarh'),
(584, 32, 'Bhongir'),
(585, 2, 'Amalapuram'),
(586, 28, 'Firozpur Cantt.'),
(587, 32, 'Vikarabad'),
(588, 18, 'Thiruvalla'),
(589, 34, 'Sherkot'),
(590, 21, 'Palghar'),
(591, 21, 'Shegaon'),
(592, 32, 'Jangaon'),
(593, 2, 'Bheemunipatnam'),
(594, 20, 'Panna'),
(595, 18, 'Thodupuzha'),
(596, 15, 'KathUrban Agglomeration'),
(597, 12, 'Palitana'),
(598, 5, 'Arwal'),
(599, 2, 'Venkatagiri'),
(600, 34, 'Kalpi'),
(601, 29, 'Rajgarh (Churu)'),
(602, 2, 'Sattenapalle'),
(603, 17, 'Arsikere'),
(604, 21, 'Ozar'),
(605, 31, 'Thirumangalam'),
(606, 12, 'Petlad'),
(607, 29, 'Nasirabad'),
(608, 21, 'Phaltan'),
(609, 36, 'Rampurhat'),
(610, 17, 'Nanjangud'),
(611, 5, 'Forbesganj'),
(612, 34, 'Tundla'),
(613, 5, 'BhabUrban Agglomeration'),
(614, 17, 'Sagara'),
(615, 2, 'Pithapuram'),
(616, 17, 'Sira'),
(617, 32, 'Bhadrachalam'),
(618, 13, 'Charkhi Dadri'),
(619, 16, 'Chatra'),
(620, 2, 'Palasa Kasibugga'),
(621, 29, 'Nohar'),
(622, 21, 'Yevla'),
(623, 28, 'Sirhind Fatehgarh Sahib'),
(624, 32, 'Bhainsa'),
(625, 2, 'Parvathipuram'),
(626, 21, 'Shahade'),
(627, 18, 'Chalakudy'),
(628, 5, 'Narkatiaganj'),
(629, 12, 'Kapadvanj'),
(630, 2, 'Macherla'),
(631, 20, 'Raghogarh-Vijaypur'),
(632, 28, 'Rupnagar'),
(633, 5, 'Naugachhia'),
(634, 20, 'Sendhwa'),
(635, 26, 'Byasanagar'),
(636, 34, 'Sandila'),
(637, 2, 'Gooty'),
(638, 2, 'Salur'),
(639, 34, 'Nanpara'),
(640, 34, 'Sardhana'),
(641, 21, 'Vita'),
(642, 16, 'Gumia'),
(643, 17, 'Puttur'),
(644, 28, 'Jalandhar Cantt.'),
(645, 34, 'Nehtaur'),
(646, 18, 'Changanassery'),
(647, 2, 'Mandapeta'),
(648, 16, 'Dumka'),
(649, 34, 'Seohara'),
(650, 21, 'Umarkhed'),
(651, 16, 'Madhupur'),
(652, 31, 'Vikramasingapuram'),
(653, 18, 'Punalur'),
(654, 26, 'Kendrapara'),
(655, 12, 'Sihor'),
(656, 31, 'Nellikuppam'),
(657, 28, 'Samana'),
(658, 21, 'Warora'),
(659, 18, 'Nilambur'),
(660, 31, 'Rasipuram'),
(661, 35, 'Ramnagar'),
(662, 2, 'Jammalamadugu'),
(663, 28, 'Nawanshahr'),
(664, 22, 'Thoubal'),
(665, 17, 'Athni'),
(666, 18, 'Cherthala'),
(667, 20, 'Sidhi'),
(668, 32, 'Farooqnagar'),
(669, 2, 'Peddapuram'),
(670, 16, 'Chirkunda'),
(671, 21, 'Pachora'),
(672, 5, 'Madhepura'),
(673, 35, 'Pithoragarh'),
(674, 21, 'Tumsar'),
(675, 29, 'Phalodi'),
(676, 31, 'Tiruttani'),
(677, 28, 'Rampura Phul'),
(678, 18, 'Perinthalmanna'),
(679, 34, 'Padrauna'),
(680, 20, 'Pipariya'),
(681, 7, 'Dalli-Rajhara'),
(682, 2, 'Punganur'),
(683, 18, 'Mattannur'),
(684, 34, 'Mathura'),
(685, 34, 'Thakurdwara'),
(686, 31, 'Nandivaram-Guduvancheri'),
(687, 17, 'Mulbagal'),
(688, 21, 'Manjlegaon'),
(689, 12, 'Wankaner'),
(690, 21, 'Sillod'),
(691, 2, 'Nidadavole'),
(692, 17, 'Surapura'),
(693, 26, 'Rajagangapur'),
(694, 5, 'Sheikhpura'),
(695, 26, 'Parlakhemundi'),
(696, 36, 'Kalimpong'),
(697, 17, 'Siruguppa'),
(698, 21, 'Arvi'),
(699, 12, 'Limbdi'),
(700, 4, 'Barpeta'),
(701, 35, 'Manglaur'),
(702, 2, 'Repalle'),
(703, 17, 'Mudhol'),
(704, 20, 'Shujalpur'),
(705, 12, 'Mandvi'),
(706, 12, 'Thangadh'),
(707, 20, 'Sironj'),
(708, 21, 'Nandura'),
(709, 18, 'Shoranur'),
(710, 29, 'Nathdwara'),
(711, 31, 'Periyakulam'),
(712, 5, 'Sultanganj'),
(713, 32, 'Medak'),
(714, 32, 'Narayanpet'),
(715, 5, 'Raxaul Bazar'),
(716, 15, 'Rajauri'),
(717, 31, 'Pernampattu'),
(718, 35, 'Nainital'),
(719, 2, 'Ramachandrapuram'),
(720, 21, 'Vaijapur'),
(721, 28, 'Nangal'),
(722, 17, 'Sidlaghatta'),
(723, 15, 'Punch'),
(724, 20, 'Pandhurna'),
(725, 21, 'Wadgaon Road'),
(726, 26, 'Talcher'),
(727, 18, 'Varkala'),
(728, 29, 'Pilani'),
(729, 20, 'Nowgong'),
(730, 7, 'Naila Janjgir'),
(731, 11, 'Mapusa'),
(732, 31, 'Vellakoil'),
(733, 29, 'Merta City'),
(734, 31, 'Sivaganga'),
(735, 20, 'Mandideep'),
(736, 21, 'Sailu'),
(737, 12, 'Vyara'),
(738, 2, 'Kovvur'),
(739, 31, 'Vadalur'),
(740, 34, 'Nawabganj'),
(741, 12, 'Padra'),
(742, 36, 'Sainthia'),
(743, 34, 'Siana'),
(744, 17, 'Shahpur'),
(745, 29, 'Sojat'),
(746, 34, 'Noorpur'),
(747, 18, 'Paravoor'),
(748, 21, 'Murtijapur'),
(749, 5, 'Ramnagar'),
(750, 26, 'Sundargarh'),
(751, 36, 'Taki'),
(752, 17, 'Saundatti-Yellamma'),
(753, 18, 'Pathanamthitta'),
(754, 17, 'Wadi'),
(755, 31, 'Rameshwaram'),
(756, 21, 'Tasgaon'),
(757, 34, 'Sikandra Rao'),
(758, 20, 'Sihora'),
(759, 31, 'Tiruvethipuram'),
(760, 2, 'Tiruvuru'),
(761, 21, 'Mehkar'),
(762, 18, 'Peringathur'),
(763, 31, 'Perambalur'),
(764, 17, 'Manvi'),
(765, 25, 'Zunheboto'),
(766, 5, 'Mahnar Bazar'),
(767, 18, 'Attingal'),
(768, 13, 'Shahbad'),
(769, 34, 'Puranpur'),
(770, 17, 'Nelamangala'),
(771, 28, 'Nakodar'),
(772, 12, 'Lunawada'),
(773, 36, 'Murshidabad'),
(774, 27, 'Mahe'),
(775, 4, 'Lanka'),
(776, 34, 'Rudauli'),
(777, 25, 'Tuensang'),
(778, 17, 'Lakshmeshwar'),
(779, 28, 'Zira'),
(780, 21, 'Yawal'),
(781, 34, 'Thana Bhawan'),
(782, 17, 'Ramdurg'),
(783, 21, 'Pulgaon'),
(784, 32, 'Sadasivpet'),
(785, 17, 'Nargund'),
(786, 29, 'Neem-Ka-Thana'),
(787, 36, 'Memari'),
(788, 21, 'Nilanga'),
(789, 3, 'Naharlagun'),
(790, 16, 'Pakaur'),
(791, 21, 'Wai'),
(792, 17, 'Tarikere'),
(793, 17, 'Malavalli'),
(794, 20, 'Raisen'),
(795, 20, 'Lahar'),
(796, 2, 'Uravakonda'),
(797, 17, 'Savanur'),
(798, 29, 'Sirohi'),
(799, 15, 'Udhampur'),
(800, 21, 'Umarga'),
(801, 29, 'Pratapgarh'),
(802, 17, 'Lingsugur'),
(803, 31, 'Usilampatti'),
(804, 34, 'Palia Kalan'),
(805, 25, 'Wokha'),
(806, 12, 'Rajpipla'),
(807, 17, 'Vijayapura'),
(808, 29, 'Rawatbhata'),
(809, 29, 'Sangaria'),
(810, 21, 'Paithan'),
(811, 21, 'Rahuri'),
(812, 28, 'Patti'),
(813, 34, 'Zaidpur'),
(814, 29, 'Lalsot'),
(815, 20, 'Maihar'),
(816, 31, 'Vedaranyam'),
(817, 21, 'Nawapur'),
(818, 14, 'Solan'),
(819, 12, 'Vapi'),
(820, 20, 'Sanawad'),
(821, 5, 'Warisaliganj'),
(822, 5, 'Revelganj'),
(823, 20, 'Sabalgarh'),
(824, 21, 'Tuljapur'),
(825, 16, 'Simdega'),
(826, 16, 'Musabani'),
(827, 18, 'Kodungallur'),
(828, 26, 'Phulabani'),
(829, 12, 'Umreth'),
(830, 2, 'Narsipatnam'),
(831, 34, 'Nautanwa'),
(832, 5, 'Rajgir'),
(833, 32, 'Yellandu'),
(834, 31, 'Sathyamangalam'),
(835, 29, 'Pilibanga'),
(836, 21, 'Morshi'),
(837, 13, 'Pehowa'),
(838, 5, 'Sonepur'),
(839, 18, 'Pappinisseri'),
(840, 34, 'Zamania'),
(841, 16, 'Mihijam'),
(842, 21, 'Purna'),
(843, 31, 'Puliyankudi'),
(844, 34, 'Shikarpur Bulandshahr'),
(845, 20, 'Umaria'),
(846, 20, 'Porsa'),
(847, 34, 'Naugawan Sadat'),
(848, 34, 'Fatehpur Sikri'),
(849, 32, 'Manuguru'),
(850, 33, 'Udaipur'),
(851, 29, 'Pipar City'),
(852, 26, 'Pattamundai'),
(853, 31, 'Nanjikottai'),
(854, 29, 'Taranagar'),
(855, 2, 'Yerraguntla'),
(856, 21, 'Satana'),
(857, 5, 'Sherghati'),
(858, 17, 'Sankeshwara'),
(859, 17, 'Madikeri'),
(860, 31, 'Thuraiyur'),
(861, 12, 'Sanand'),
(862, 12, 'Rajula'),
(863, 32, 'Kyathampalle'),
(864, 34, 'Shahabad Rampur'),
(865, 7, 'Tilda Newra'),
(866, 20, 'Narsinghgarh'),
(867, 18, 'Chittur-Thathamangalam'),
(868, 20, 'Malaj Khand'),
(869, 20, 'Sarangpur'),
(870, 34, 'Robertsganj'),
(871, 31, 'Sirkali'),
(872, 12, 'Radhanpur'),
(873, 31, 'Tiruchendur'),
(874, 34, 'Utraula'),
(875, 16, 'Patratu'),
(876, 29, 'Vijainagar Ajmer'),
(877, 31, 'Periyasemur'),
(878, 21, 'Pathri'),
(879, 34, 'Sadabad'),
(880, 17, 'Talikota'),
(881, 21, 'Sinnar'),
(882, 7, 'Mungeli'),
(883, 17, 'Sedam'),
(884, 17, 'Shikaripur'),
(885, 29, 'Sumerpur'),
(886, 31, 'Sattur'),
(887, 5, 'Sugauli'),
(888, 4, 'Lumding'),
(889, 31, 'Vandavasi'),
(890, 26, 'Titlagarh'),
(891, 21, 'Uchgaon'),
(892, 25, 'Mokokchung'),
(893, 36, 'Paschim Punropara'),
(894, 29, 'Sagwara'),
(895, 29, 'Ramganj Mandi'),
(896, 36, 'Tarakeswar'),
(897, 17, 'Mahalingapura'),
(898, 33, 'Dharmanagar'),
(899, 12, 'Mahemdabad'),
(900, 7, 'Manendragarh'),
(901, 21, 'Uran'),
(902, 31, 'Tharamangalam'),
(903, 31, 'Tirukkoyilur'),
(904, 21, 'Pen'),
(905, 5, 'Makhdumpur'),
(906, 5, 'Maner'),
(907, 31, 'Oddanchatram'),
(908, 31, 'Palladam'),
(909, 20, 'Mundi'),
(910, 26, 'Nabarangapur'),
(911, 17, 'Mudalagi'),
(912, 13, 'Samalkha'),
(913, 20, 'Nepanagar'),
(914, 21, 'Karjat'),
(915, 12, 'Ranavav'),
(916, 2, 'Pedana'),
(917, 13, 'Pinjore'),
(918, 29, 'Lakheri'),
(919, 20, 'Pasan'),
(920, 2, 'Puttur'),
(921, 31, 'Vadakkuvalliyur'),
(922, 31, 'Tirukalukundram'),
(923, 20, 'Mahidpur'),
(924, 35, 'Mussoorie'),
(925, 18, 'Muvattupuzha'),
(926, 34, 'Rasra'),
(927, 29, 'Udaipurwati'),
(928, 21, 'Manwath'),
(929, 18, 'Adoor'),
(930, 31, 'Uthamapalayam'),
(931, 21, 'Partur'),
(932, 14, 'Nahan'),
(933, 13, 'Ladwa'),
(934, 4, 'Mankachar'),
(935, 23, 'Nongstoin'),
(936, 29, 'Losal'),
(937, 29, 'Sri Madhopur'),
(938, 29, 'Ramngarh'),
(939, 18, 'Mavelikkara'),
(940, 29, 'Rawatsar'),
(941, 29, 'Rajakhera'),
(942, 34, 'Lar'),
(943, 34, 'Lal Gopalganj Nindaura'),
(944, 17, 'Muddebihal'),
(945, 34, 'Sirsaganj'),
(946, 29, 'Shahpura'),
(947, 31, 'Surandai'),
(948, 21, 'Sangole'),
(949, 17, 'Pavagada'),
(950, 12, 'Tharad'),
(951, 12, 'Mansa'),
(952, 12, 'Umbergaon'),
(953, 18, 'Mavoor'),
(954, 4, 'Nalbari'),
(955, 12, 'Talaja'),
(956, 17, 'Malur'),
(957, 21, 'Mangrulpir'),
(958, 26, 'Soro'),
(959, 29, 'Shahpura'),
(960, 12, 'Vadnagar'),
(961, 29, 'Raisinghnagar'),
(962, 17, 'Sindhagi'),
(963, 17, 'Sanduru'),
(964, 13, 'Sohna'),
(965, 12, 'Manavadar'),
(966, 34, 'Pihani'),
(967, 13, 'Safidon'),
(968, 21, 'Risod'),
(969, 5, 'Rosera'),
(970, 31, 'Sankari'),
(971, 29, 'Malpura'),
(972, 36, 'Sonamukhi'),
(973, 34, 'Shamsabad Agra'),
(974, 5, 'Nokha'),
(975, 36, 'PandUrban Agglomeration'),
(976, 36, 'Mainaguri'),
(977, 17, 'Afzalpur'),
(978, 21, 'Shirur'),
(979, 12, 'Salaya'),
(980, 31, 'Shenkottai'),
(981, 33, 'Pratapgarh'),
(982, 31, 'Vadipatti'),
(983, 32, 'Nagarkurnool'),
(984, 21, 'Savner'),
(985, 21, 'Sasvad'),
(986, 34, 'Rudrapur'),
(987, 34, 'Soron'),
(988, 31, 'Sholingur'),
(989, 21, 'Pandharkaoda'),
(990, 18, 'Perumbavoor'),
(991, 17, 'Maddur'),
(992, 29, 'Nadbai'),
(993, 21, 'Talode'),
(994, 21, 'Shrigonda'),
(995, 17, 'Madhugiri'),
(996, 17, 'Tekkalakote'),
(997, 20, 'Seoni-Malwa'),
(998, 21, 'Shirdi'),
(999, 34, 'SUrban Agglomerationr'),
(1000, 17, 'Terdal'),
(1001, 21, 'Raver'),
(1002, 31, 'Tirupathur'),
(1003, 13, 'Taraori'),
(1004, 21, 'Mukhed'),
(1005, 31, 'Manachanallur'),
(1006, 20, 'Rehli'),
(1007, 29, 'Sanchore'),
(1008, 21, 'Rajura'),
(1009, 5, 'Piro'),
(1010, 17, 'Mudabidri'),
(1011, 21, 'Vadgaon Kasba'),
(1012, 29, 'Nagar'),
(1013, 12, 'Vijapur'),
(1014, 31, 'Viswanatham'),
(1015, 31, 'Polur'),
(1016, 31, 'Panagudi'),
(1017, 20, 'Manawar'),
(1018, 35, 'Tehri'),
(1019, 34, 'Samdhan'),
(1020, 12, 'Pardi'),
(1021, 20, 'Rahatgarh'),
(1022, 20, 'Panagar'),
(1023, 31, 'Uthiramerur'),
(1024, 21, 'Tirora'),
(1025, 4, 'Rangia'),
(1026, 34, 'Sahjanwa'),
(1027, 20, 'Wara Seoni'),
(1028, 17, 'Magadi'),
(1029, 29, 'Rajgarh (Alwar)'),
(1030, 5, 'Rafiganj'),
(1031, 20, 'Tarana'),
(1032, 34, 'Rampur Maniharan'),
(1033, 29, 'Sheoganj'),
(1034, 28, 'Raikot'),
(1035, 35, 'Pauri'),
(1036, 34, 'Sumerpur'),
(1037, 17, 'Navalgund'),
(1038, 34, 'Shahganj'),
(1039, 5, 'Marhaura'),
(1040, 34, 'Tulsipur'),
(1041, 29, 'Sadri'),
(1042, 31, 'Thiruthuraipoondi'),
(1043, 17, 'Shiggaon'),
(1044, 31, 'Pallapatti'),
(1045, 13, 'Mahendragarh'),
(1046, 20, 'Sausar'),
(1047, 31, 'Ponneri'),
(1048, 21, 'Mahad'),
(1049, 16, 'Lohardaga'),
(1050, 34, 'Tirwaganj'),
(1051, 4, 'Margherita'),
(1052, 14, 'Sundarnagar'),
(1053, 20, 'Rajgarh'),
(1054, 4, 'Mangaldoi'),
(1055, 2, 'Renigunta'),
(1056, 28, 'Longowal'),
(1057, 13, 'Ratia'),
(1058, 31, 'Lalgudi'),
(1059, 17, 'Shrirangapattana'),
(1060, 20, 'Niwari'),
(1061, 31, 'Natham'),
(1062, 31, 'Unnamalaikadai'),
(1063, 34, 'PurqUrban Agglomerationzi'),
(1064, 34, 'Shamsabad Farrukhabad'),
(1065, 5, 'Mirganj'),
(1066, 29, 'Todaraisingh'),
(1067, 34, 'Warhapur'),
(1068, 2, 'Rajam'),
(1069, 28, 'Urmar Tanda'),
(1070, 21, 'Lonar'),
(1071, 34, 'Powayan'),
(1072, 31, 'P.N.Patti'),
(1073, 14, 'Palampur'),
(1074, 2, 'Srisailam Project (Right Flank Colony) Township'),
(1075, 17, 'Sindagi'),
(1076, 34, 'Sandi'),
(1077, 18, 'Vaikom'),
(1078, 36, 'Malda'),
(1079, 31, 'Tharangambadi'),
(1080, 17, 'Sakaleshapura'),
(1081, 5, 'Lalganj'),
(1082, 26, 'Malkangiri'),
(1083, 12, 'Rapar'),
(1084, 20, 'Mauganj'),
(1085, 29, 'Todabhim'),
(1086, 17, 'Srinivaspur'),
(1087, 5, 'Murliganj'),
(1088, 29, 'Reengus'),
(1089, 21, 'Sawantwadi'),
(1090, 31, 'Tittakudi'),
(1091, 22, 'Lilong'),
(1092, 29, 'Rajaldesar'),
(1093, 21, 'Pathardi'),
(1094, 34, 'Achhnera'),
(1095, 31, 'Pacode'),
(1096, 34, 'Naraura'),
(1097, 34, 'Nakur'),
(1098, 18, 'Palai'),
(1099, 28, 'Morinda India'),
(1100, 20, 'Manasa'),
(1101, 20, 'Nainpur'),
(1102, 34, 'Sahaspur'),
(1103, 21, 'Pauni'),
(1104, 20, 'Prithvipur'),
(1105, 21, 'Ramtek'),
(1106, 4, 'Silapathar'),
(1107, 12, 'Songadh'),
(1108, 34, 'Safipur'),
(1109, 20, 'Sohagpur'),
(1110, 21, 'Mul'),
(1111, 29, 'Sadulshahar'),
(1112, 28, 'Phillaur'),
(1113, 29, 'Sambhar'),
(1114, 29, 'Prantij'),
(1115, 35, 'Nagla'),
(1116, 28, 'Pattran'),
(1117, 29, 'Mount Abu'),
(1118, 34, 'Reoti'),
(1119, 16, 'Tenu dam-cum-Kathhara'),
(1120, 36, 'Panchla'),
(1121, 35, 'Sitarganj'),
(1122, 3, 'Pasighat'),
(1123, 5, 'Motipur'),
(1124, 31, 'O\' Valley'),
(1125, 36, 'Raghunathpur'),
(1126, 31, 'Suriyampalayam'),
(1127, 28, 'Qadian'),
(1128, 26, 'Rairangpur'),
(1129, 8, 'Silvassa'),
(1130, 20, 'Nowrozabad (Khodargama)'),
(1131, 29, 'Mangrol'),
(1132, 21, 'Soyagaon'),
(1133, 28, 'Sujanpur'),
(1134, 5, 'Manihari'),
(1135, 34, 'Sikanderpur'),
(1136, 21, 'Mangalvedhe'),
(1137, 29, 'Phulera'),
(1138, 17, 'Ron'),
(1139, 31, 'Sholavandan'),
(1140, 34, 'Saidpur'),
(1141, 20, 'Shamgarh'),
(1142, 31, 'Thammampatti'),
(1143, 20, 'Maharajpur'),
(1144, 20, 'Multai'),
(1145, 28, 'Mukerian'),
(1146, 34, 'Sirsi'),
(1147, 34, 'Purwa'),
(1148, 5, 'Sheohar'),
(1149, 31, 'Namagiripettai'),
(1150, 34, 'Parasi'),
(1151, 12, 'Lathi'),
(1152, 34, 'Lalganj'),
(1153, 21, 'Narkhed'),
(1154, 36, 'Mathabhanga'),
(1155, 21, 'Shendurjana'),
(1156, 31, 'Peravurani'),
(1157, 4, 'Mariani'),
(1158, 34, 'Phulpur'),
(1159, 13, 'Rania'),
(1160, 20, 'Pali'),
(1161, 20, 'Pachore'),
(1162, 31, 'Parangipettai'),
(1163, 31, 'Pudupattinam'),
(1164, 18, 'Panniyannur'),
(1165, 5, 'Maharajganj'),
(1166, 20, 'Rau'),
(1167, 36, 'Monoharpur'),
(1168, 29, 'Mandawa'),
(1169, 4, 'Marigaon'),
(1170, 31, 'Pallikonda'),
(1171, 29, 'Pindwara'),
(1172, 34, 'Shishgarh'),
(1173, 21, 'Patur'),
(1174, 22, 'Mayang Imphal'),
(1175, 20, 'Mhowgaon'),
(1176, 18, 'Guruvayoor'),
(1177, 21, 'Mhaswad'),
(1178, 34, 'Sahawar'),
(1179, 31, 'Sivagiri'),
(1180, 17, 'Mundargi'),
(1181, 31, 'Punjaipugalur'),
(1182, 33, 'Kailasahar'),
(1183, 34, 'Samthar'),
(1184, 7, 'Sakti'),
(1185, 17, 'Sadalagi'),
(1186, 5, 'Silao'),
(1187, 29, 'Mandalgarh'),
(1188, 21, 'Loha'),
(1189, 34, 'Pukhrayan'),
(1190, 31, 'Padmanabhapuram'),
(1191, 33, 'Belonia'),
(1192, 24, 'Saiha'),
(1193, 36, 'Srirampore'),
(1194, 28, 'Talwara'),
(1195, 18, 'Puthuppally'),
(1196, 33, 'Khowai'),
(1197, 20, 'Vijaypur'),
(1198, 29, 'Takhatgarh'),
(1199, 31, 'Thirupuvanam'),
(1200, 36, 'Adra'),
(1201, 17, 'Piriyapatna'),
(1202, 34, 'Obra'),
(1203, 12, 'Adalaj'),
(1204, 21, 'Nandgaon'),
(1205, 5, 'Barh'),
(1206, 12, 'Chhapra'),
(1207, 18, 'Panamattom'),
(1208, 34, 'Niwai'),
(1209, 35, 'Bageshwar'),
(1210, 26, 'Tarbha'),
(1211, 17, 'Adyar'),
(1212, 20, 'Narsinghgarh'),
(1213, 21, 'Warud'),
(1214, 5, 'Asarganj'),
(1215, 13, 'Sarsod'),
(1216, 12, 'Gandhinagar'),
(1217, 14, 'Kullu'),
(1218, 14, 'Manali'),
(1219, 34, 'Mirzapur');

-- --------------------------------------------------------

--
-- Table structure for table `addr_state_table`
--

CREATE TABLE `addr_state_table` (
  `state_id` tinyint(2) NOT NULL,
  `state_name` varchar(50) COLLATE utf32_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `addr_state_table`
--

INSERT INTO `addr_state_table` (`state_id`, `state_name`) VALUES
(1, 'Andaman and Nicobar Islands'),
(2, 'Andhra Pradesh'),
(3, 'Arunachal Pradesh'),
(4, 'Assam'),
(5, 'Bihar'),
(6, 'Chandigarh '),
(7, 'Chhattisgarh'),
(8, 'Dadra and Nagar Haveli '),
(9, 'Daman and Diu '),
(10, 'Delhi '),
(11, 'Goa'),
(12, 'Gujarat'),
(13, 'Haryana'),
(14, 'Himachal Pradesh'),
(15, 'Jammu and Kashmir'),
(16, 'Jharkhand'),
(17, 'Karnataka'),
(18, 'Kerala'),
(19, 'Lakshadweep'),
(20, 'Madhya Pradesh'),
(21, 'Maharashtra'),
(22, 'Manipur'),
(23, 'Meghalaya'),
(24, 'Mizoram'),
(25, 'Nagaland'),
(26, 'Odisha'),
(27, 'Puducherry '),
(28, 'Punjab'),
(29, 'Rajasthan'),
(30, 'Sikkim'),
(31, 'Tamil Nadu'),
(32, 'Telangana'),
(33, 'Tripura'),
(34, 'Uttar Pradesh'),
(35, 'Uttarakhand'),
(36, 'West Bengal');

-- --------------------------------------------------------

--
-- Table structure for table `assignment_master`
--

CREATE TABLE `assignment_master` (
  `assgn_id` int(4) NOT NULL,
  `discipline_id` tinyint(2) NOT NULL COMMENT '** Foreign Key',
  `branch_id` tinyint(3) NOT NULL COMMENT '** Foreign Key',
  `sem_id` tinyint(2) NOT NULL COMMENT '** Foreign Key',
  `division_id` smallint(3) UNSIGNED NOT NULL COMMENT '** Foreign Key',
  `sub_id` smallint(4) UNSIGNED NOT NULL COMMENT '** Foreign Key',
  `ass_no` tinyint(2) UNSIGNED NOT NULL,
  `link` varchar(255) COLLATE utf32_unicode_ci NOT NULL,
  `assign_date` date NOT NULL,
  `submission_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `assignment_master`
--

INSERT INTO `assignment_master` (`assgn_id`, `discipline_id`, `branch_id`, `sem_id`, `division_id`, `sub_id`, `ass_no`, `link`, `assign_date`, `submission_date`) VALUES
(1, 1, 2, 8, 1, 153, 1, 'http://192.168.0.102/newAttempt/Assignments/AI-1.pdf', '2017-03-18', '2017-03-30'),
(2, 1, 2, 8, 1, 153, 2, 'http://192.168.0.102/newAttempt/Assignments/AI-2.pdf', '2017-03-18', '2017-03-30'),
(3, 1, 2, 8, 1, 153, 3, 'http://192.168.0.102/newAttempt/Assignments/AI-3.pdf', '2017-03-18', '2017-03-30'),
(4, 1, 2, 8, 1, 153, 4, 'http://192.168.0.102/newAttempt/Assignments/AI-4.pdf', '2017-03-18', '2017-03-30'),
(6, 1, 2, 8, 1, 157, 1, 'http://192.168.0.102/newAttempt/Assignments/PP-1.pdf', '2017-03-18', '2017-03-30'),
(7, 1, 2, 8, 1, 157, 2, 'http://192.168.0.102/newAttempt/Assignments/PP-2.pdf', '2017-03-18', '2017-03-30');

-- --------------------------------------------------------

--
-- Table structure for table `assignment_table`
--

CREATE TABLE `assignment_table` (
  `ass_id` int(4) NOT NULL,
  `discipline_id` tinyint(2) NOT NULL COMMENT '** Foreign Key',
  `branch_id` tinyint(3) NOT NULL COMMENT '** Foreign Key',
  `sem_id` tinyint(2) NOT NULL COMMENT '** Foreign Key',
  `div_id` smallint(3) UNSIGNED NOT NULL COMMENT '** Foreign Key',
  `alloc_id` smallint(4) UNSIGNED NOT NULL,
  `ass_no` char(2) COLLATE utf32_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf32_unicode_ci NOT NULL,
  `assign_date` date NOT NULL,
  `submission_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `assignment_table`
--

INSERT INTO `assignment_table` (`ass_id`, `discipline_id`, `branch_id`, `sem_id`, `div_id`, `alloc_id`, `ass_no`, `link`, `assign_date`, `submission_date`) VALUES
(1, 1, 2, 8, 1, 2, '1', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '2016-12-22', '2017-04-05'),
(2, 1, 2, 8, 1, 2, '2', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '2016-12-23', '2017-04-06'),
(3, 1, 2, 8, 1, 2, '3', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '2016-12-24', '2017-04-07'),
(4, 1, 2, 8, 1, 2, '4', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '2016-12-25', '2017-04-08'),
(5, 1, 2, 8, 1, 2, '5', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '2016-12-26', '2017-04-09'),
(6, 1, 2, 8, 1, 1, '1', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '2016-12-22', '2017-04-05'),
(7, 1, 2, 8, 1, 1, '2', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '2016-12-23', '2017-04-06'),
(8, 1, 2, 8, 1, 1, '3', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '2016-12-24', '2017-04-07'),
(9, 1, 2, 8, 1, 1, '4', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '2016-12-25', '2017-04-08'),
(10, 1, 2, 8, 1, 1, '5', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '2016-12-26', '2017-04-09'),
(11, 1, 2, 8, 1, 3, '1', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '2016-12-22', '2017-04-05'),
(12, 1, 2, 8, 1, 3, '2', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '2016-12-23', '2017-04-06'),
(13, 1, 2, 8, 1, 3, '3', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '2016-12-24', '2017-04-07'),
(14, 1, 2, 8, 1, 3, '4', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '2016-12-25', '2017-04-08'),
(15, 1, 2, 8, 1, 3, '5', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '2016-12-26', '2017-04-09');

-- --------------------------------------------------------

--
-- Table structure for table `attendance_computer`
--

CREATE TABLE `attendance_computer` (
  `timetable_id` smallint(4) UNSIGNED NOT NULL COMMENT '** Foreign Key',
  `student_id` varchar(12) COLLATE utf32_unicode_ci NOT NULL COMMENT '** Foreign Key',
  `attendance` tinyint(1) NOT NULL COMMENT '0: Absent, 1: Present'
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendance_master`
--

CREATE TABLE `attendance_master` (
  `attd_master_id` int(10) UNSIGNED NOT NULL,
  `teaches_id` smallint(5) UNSIGNED NOT NULL,
  `batchno` varchar(3) COLLATE utf32_unicode_ci NOT NULL,
  `division_id` tinyint(3) NOT NULL,
  `acd_cal_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `authentication_master`
--

CREATE TABLE `authentication_master` (
  `sr_no` mediumint(7) UNSIGNED NOT NULL,
  `enr_no` varchar(12) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL COMMENT '** Foreign Key',
  `otp` varchar(10) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `authentication` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 : No, 1 : Done',
  `aes` varchar(150) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `device_name` varchar(35) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `device_id` varchar(20) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authentication_master`
--

INSERT INTO `authentication_master` (`sr_no`, `enr_no`, `otp`, `authentication`, `aes`, `device_name`, `device_id`) VALUES
(1, '130020107048', 'g2m458qm', 1, 'b3hQK2lKOUlXaGN2YTZFZlZXYjJMVFZ5amhRTVNBcEMzZHNYc2dnQmszRT0=', 'Samsung SM-G7102', 'c6893f3115c3738a'),
(2, '130020107001', '', 0, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `batch_master`
--

CREATE TABLE `batch_master` (
  `batch_id` smallint(3) UNSIGNED NOT NULL,
  `batch` varchar(5) COLLATE utf32_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `batch_master`
--

INSERT INTO `batch_master` (`batch_id`, `batch`) VALUES
(1, 'All'),
(2, 'B1'),
(3, 'B2'),
(4, 'B3'),
(5, 'B4');

-- --------------------------------------------------------

--
-- Table structure for table `branch_master`
--

CREATE TABLE `branch_master` (
  `branch_id` tinyint(3) NOT NULL,
  `discipline_id` tinyint(2) NOT NULL COMMENT '** Foreign Key',
  `branch_code` varchar(2) COLLATE utf32_unicode_ci NOT NULL,
  `branch_name` varchar(100) COLLATE utf32_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `branch_master`
--

INSERT INTO `branch_master` (`branch_id`, `discipline_id`, `branch_code`, `branch_name`) VALUES
(1, 1, '19', 'Mechanical Engineering'),
(2, 1, '07', 'Computer Engineering'),
(3, 1, '16', 'Information Technology'),
(4, 1, '11', 'Electronics & Communication Engineering'),
(5, 1, '09', 'Electrical Engineering'),
(6, 1, '06', 'Civil Engineering'),
(7, 1, '02', 'Automobile Engineering'),
(8, 1, '00', 'General');

-- --------------------------------------------------------

--
-- Table structure for table `circular_info`
--

CREATE TABLE `circular_info` (
  `circular_id` tinyint(3) UNSIGNED NOT NULL,
  `topic` varchar(100) COLLATE utf32_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf32_unicode_ci NOT NULL,
  `circ_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `circular_info`
--

INSERT INTO `circular_info` (`circular_id`, `topic`, `link`, `circ_date`) VALUES
(1, 'Front Page of the project report', '192.168.0.101/Circular/01.pdf', '2017-03-16'),
(2, 'Plagiarism Report for final year project', '192.168.0.101/Circular/02.pdf', '2017-03-11'),
(3, 'Certificate of completion for Vishal', '192.168.0.101/Circular/03.pdf', '2017-03-07'),
(4, 'Certificate of completion for Parantap', '192.168.0.101/Circular/04.pdf', '2017-02-14'),
(5, 'Certificate of completion for Rupali', '192.168.0.101/Circular/05.pdf', '2017-01-18'),
(6, 'Index One Chapter one of the final report', '192.168.0.101/Circular/06.pdf', '2017-02-18'),
(7, 'Index Two chapter two of the final report', '192.168.0.101/Circular/07.pdf', '2017-02-22'),
(8, 'Chapter 1 introduction about something', '192.168.0.101/Circular/08.pdf', '2017-02-27'),
(9, 'Chapter 2 adding something to something', '192.168.0.101/Circular/09.pdf', '2017-02-28'),
(10, 'Chapter 3 detailed analysis and figures of it', '192.168.0.101/Circular/10.pdf', '2017-01-19'),
(11, 'Chapter 4 still going on about the subject', '192.168.0.101/Circular/11.pdf', '2017-01-13'),
(12, 'Chapter 5 almost out of stuff to talk about', '192.168.0.101/Circular/12.pdf', '2017-01-11'),
(13, 'Chapter 6 finally the end of a boring report', '192.168.0.101/Circular/13.pdf', '2017-03-03'),
(14, 'Appendix One things that you missed in the report', '192.168.0.101/Circular/14.pdf', '2017-03-09'),
(15, 'PPR 1 periodic progress report one', '192.168.0.101/Circular/15.pdf', '2017-01-17'),
(16, 'PPR 2 as if the first ppr was not enough', '192.168.0.101/Circular/16.pdf', '2016-12-19'),
(17, 'PPR 3 we think you should keep doing the same thing', '192.168.0.101/Circular/17.pdf', '2017-03-08'),
(18, 'PPR 4 its like nobody cares about us', '192.168.0.101/Circular/18.pdf', '2017-03-14'),
(19, 'PPR 5 things are just getting worse day by day', '192.168.0.101/Circular/19.pdf', '2017-01-18'),
(20, 'PPR 6 somebody please make me stop i dont want this', '192.168.0.101/Circular/20.pdf', '2017-03-03'),
(21, 'PPR 7 i have to do it whether you like it or not', '192.168.0.101/Circular/21.pdf', '2017-02-06'),
(22, 'PPR 8 apparently they think this is enough', '192.168.0.101/Circular/22.pdf', '2017-01-17'),
(23, 'Appendix Two list of other boring things that you missed', '192.168.0.101/Circular/23.pdf', '2017-03-20');

-- --------------------------------------------------------

--
-- Table structure for table `discipline_master`
--

CREATE TABLE `discipline_master` (
  `discipline_id` tinyint(2) NOT NULL,
  `discipline_code` varchar(2) COLLATE utf32_unicode_ci NOT NULL DEFAULT '01',
  `discipline_name` varchar(40) COLLATE utf32_unicode_ci NOT NULL DEFAULT 'Bachelor of Engineering',
  `discipline_sname` varchar(6) COLLATE utf32_unicode_ci NOT NULL DEFAULT 'B.E.',
  `num_of_sem` tinyint(2) NOT NULL DEFAULT '8'
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `discipline_master`
--

INSERT INTO `discipline_master` (`discipline_id`, `discipline_code`, `discipline_name`, `discipline_sname`, `num_of_sem`) VALUES
(1, '01', 'Bachelor of Engineering', 'B.E.', 8);

-- --------------------------------------------------------

--
-- Table structure for table `division_master`
--

CREATE TABLE `division_master` (
  `div_id` smallint(3) UNSIGNED NOT NULL,
  `discipline_id` tinyint(2) NOT NULL COMMENT '** Foreign Key',
  `branch_id` tinyint(3) NOT NULL COMMENT '** Foreign Key',
  `sem_id` tinyint(2) NOT NULL COMMENT '** Foreign Key',
  `division` varchar(1) COLLATE utf32_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `division_master`
--

INSERT INTO `division_master` (`div_id`, `discipline_id`, `branch_id`, `sem_id`, `division`) VALUES
(1, 1, 2, 8, 'A'),
(2, 1, 2, 8, 'B');

-- --------------------------------------------------------

--
-- Table structure for table `exam_schedule_master`
--

CREATE TABLE `exam_schedule_master` (
  `ex_sched_id` smallint(4) UNSIGNED NOT NULL,
  `discipline_id` tinyint(2) NOT NULL,
  `branch_id` tinyint(3) NOT NULL,
  `sem_id` tinyint(2) NOT NULL,
  `division_id` smallint(3) UNSIGNED NOT NULL,
  `exam_type_id` tinyint(1) NOT NULL,
  `sub_id` smallint(4) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `exam_schedule_master`
--

INSERT INTO `exam_schedule_master` (`ex_sched_id`, `discipline_id`, `branch_id`, `sem_id`, `division_id`, `exam_type_id`, `sub_id`, `date`, `time`) VALUES
(1, 1, 2, 8, 1, 1, 153, '2017-03-18', '10:30:00'),
(2, 1, 2, 8, 1, 1, 154, '2017-03-16', '13:30:00'),
(3, 1, 2, 8, 1, 1, 155, '2017-03-20', '10:30:00'),
(4, 1, 2, 8, 1, 1, 156, '2017-03-20', '10:30:00'),
(5, 1, 2, 8, 1, 1, 157, '2017-03-20', '10:30:00'),
(6, 1, 2, 8, 1, 1, 158, '2017-03-20', '10:30:00'),
(7, 1, 2, 8, 1, 1, 159, '2017-03-20', '10:30:00'),
(8, 1, 2, 8, 1, 1, 160, '2017-03-20', '10:30:00'),
(9, 1, 2, 8, 1, 1, 161, '2017-03-20', '10:30:00'),
(10, 1, 2, 8, 2, 1, 153, '2017-03-18', '10:30:00'),
(11, 1, 2, 8, 2, 1, 154, '2017-03-16', '13:30:00'),
(12, 1, 2, 8, 2, 1, 155, '2017-03-20', '10:30:00'),
(13, 1, 2, 8, 2, 1, 156, '2017-03-20', '10:30:00'),
(14, 1, 2, 8, 2, 1, 157, '2017-03-20', '10:30:00'),
(15, 1, 2, 8, 2, 1, 158, '2017-03-20', '10:30:00'),
(16, 1, 2, 8, 2, 1, 159, '2017-03-20', '10:30:00'),
(17, 1, 2, 8, 2, 1, 160, '2017-03-20', '10:30:00'),
(18, 1, 2, 8, 2, 1, 161, '2017-03-20', '10:30:00'),
(19, 1, 2, 8, 1, 2, 153, '2017-04-04', '10:30:00'),
(20, 1, 2, 8, 1, 2, 154, '2017-04-02', '13:30:00'),
(21, 1, 2, 8, 1, 2, 155, '2017-04-06', '10:30:00'),
(22, 1, 2, 8, 1, 2, 156, '2017-04-06', '10:30:00'),
(23, 1, 2, 8, 1, 2, 157, '2017-04-06', '10:30:00'),
(24, 1, 2, 8, 1, 2, 158, '2017-04-06', '10:30:00'),
(25, 1, 2, 8, 1, 2, 159, '2017-04-06', '10:30:00'),
(26, 1, 2, 8, 1, 2, 160, '2017-04-06', '10:30:00'),
(27, 1, 2, 8, 1, 2, 161, '2017-04-06', '10:30:00'),
(28, 1, 2, 8, 2, 2, 153, '2017-04-04', '10:30:00'),
(29, 1, 2, 8, 2, 2, 154, '2017-04-02', '13:30:00'),
(30, 1, 2, 8, 2, 2, 155, '2017-04-06', '10:30:00'),
(31, 1, 2, 8, 2, 2, 156, '2017-04-06', '10:30:00'),
(32, 1, 2, 8, 2, 2, 157, '2017-04-06', '10:30:00'),
(33, 1, 2, 8, 2, 2, 158, '2017-04-06', '10:30:00'),
(34, 1, 2, 8, 2, 2, 159, '2017-04-06', '10:30:00'),
(35, 1, 2, 8, 2, 2, 160, '2017-04-06', '10:30:00'),
(36, 1, 2, 8, 2, 2, 161, '2017-04-06', '10:30:00'),
(37, 1, 2, 8, 1, 5, 153, '2014-04-12', '10:30:00'),
(38, 1, 2, 8, 1, 5, 154, '2014-04-10', '10:30:00'),
(39, 1, 2, 8, 1, 5, 155, '2014-04-11', '10:30:00'),
(40, 1, 2, 8, 1, 5, 156, '2014-04-11', '10:30:00'),
(41, 1, 2, 8, 1, 5, 157, '2014-04-11', '10:30:00'),
(42, 1, 2, 8, 1, 5, 158, '2014-04-11', '10:30:00'),
(43, 1, 2, 8, 1, 5, 159, '2014-04-11', '10:30:00'),
(44, 1, 2, 8, 1, 5, 160, '2014-04-11', '10:30:00'),
(45, 1, 2, 8, 1, 5, 161, '2014-04-11', '10:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `exam_type_master`
--

CREATE TABLE `exam_type_master` (
  `exam_type_id` tinyint(1) NOT NULL,
  `exam_type` varchar(15) COLLATE utf32_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `exam_type_master`
--

INSERT INTO `exam_type_master` (`exam_type_id`, `exam_type`) VALUES
(1, 'Mid Sem 1'),
(2, 'Mid Sem 2'),
(3, 'Remidial 1'),
(4, 'Remidial 2'),
(5, 'Submissions');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_acad_details`
--

CREATE TABLE `faculty_acad_details` (
  `faculty_id` varchar(12) COLLATE utf32_unicode_ci NOT NULL COMMENT '** Foreign Key',
  `h_degree` varchar(15) COLLATE utf32_unicode_ci NOT NULL,
  `degree_field` varchar(15) COLLATE utf32_unicode_ci NOT NULL,
  `experience` varchar(9) COLLATE utf32_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `faculty_acad_details`
--

INSERT INTO `faculty_acad_details` (`faculty_id`, `h_degree`, `degree_field`, `experience`) VALUES
('07001', 'B.Tech', 'Computer', '8'),
('07002', 'B.E', 'Mechanical', '10'),
('07003', 'M.Tech', 'Computer', '5'),
('07004', 'B.E', 'Automobile', '6'),
('07005', 'B.Tech', 'Civil', '4'),
('07006', 'B.Sc', 'Chemistry', '5'),
('07007', 'M.Sc', 'Physics', '7'),
('07008', 'M.Tech', 'Computer', '8'),
('07009', 'B.Sc', 'Mathematics', '8'),
('07010', 'M.E', 'Computer', '8');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_current_detail`
--

CREATE TABLE `faculty_current_detail` (
  `fc_id` int(4) NOT NULL,
  `faculty_id` varchar(12) COLLATE utf32_unicode_ci NOT NULL COMMENT '** Foreign Key',
  `discipline_id` tinyint(2) NOT NULL COMMENT '** Foreign Key',
  `branch_id` tinyint(3) NOT NULL COMMENT '** Foreign Key',
  `designation` varchar(30) COLLATE utf32_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `faculty_current_detail`
--

INSERT INTO `faculty_current_detail` (`fc_id`, `faculty_id`, `discipline_id`, `branch_id`, `designation`) VALUES
(1, '07001', 1, 2, 'Assistant Professor'),
(2, '07002', 1, 2, 'Assistant Professor'),
(3, '07003', 1, 2, 'Assistant Professor'),
(4, '07004', 1, 2, 'Assistant Professor'),
(5, '07005', 1, 2, 'Assistant Professor'),
(6, '07006', 1, 2, 'Assistant Professor'),
(7, '07007', 1, 2, 'Assistant Professor'),
(8, '07008', 1, 2, 'Head Of Department'),
(9, '07009', 1, 2, 'Assistant Professor'),
(10, '07010', 1, 2, 'Assistant Professor');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_master`
--

CREATE TABLE `faculty_master` (
  `faculty_id` varchar(12) COLLATE utf32_unicode_ci NOT NULL,
  `first_name` varchar(20) COLLATE utf32_unicode_ci NOT NULL,
  `middle_name` varchar(20) COLLATE utf32_unicode_ci NOT NULL,
  `last_name` varchar(20) COLLATE utf32_unicode_ci NOT NULL,
  `gender` char(1) COLLATE utf32_unicode_ci NOT NULL,
  `mobile_1` varchar(10) COLLATE utf32_unicode_ci NOT NULL,
  `mobile_2` varchar(10) COLLATE utf32_unicode_ci NOT NULL,
  `landline` varchar(15) COLLATE utf32_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf32_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `local_street_add` varchar(100) COLLATE utf32_unicode_ci NOT NULL,
  `local_area` varchar(20) COLLATE utf32_unicode_ci NOT NULL,
  `local_city` smallint(4) UNSIGNED NOT NULL COMMENT '** Foreign Key',
  `local_state` tinyint(2) NOT NULL COMMENT '** Foreign Key',
  `local_pincode` int(6) NOT NULL,
  `perm_street_add` varchar(100) COLLATE utf32_unicode_ci NOT NULL,
  `perm_area` varchar(20) COLLATE utf32_unicode_ci NOT NULL,
  `perm_city` smallint(4) UNSIGNED NOT NULL COMMENT '** Foreign Key',
  `perm_state` tinyint(2) NOT NULL COMMENT '** Foreign Key',
  `perm_pincode` int(6) NOT NULL,
  `blood_grp` varchar(3) COLLATE utf32_unicode_ci NOT NULL,
  `marital_status` varchar(10) COLLATE utf32_unicode_ci NOT NULL,
  `join_date` date NOT NULL,
  `left_date` date DEFAULT NULL,
  `photograph` varchar(255) COLLATE utf32_unicode_ci NOT NULL,
  `cv_link` varchar(255) COLLATE utf32_unicode_ci NOT NULL,
  `faculty_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `faculty_master`
--

INSERT INTO `faculty_master` (`faculty_id`, `first_name`, `middle_name`, `last_name`, `gender`, `mobile_1`, `mobile_2`, `landline`, `email`, `dob`, `local_street_add`, `local_area`, `local_city`, `local_state`, `local_pincode`, `perm_street_add`, `perm_area`, `perm_city`, `perm_state`, `perm_pincode`, `blood_grp`, `marital_status`, `join_date`, `left_date`, `photograph`, `cv_link`, `faculty_status`) VALUES
('07001', 'Shushant', 'Sujit', 'Rajpat', 'M', '9825143308', '9601388611', '', 'shushantR@yahoo.com', '1985-09-02', '15, Kameshwar Society, Near Shradhha School', 'Navarangpura', 4, 12, 380018, '15, Kameshwar Society, Near Shradhha School', 'Navarangpura', 4, 12, 380018, 'B+', 'Single', '2011-08-10', NULL, '', '', 1),
('07002', 'Priya', 'Raj', 'Basu', 'F', '9033313203', '', '79414241', 'priyabasu211@yahoo.in', '1989-02-09', 'C-3/ Brick Apartment', 'Gota', 4, 12, 380054, '09, Deep Flats', 'Kalavad Road', 22, 12, 360001, 'O+', 'Single', '2010-01-10', NULL, '', '', 1),
('07003', 'Pragya', 'Mahesh', 'Zala', 'F', '9825143301', '9601388700', '7941420', 'pragya2007@gmail.com', '1990-03-11', '18, Mahavir Tenaments', 'Sector 28', 1216, 12, 382028, '18, Mahavir Tenaments', 'Sector 28', 1216, 12, 380028, 'A+', 'Single', '2015-08-10', NULL, '', '', 1),
('07004', 'Karan', 'Bhupendra', 'Patel', 'M', '903331333', '', '', 'KBPatel808@hotmail.com', '1989-06-11', '25, “Kashyap” Near DPS Public School', 'Bopal', 4, 12, 380054, '17, Sury Society', 'Junagadh City', 75, 12, 362001, 'O-', 'Single', '2014-04-11', NULL, '', '', 1),
('07005', 'Umang', 'Ramesh', 'Patel', 'M', '4567891230', '', '', 'kutro.gadhedo@gmail.com', '1969-07-12', 'something address', 'some area', 4, 12, 380054, 'something address', 'some area', 4, 12, 380054, 'O-', 'Married', '2009-07-11', NULL, '', '', 1),
('07006', 'Karina', 'Saif', 'Khan', 'F', '7891230456', '', '', 'monghi.actress@bollywood.ma', '1976-06-11', 'ahiya nu ghar', 'ahiya no area', 4, 12, 380014, 'saif nu ghar', 'saif no area', 1, 21, 380011, 'AB-', 'Married', '2010-01-10', NULL, '', '', 1),
('07007', 'Hrithik', 'Rakesh', 'Roshan', 'M', '1597418620', '', '', 'awesome.dancer@bollywood.ma', '1978-07-12', 'kok saru ghar', 'kok saro area', 4, 12, 380056, 'hrithik nu ghar', 'hrithik no area', 1, 21, 380033, 'A+', 'Divorced', '2009-07-11', NULL, '', '', 1),
('07008', 'Emma', 'Alex', 'Watson', 'F', '7417539638', '', '', 'jaiminnocrush@gmail.com', '1982-05-27', 'jaimin nu hgar', 'jaimin no area', 4, 12, 380018, 'london nu ghar enu', 'london nu area', 4, 12, 380042, 'AB+', 'Single', '2015-08-10', NULL, '', '', 1),
('07009', 'Tonybhai', 'Howardstark', 'Stark', 'M', '4865213980', '', '', 'iamawesome@jarvis.me', '1990-04-15', 'maru ahiya nu ghar', 'maro ahiya no area', 4, 12, 380041, '10880, Malibu Point, California', 'Vastrapur', 4, 12, 360049, 'A-', 'Married', '2014-04-11', NULL, '', '', 1),
('07010', 'Sachin', 'Ramesh', 'Tendulkar', 'M', '8520456789', '', '', 'masterblaster@cricket.in', '1976-06-11', 'motera stadium', 'motera', 4, 12, 3800411, 'mumbai walu address', 'posh area', 1, 21, 380004, 'B-', 'Married', '2010-01-10', NULL, '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `feedback_criteria`
--

CREATE TABLE `feedback_criteria` (
  `f_crit_id` tinyint(1) NOT NULL,
  `criteria` varchar(50) COLLATE utf32_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `feedback_criteria`
--

INSERT INTO `feedback_criteria` (`f_crit_id`, `criteria`) VALUES
(1, 'Teaching Capability'),
(2, 'Knowledge'),
(3, 'Presentation'),
(4, 'Class Punctuality'),
(5, 'Student Interaction'),
(6, 'Motivational Skills'),
(7, 'Overall Impression');

-- --------------------------------------------------------

--
-- Table structure for table `feedback_details`
--

CREATE TABLE `feedback_details` (
  `f_det_id` int(7) NOT NULL,
  `enr_no` varchar(12) COLLATE utf32_unicode_ci NOT NULL COMMENT '** Foreign Key',
  `alloc_id` smallint(4) UNSIGNED NOT NULL COMMENT '** Foreign Key',
  `f_crit_id` tinyint(1) NOT NULL COMMENT '** Foreign Key',
  `f_rating_id` tinyint(1) NOT NULL COMMENT '** Foreign Key'
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedback_percent`
--

CREATE TABLE `feedback_percent` (
  `f_perc_id` smallint(4) NOT NULL,
  `alloc_id` smallint(4) UNSIGNED NOT NULL COMMENT '** Foreign Key',
  `f_crit_id` tinyint(1) NOT NULL COMMENT '** Foreign Key',
  `total` smallint(3) NOT NULL,
  `total_perc` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedback_rating`
--

CREATE TABLE `feedback_rating` (
  `f_rating_id` tinyint(1) NOT NULL,
  `rating_value` varchar(15) COLLATE utf32_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `feedback_rating`
--

INSERT INTO `feedback_rating` (`f_rating_id`, `rating_value`) VALUES
(1, 'Weak'),
(2, 'Average'),
(3, 'Good'),
(4, 'Very Good'),
(5, 'Excellent');

-- --------------------------------------------------------

--
-- Table structure for table `institute_master`
--

CREATE TABLE `institute_master` (
  `institute_id` tinyint(3) NOT NULL,
  `institute_code` varchar(3) COLLATE utf32_unicode_ci NOT NULL DEFAULT '002',
  `institute_name` varchar(50) COLLATE utf32_unicode_ci NOT NULL DEFAULT 'AHMEDABAD INSTITUTE OF TECHNOLOGY',
  `est_year` smallint(4) NOT NULL DEFAULT '2004'
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `institute_master`
--

INSERT INTO `institute_master` (`institute_id`, `institute_code`, `institute_name`, `est_year`) VALUES
(1, '002', 'AHMEDABAD INSTITUTE OF TECHNOLOGY', 2004);

-- --------------------------------------------------------

--
-- Table structure for table `lecture_type_master`
--

CREATE TABLE `lecture_type_master` (
  `lec_type_id` tinyint(1) NOT NULL,
  `lecture_type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lecture_type_master`
--

INSERT INTO `lecture_type_master` (`lec_type_id`, `lecture_type`) VALUES
(1, 'Lecture'),
(2, 'Lab');

-- --------------------------------------------------------

--
-- Table structure for table `media_details`
--

CREATE TABLE `media_details` (
  `media_id` int(6) NOT NULL,
  `event_title` varchar(50) COLLATE utf32_unicode_ci NOT NULL,
  `event_desc` text COLLATE utf32_unicode_ci NOT NULL,
  `folder_link` varchar(255) COLLATE utf32_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mid_result`
--

CREATE TABLE `mid_result` (
  `result_id` smallint(5) NOT NULL,
  `enr_no` varchar(12) COLLATE utf32_unicode_ci NOT NULL COMMENT '** Foreign Key',
  `sub_id` smallint(4) UNSIGNED NOT NULL COMMENT '** Foreign Key',
  `sub_marks` tinyint(2) NOT NULL,
  `exam_type_id` tinyint(1) NOT NULL COMMENT '** Foreign Key',
  `total_marks` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `mid_result`
--

INSERT INTO `mid_result` (`result_id`, `enr_no`, `sub_id`, `sub_marks`, `exam_type_id`, `total_marks`) VALUES
(1, '130020107048', 153, 25, 1, 30),
(2, '130020107048', 157, 28, 1, 30),
(3, '140023107083', 153, 20, 1, 30),
(4, '140023107083', 160, 29, 1, 30),
(5, '130020107048', 153, 6, 2, 10),
(6, '130020107048', 157, 8, 2, 10),
(7, '140023107083', 153, 4, 2, 10),
(8, '140023107083', 160, 7, 2, 10),
(9, '130020107001', 131, 16, 1, 30),
(10, '130020107001', 138, 7, 1, 30),
(11, '130020107001', 125, 19, 1, 30),
(12, '130020107001', 144, 18, 1, 30),
(13, '130020107001', 146, 29, 1, 30),
(14, '130020107001', 117, 12, 1, 30),
(15, '130020107001', 156, 23, 1, 30),
(22, '130020107034', 137, 10, 1, 25),
(23, '130020107034', 144, 15, 1, 25),
(24, '130020107086', 133, 16, 1, 30),
(25, '130020107086', 133, 4, 2, 10),
(26, '130020107086', 145, 26, 1, 30),
(27, '130020107086', 145, 6, 2, 10),
(28, '130020107086', 157, 19, 1, 30);

-- --------------------------------------------------------

--
-- Table structure for table `parent_detail_master`
--

CREATE TABLE `parent_detail_master` (
  `enr_no` varchar(12) COLLATE utf32_unicode_ci NOT NULL COMMENT '** Foreign Key',
  `f_first_name` varchar(30) COLLATE utf32_unicode_ci NOT NULL,
  `f_middle_name` varchar(30) COLLATE utf32_unicode_ci NOT NULL,
  `f_last_name` varchar(30) COLLATE utf32_unicode_ci NOT NULL,
  `f_contact` varchar(10) COLLATE utf32_unicode_ci NOT NULL,
  `f_email` varchar(50) COLLATE utf32_unicode_ci NOT NULL,
  `f_ed_qual` varchar(50) COLLATE utf32_unicode_ci NOT NULL,
  `f_occupation` varchar(50) COLLATE utf32_unicode_ci NOT NULL,
  `f_ann_income` mediumint(8) UNSIGNED NOT NULL,
  `f_dob` date NOT NULL,
  `m_first_name` varchar(30) COLLATE utf32_unicode_ci NOT NULL,
  `m_middle_name` varchar(30) COLLATE utf32_unicode_ci NOT NULL,
  `m_last_name` varchar(30) COLLATE utf32_unicode_ci NOT NULL,
  `m_contact` varchar(10) COLLATE utf32_unicode_ci NOT NULL,
  `m_email` varchar(50) COLLATE utf32_unicode_ci NOT NULL,
  `m_ed_qual` varchar(50) COLLATE utf32_unicode_ci NOT NULL,
  `m_occupation` varchar(50) COLLATE utf32_unicode_ci NOT NULL,
  `m_ann_income` mediumint(8) UNSIGNED NOT NULL,
  `m_dob` date NOT NULL,
  `g_first_name` varchar(50) COLLATE utf32_unicode_ci NOT NULL,
  `g_middle_name` varchar(50) COLLATE utf32_unicode_ci NOT NULL,
  `g_last_name` varchar(50) COLLATE utf32_unicode_ci NOT NULL,
  `g_contact` varchar(10) COLLATE utf32_unicode_ci NOT NULL,
  `g_email` varchar(50) COLLATE utf32_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `parent_detail_master`
--

INSERT INTO `parent_detail_master` (`enr_no`, `f_first_name`, `f_middle_name`, `f_last_name`, `f_contact`, `f_email`, `f_ed_qual`, `f_occupation`, `f_ann_income`, `f_dob`, `m_first_name`, `m_middle_name`, `m_last_name`, `m_contact`, `m_email`, `m_ed_qual`, `m_occupation`, `m_ann_income`, `m_dob`, `g_first_name`, `g_middle_name`, `g_last_name`, `g_contact`, `g_email`) VALUES
('130020107001', 'Gaurang', 'Ashwin', 'Dave', '9427661996', 'gdave2007@gmail.com', 'Msc(Chem)', 'GM (Q&A)', 800000, '1965-08-14', 'Chetana', 'Gaurang', 'Dave', '9428239994', 'chetanaDave@gmail.com', 'BA', 'HouseWife', 0, '1968-07-15', '', '', '', '', ''),
('130020107086', 'Umakant', 'Makarand', 'Rathod', '9425553284', 'u.rathod@gmail.com', 'BE(MECH)', 'Engineer', 1000000, '1965-08-23', 'Maheshwari', 'Umakant', 'Rathod', '9425553280', 'nil', 'MCOM', 'Accountant', 500000, '1967-10-11', 'Jyoti', 'Jayant', 'Patel', '9428239654', 'jyotijpatel@yahoo.in'),
('140023107083', 'Vinodkumar', 'Mangaldas', 'Galiya', '8980640310', '', '10th', 'Tailor', 240000, '1972-08-08', 'Meenaben', 'Vinodkumar', 'Galiya', '', '', '10th', 'Housewife', 0, '1976-08-07', '', '', '', '', ''),
('140023107083', 'Dineshbhai', 'Somabhai', 'Patel', '9974318509', '', '10th', 'Electrician', 500000, '1970-12-10', 'Smitaben', 'Dineshbhai', 'Patel', '', '', '10th', 'Housewife', 0, '1975-10-12', '', '', '', '', ''),
('130020107048', 'Satish', 'Jethalal', 'Pandya', '9825411265', 'pandyasatish15@gmail.com', 'LLB', 'Advocate', 500000, '1965-08-15', 'Kashmira', 'Satishkumar', 'Pandya', '9428735999', 'kspandya03@gmail.com', 'MCA', 'Job', 500000, '1969-01-03', '', '', '', '', ''),
('130130117105', 'Utpal', 'Ramesh', 'Shah', '8527419630', 'ut.shah@gmail.com', 'ME', 'Job', 1000000, '1970-12-06', 'Naina', 'Utpal', 'Shah', '1473692580', 'n.utshah@gmail.com', 'B.Ed.', 'Teacher', 500000, '1973-02-13', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `semester_master`
--

CREATE TABLE `semester_master` (
  `sem_id` tinyint(2) NOT NULL,
  `discipline_id` tinyint(2) NOT NULL COMMENT '** Foreign Key',
  `sem_no` char(2) COLLATE utf32_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `semester_master`
--

INSERT INTO `semester_master` (`sem_id`, `discipline_id`, `sem_no`) VALUES
(1, 1, '1A'),
(2, 1, '2A'),
(3, 1, '3'),
(4, 1, '4'),
(5, 1, '5'),
(6, 1, '6'),
(7, 1, '7'),
(8, 1, '8'),
(9, 1, '1B'),
(10, 1, '2B');

-- --------------------------------------------------------

--
-- Table structure for table `staff_department_master`
--

CREATE TABLE `staff_department_master` (
  `dept_id` tinyint(2) NOT NULL,
  `dept_name` varchar(30) COLLATE utf32_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `staff_department_master`
--

INSERT INTO `staff_department_master` (`dept_id`, `dept_name`) VALUES
(1, 'Lab Assitant'),
(2, 'Cleaning'),
(3, 'Administrative'),
(4, 'Peon');

-- --------------------------------------------------------

--
-- Table structure for table `staff_details`
--

CREATE TABLE `staff_details` (
  `staff_id` varchar(12) COLLATE utf32_unicode_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf32_unicode_ci NOT NULL,
  `middle_name` varchar(30) COLLATE utf32_unicode_ci NOT NULL,
  `last_name` varchar(30) COLLATE utf32_unicode_ci NOT NULL,
  `mobile_1` varchar(10) COLLATE utf32_unicode_ci NOT NULL,
  `mobile_2` varchar(10) COLLATE utf32_unicode_ci NOT NULL,
  `landline` varchar(15) COLLATE utf32_unicode_ci NOT NULL,
  `local_street_addr` varchar(100) COLLATE utf32_unicode_ci NOT NULL,
  `local_area` varchar(50) COLLATE utf32_unicode_ci NOT NULL,
  `local_city` smallint(4) UNSIGNED NOT NULL COMMENT '** Foreign Key',
  `local_state` tinyint(2) NOT NULL COMMENT '** Foreign Key',
  `local_pincode` int(6) NOT NULL,
  `perm_street_addr` varchar(100) COLLATE utf32_unicode_ci NOT NULL,
  `perm_area` varchar(50) COLLATE utf32_unicode_ci NOT NULL,
  `perm_city` smallint(4) UNSIGNED NOT NULL COMMENT '** Foreign Key',
  `perm_state` tinyint(2) NOT NULL COMMENT '** Foreign Key',
  `perm_pincode` int(6) NOT NULL,
  `gender` char(1) COLLATE utf32_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf32_unicode_ci NOT NULL,
  `marital_status` varchar(10) COLLATE utf32_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `blood_grp` varchar(3) COLLATE utf32_unicode_ci NOT NULL,
  `dept_id` tinyint(2) NOT NULL COMMENT '** Foreign Key',
  `designation` varchar(50) COLLATE utf32_unicode_ci NOT NULL,
  `edu_quali` varchar(50) COLLATE utf32_unicode_ci NOT NULL,
  `photograph` varchar(255) COLLATE utf32_unicode_ci NOT NULL,
  `cv_link` varchar(255) COLLATE utf32_unicode_ci NOT NULL,
  `join_date` date NOT NULL,
  `left_date` date DEFAULT NULL,
  `staff_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `staff_details`
--

INSERT INTO `staff_details` (`staff_id`, `first_name`, `middle_name`, `last_name`, `mobile_1`, `mobile_2`, `landline`, `local_street_addr`, `local_area`, `local_city`, `local_state`, `local_pincode`, `perm_street_addr`, `perm_area`, `perm_city`, `perm_state`, `perm_pincode`, `gender`, `email`, `marital_status`, `dob`, `blood_grp`, `dept_id`, `designation`, `edu_quali`, `photograph`, `cv_link`, `join_date`, `left_date`, `staff_status`) VALUES
('ST160001', 'Kanu', 'Ranjan', 'Modi', '9558071623', '9423741732', '', '15, Sumel Bunglows', 'Satellite', 4, 12, 380016, '15, Sumel Bunglows', 'Satellite', 4, 12, 380016, 'M', 'kanu.modi34@gmail.com', 'Married', '1964-03-15', 'A+', 3, 'Head Clerk', 'BCom', '', '', '2004-08-03', NULL, 1),
('ST160002', 'Pooja', 'yogesh', 'Vyas', '9099132211', '9552525520', '79254545', '22-Sankalp, Near Thaltej tad', 'Thaltej', 4, 12, 380034, '22-Sankalp, Near Thaltej tad', 'Thaltej', 4, 12, 380034, 'F', 'v.pooja08@hotmail.com', 'Married', '1989-01-02', 'B+', 1, 'Lab Assistant', 'Msc', '', '', '2007-12-08', NULL, 1),
('ST160003', 'Mukesh', 'Ramesh', 'Otiya', '989871754', '', '', 'B-7 , SANJAY FLATS', 'Jodhpur Char rastas', 4, 12, 380054, 'B-7 , SANJAY FLATS', 'Jodhpur Char rastas', 4, 12, 380054, 'M', 'nil', 'Married', '1960-03-15', 'A+', 2, 'Cleaning', '10 PASS', '', '', '2014-08-03', NULL, 1),
('ST160004', 'Wasim', 'Abdul', 'Akram', '9099132211', '9552525520', '79254545', '9, Makarpura', '9, Makarpura', 4, 12, 380027, '9, Makarpura', '9, Makarpura', 4, 12, 380027, 'M', 'nil', 'Single', '1975-05-04', 'O+', 2, 'Cleaning', '11 PASS', '', '', '2012-02-01', NULL, 1),
('ST160005', 'Ramesh', 'Sureshbhai', 'Prajapati', '9998005521', '', '', '21, umiyanagar', 'Chandlodia', 4, 12, 382481, '21, umiyanagar', 'Chandlodia', 4, 12, 382481, 'M', 'Ramesh.suresh@gmail.com', 'Married', '1990-01-02', 'AB+', 3, 'Dept Head', 'MCom', '', '', '2016-08-03', NULL, 1),
('ST160006', 'Arjun', 'Krisnkumar', 'Yadav', '8000070000', '', '', '5, Rambaug Soc.', 'Chanakyapuri', 4, 12, 380061, '5, Rambaug Soc.', 'Chanakyapuri', 4, 12, 380061, 'M', 'Ak87@gmail.com', 'Married', '1980-07-06', 'B-', 3, 'Librarian', 'BCom', '', '', '2014-10-05', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_current_acad_details`
--

CREATE TABLE `student_current_acad_details` (
  `current_acad_id` int(5) NOT NULL,
  `enr_no` varchar(12) COLLATE utf32_unicode_ci NOT NULL COMMENT '** Foreign Key',
  `discipline_id` tinyint(2) NOT NULL COMMENT '** Foreign Key',
  `branch_id` tinyint(3) NOT NULL COMMENT '** Foreign Key',
  `sem_id` tinyint(2) NOT NULL COMMENT '** Foreign Key',
  `div_id` smallint(3) UNSIGNED NOT NULL COMMENT '** Foreign Key',
  `batch_id` smallint(3) UNSIGNED NOT NULL COMMENT '** Foreign Key',
  `elec_id` smallint(4) UNSIGNED NOT NULL COMMENT '** Foreign Key'
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `student_current_acad_details`
--

INSERT INTO `student_current_acad_details` (`current_acad_id`, `enr_no`, `discipline_id`, `branch_id`, `sem_id`, `div_id`, `batch_id`, `elec_id`) VALUES
(1, '130020107001', 1, 2, 8, 1, 1, 157),
(2, '130020107086', 1, 2, 8, 2, 5, 160),
(3, '140023107083', 1, 2, 8, 1, 2, 160),
(5, '130020107048', 1, 2, 8, 1, 2, 157);

-- --------------------------------------------------------

--
-- Table structure for table `student_master`
--

CREATE TABLE `student_master` (
  `enr_no` varchar(12) COLLATE utf32_unicode_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf32_unicode_ci NOT NULL,
  `middle_name` varchar(30) COLLATE utf32_unicode_ci NOT NULL,
  `last_name` varchar(30) COLLATE utf32_unicode_ci NOT NULL,
  `local_street_add` varchar(50) COLLATE utf32_unicode_ci NOT NULL,
  `local_area` varchar(30) COLLATE utf32_unicode_ci NOT NULL,
  `local_city` smallint(4) UNSIGNED NOT NULL COMMENT '** Foreign Key',
  `local_state` tinyint(2) NOT NULL COMMENT '** Foreign Key',
  `local_pincode` varchar(6) COLLATE utf32_unicode_ci NOT NULL,
  `perm_street_add` varchar(50) COLLATE utf32_unicode_ci NOT NULL,
  `perm_area` varchar(30) COLLATE utf32_unicode_ci NOT NULL,
  `perm_city` smallint(4) UNSIGNED NOT NULL COMMENT '** Foreign Key',
  `perm_state` tinyint(2) NOT NULL COMMENT '** Foreign Key',
  `perm_pincode` varchar(6) COLLATE utf32_unicode_ci NOT NULL,
  `gender` char(1) COLLATE utf32_unicode_ci NOT NULL,
  `DOB` date NOT NULL,
  `blood_grp` varchar(3) COLLATE utf32_unicode_ci NOT NULL,
  `mobile_student` varchar(10) COLLATE utf32_unicode_ci NOT NULL,
  `mobile_parent` varchar(10) COLLATE utf32_unicode_ci NOT NULL,
  `landline_no` varchar(15) COLLATE utf32_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf32_unicode_ci NOT NULL,
  `admit_date` date NOT NULL,
  `category` varchar(10) COLLATE utf32_unicode_ci NOT NULL,
  `student_type` varchar(10) COLLATE utf32_unicode_ci NOT NULL,
  `admit_type` varchar(10) COLLATE utf32_unicode_ci NOT NULL,
  `photograph` varchar(255) COLLATE utf32_unicode_ci NOT NULL,
  `student_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `student_master`
--

INSERT INTO `student_master` (`enr_no`, `first_name`, `middle_name`, `last_name`, `local_street_add`, `local_area`, `local_city`, `local_state`, `local_pincode`, `perm_street_add`, `perm_area`, `perm_city`, `perm_state`, `perm_pincode`, `gender`, `DOB`, `blood_grp`, `mobile_student`, `mobile_parent`, `landline_no`, `email`, `admit_date`, `category`, `student_type`, `admit_type`, `photograph`, `student_status`) VALUES
('130020107001', 'Abhishek', 'Gaurangbhai', 'Dave', 'B/2, 15 Shanti Apt, Near AIS', 'Bodekdev', 4, 12, '380054', 'B/2, 15 Shanti Apt', 'Bodekdev', 4, 12, '380054', 'M', '1996-02-24', 'B+', '8733036008', '', '', 'abhishek_dave@rocketmail.com', '2013-09-13', 'General', 'Regular', 'MQ', '', 1),
('130020107034', 'Vishal', 'Dineshbhai', 'Laheri', '15, Surdhinagar Soc.', 'Chandlodia', 4, 12, '382481', '15, Surdhinagar Soc.', 'Chandlodia', 4, 12, '382481', 'M', '1996-12-13', 'O-', '9974318509', '', '', 'Mayurpatel764@gmail.com', '2014-01-01', 'General', 'D2D', 'MQ', '', 1),
('130020107048', 'Parantap', 'Satishkumar', 'Pandya', 'C-502, Mohini Tower, Judges Bungalow Road', 'Bodakdev', 4, 12, '380054', 'C-502, Mohini Tower, Judges Bungalow Road', 'Bodakdev', 4, 12, '380054', 'M', '1995-07-06', 'B+', '9173438499', '', '07926855396', 'pandyaparantap95@gmail.com', '2013-09-07', 'General', 'Regular', 'ACPC', 'http://192.168.0.101/newAttempt/photos/parantap.jpg', 1),
('130020107086', 'Harshraj', 'Umakant', 'Rathod', 'A/2, ABC apartment', 'Bapunagar', 4, 12, '380015', 'A/2, ABC apartment', 'Bapunagar', 4, 12, '380015', 'M', '1995-11-04', 'B-', '99999999', '', '', 'manoj.r@gmail.com', '2013-09-11', 'General', 'Regular', 'ACPC', '', 0),
('130130117105', 'Zeal', 'Utpalkumar', 'Shah', 'B/3,Shayona Appartments', 'Gurukul', 4, 12, '380033', 'B/3,Shayona Appartments', 'Gurukul', 4, 12, '380033', 'F', '1996-02-22', 'A+', '9876543210', '', '', 'shah.zeal51@gmail.com', '2013-09-01', 'General', 'Regular', 'ACPC', '', 1),
('140023107083', 'Jaimin', 'Vinodkumar', 'Galiya', '7/b, Rajivnagar', 'Chandlodia', 4, 12, '382481', '7/b, Rajivnagar', 'Chandlodia', 4, 12, '382481', 'M', '1996-07-30', 'A+', '9998786282', '', '', 'Jaimin8460@gmail.com', '2014-01-01', 'SEBC', 'D2D', 'MQ', 'http://192.168.0.101/newAttempt/photos/jaimin.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_prev_acad_details`
--

CREATE TABLE `student_prev_acad_details` (
  `enr_no` varchar(12) COLLATE utf32_unicode_ci NOT NULL COMMENT '** Foreign Key',
  `ssc_board` varchar(100) COLLATE utf32_unicode_ci NOT NULL,
  `ssc_medium` varchar(15) COLLATE utf32_unicode_ci NOT NULL,
  `ssc_school` varchar(60) COLLATE utf32_unicode_ci NOT NULL,
  `ssc_result` double NOT NULL,
  `ssc_pass_year` year(4) NOT NULL,
  `h_ed_type` varchar(8) COLLATE utf32_unicode_ci NOT NULL,
  `h_ed_board` varchar(100) COLLATE utf32_unicode_ci NOT NULL,
  `h_ed_medium` varchar(15) COLLATE utf32_unicode_ci NOT NULL,
  `h_ed_inst` varchar(100) COLLATE utf32_unicode_ci NOT NULL,
  `h_ed_result` double NOT NULL,
  `h_ed_pass_year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `student_prev_acad_details`
--

INSERT INTO `student_prev_acad_details` (`enr_no`, `ssc_board`, `ssc_medium`, `ssc_school`, `ssc_result`, `ssc_pass_year`, `h_ed_type`, `h_ed_board`, `h_ed_medium`, `h_ed_inst`, `h_ed_result`, `h_ed_pass_year`) VALUES
('130020107001', 'Gujarat Secondary Education Board', 'Gujarati', 'Lotus School', 80.56, 2011, '12th', 'Gujarat Higher Secondary Education Board', 'Gujarati', 'Lotus School', 70.81, 2013),
('130020107086', 'Gujarat Secondary Education Board', 'English', 'Something name', 75, 2011, '12th', 'Gujarat Higher Secondary Education Board', 'Gujarati', 'Something name', 69.36, 2013),
('140023107083', 'Gujarat Secondary Education Board', 'Gujarati', 'koik school nu nam', 89, 2011, 'Diploma', 'Gujarat Technological University', 'English', 'Nirma Institute of Technology', 8.64, 2013),
('130020107034', 'Gujarat Secondary Education Board', 'Gujarati', 'koik biji school nu nam', 63, 2011, 'Diploma', 'Gujarat Technological University', 'English', 'Nirma Institute of Technology', 7.69, 2013),
('130020107048', 'Gujarat Secondary Education Board', 'Gujarati', 'Abhijat Vidya Vihar', 94.22, 2011, '12th', 'Gujarat Higher Secondary Education Board', 'Gujarati', 'Abhijat Vidya Vihar', 84.76, 2013),
('130130117105', 'Gujarat Secondary Education Board', 'English', 'Some english school', 98.32, 2011, '12th', 'Gujarat Higher Secondary Education Board', 'English', 'Some english school', 92.27, 2013);

-- --------------------------------------------------------

--
-- Table structure for table `subject_master`
--

CREATE TABLE `subject_master` (
  `sub_id` smallint(4) UNSIGNED NOT NULL,
  `sub_code` mediumint(8) UNSIGNED NOT NULL,
  `sub_name` varchar(100) COLLATE utf32_unicode_ci NOT NULL,
  `sub_acr` varchar(6) COLLATE utf32_unicode_ci NOT NULL,
  `sub_credit` tinyint(2) UNSIGNED NOT NULL,
  `sub_type` enum('Primary','Elective') COLLATE utf32_unicode_ci NOT NULL,
  `sub_link` varchar(255) COLLATE utf32_unicode_ci NOT NULL,
  `sub_status` tinyint(1) NOT NULL COMMENT '0 : Active, 1 : Inactive',
  `sem_id` tinyint(2) NOT NULL COMMENT '** Foreign Key	',
  `discipline_id` tinyint(2) NOT NULL COMMENT '** Foreign Key',
  `branch_id` tinyint(3) NOT NULL COMMENT '** Foreign Key'
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `subject_master`
--

INSERT INTO `subject_master` (`sub_id`, `sub_code`, `sub_name`, `sub_acr`, `sub_credit`, `sub_type`, `sub_link`, `sub_status`, `sem_id`, `discipline_id`, `branch_id`) VALUES
(1, 2110014, 'Calculus', 'Calc', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2110014.pdf', 0, 1, 1, 8),
(2, 2110002, 'Communication Skills', 'CS', 4, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2110002.pdf', 0, 1, 1, 8),
(3, 2110005, 'Elements of Electrical Engineering', 'EEE', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2110005.pdf', 0, 1, 1, 8),
(4, 2110006, 'Elements of Mechanical Engineering', 'EME', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2110006.pdf', 0, 1, 1, 8),
(5, 2110013, 'Engineering Graphics', 'EG', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2110013.pdf', 0, 1, 1, 8),
(6, 2110007, 'Environmental Studies', 'ES', 3, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2110007.pdf', 0, 1, 1, 8),
(7, 2110015, 'Vector Calculus & Linear Algebra', 'VCLA', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2110015.pdf', 0, 2, 1, 8),
(8, 2110003, 'Computer Programming and Utilization', 'CPU', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2110003.pdf', 0, 2, 1, 8),
(9, 2110011, 'Physics', 'Phy', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2110011.pdf', 0, 2, 1, 8),
(10, 2110001, 'Chemistry', 'Chem', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2110001.pdf', 0, 2, 1, 8),
(11, 2110004, 'Elements of Civil Engineering', 'ECE', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2110004.pdf', 0, 2, 1, 8),
(12, 2110012, 'Workshop', 'WS', 4, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2110012.pdf', 0, 2, 1, 8),
(13, 2990001, 'Contributor Personality Development', 'CPD', 4, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2990001.pdf', 0, 2, 1, 8),
(14, 2110014, 'Calculus', 'Calc', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2110014.pdf', 0, 9, 1, 8),
(15, 2110002, 'Communication Skills', 'CS', 4, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2110002.pdf', 0, 9, 1, 8),
(16, 2110005, 'Elements of Electrical Engineering', 'EEE', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2110005.pdf', 0, 9, 1, 8),
(17, 2110007, 'Environmental Studies', 'ES', 3, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2110007.pdf', 0, 9, 1, 8),
(18, 2110003, 'Computer Programming and Utilization', 'CPU', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2110003.pdf', 0, 9, 1, 8),
(19, 2110006, 'Elements of Mechanical Engineering', 'EME', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2110006.pdf', 0, 9, 1, 8),
(20, 2110015, 'Vector Calculus & Linear Algebra', 'VCLA', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2110015.pdf', 0, 10, 1, 8),
(21, 2110013, 'Engineering Graphics', 'EG', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2110013.pdf', 0, 10, 1, 8),
(22, 2110011, 'Physics', 'PHY', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2110011.pdf', 0, 10, 1, 8),
(23, 2110016, 'Basic Electronics', 'BE', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2110016.pdf', 0, 10, 1, 8),
(24, 2110017, 'Electrical and Electronics Workshop', 'EEWS', 4, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2110017.pdf', 0, 10, 1, 8),
(25, 2990001, 'Contributor Personality Development', 'CPD', 4, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2990001.pdf', 0, 10, 1, 8),
(26, 2130002, 'Advanced Engineering Mathematics', 'AEM', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2130002.pdf', 0, 3, 1, 7),
(27, 2130003, 'Mechanics Of Solid', 'MOS', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2130003.pdf', 0, 3, 1, 7),
(28, 2131903, 'Manufacturing Process-1', 'MP', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2131903.pdf', 0, 3, 1, 7),
(29, 2131904, 'Material Science And Metallurgy', 'MSAM', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2131904.pdf', 0, 3, 1, 7),
(30, 2131905, 'Engineering Thermodynamics', 'ET', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2131905.pdf', 0, 3, 1, 7),
(31, 2131906, 'Kinematics Of Machines', 'KOM', 4, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2131906.pdf', 0, 3, 1, 7),
(32, 2130005, 'Design Engineering - I A', 'DE-IA', 3, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2130005.pdf', 0, 3, 1, 7),
(33, 2140003, 'Engineering Economics And Management', 'EEM', 3, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2140003.pdf', 0, 4, 1, 7),
(34, 2140203, 'Automobile Engines', 'AE', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2140203.pdf', 0, 4, 1, 7),
(35, 2141901, 'Mechanical Measurement & Metrology', 'MMM', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2141901.pdf', 0, 4, 1, 7),
(36, 2141905, 'Complex Variables And Numerical Methods', 'CVNM', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2141905.pdf', 0, 4, 1, 7),
(37, 2141906, 'Fluid Mechanics', 'FM', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2141906.pdf', 0, 4, 1, 7),
(38, 2141907, 'Machine Design & Industrial Drafting', 'MDID', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2141907.pdf', 0, 4, 1, 7),
(39, 2140002, 'Design Engineering - I B', 'DE-IB', 3, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2140002.pdf', 0, 4, 1, 7),
(40, 2150202, 'Automobile Systems', 'AS', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2150202.pdf', 0, 5, 1, 7),
(41, 2151909, 'Heat Transfer', 'HT', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2151909.pdf', 0, 5, 1, 7),
(42, 2150206, 'Automotive Manufacturing', 'AM', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2150206.pdf', 0, 5, 1, 7),
(43, 2150207, 'Automobile Transmission', 'AT', 3, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2150207.pdf', 0, 5, 1, 7),
(44, 2150208, 'Automotive Electrical Systems', 'AES', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2150208.pdf', 0, 5, 1, 7),
(45, 2150001, 'Design Engineering - II A', 'DE-IIA', 3, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2150001.pdf', 0, 5, 1, 7),
(46, 2150002, 'Cyber Security', 'CS', 3, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2150002.pdf', 0, 5, 1, 7),
(47, 2150003, 'Diaster Management', 'DM', 3, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2150003.pdf', 0, 5, 1, 7),
(48, 2160207, 'Alternative Fuel And Power Systems', 'AFPS', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2160207.pdf', 0, 6, 1, 7),
(49, 2161903, 'Computer Aided Design', 'CAD', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2161903.pdf', 0, 6, 1, 7),
(50, 2161908, 'Refrigeration And Air Conditioning', 'RAC', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2161908.pdf', 0, 6, 1, 7),
(51, 2160205, 'Automobile Chassis And Body Engineering', 'ACBE', 3, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2160205.pdf', 0, 6, 1, 7),
(52, 2160208, 'Automotive Computer Controlled Systems', 'ACCS', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2160208.pdf', 0, 6, 1, 7),
(53, 2161901, 'Dynamics Of Machinery', 'DOM', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2161901.pdf', 0, 6, 1, 7),
(54, 2160001, 'Design Engineering - II B', 'DE-IIB', 3, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2160001.pdf', 0, 6, 1, 7),
(55, 2170001, 'Project - I', 'P-I', 4, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2170001.pdf', 0, 7, 1, 7),
(56, 2170202, 'Automobile Component Design', 'ACD', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2170202.pdf', 0, 7, 1, 7),
(57, 2170203, 'Vehicle Dynamics', 'VD', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2170203.pdf', 0, 7, 1, 7),
(58, 2170204, 'Vehicle Testing & Homologation', 'VTH', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2170204.pdf', 0, 7, 1, 7),
(59, 2170205, 'Transport Management & Laws', 'TML', 4, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2170205.pdf', 0, 7, 1, 7),
(60, 2170206, 'Vehicle Maintenance & Garage Practice', 'VMGP', 5, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2170206.pdf', 0, 7, 1, 7),
(61, 2170207, 'Two And Three Wheeler Technology', 'TTWT', 5, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2170207.pdf', 0, 7, 1, 7),
(62, 2171912, 'Oil Hydraulics & Pneumatics', 'OHP', 5, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2171912.pdf', 0, 7, 1, 7),
(63, 2180201, 'Project II', 'P-II', 12, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2180201.pdf', 0, 8, 1, 7),
(64, 2180206, 'Automobile System Design', 'ASD', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2180206.pdf', 0, 8, 1, 7),
(65, 2180203, 'Special Purpose Vehicles', 'SPV', 4, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2180203.pdf', 0, 8, 1, 7),
(66, 2180207, 'Applied Industrial Engineering In Automobile', 'AIEIA', 4, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2180207.pdf', 0, 8, 1, 7),
(67, 2180208, 'Computer Integrated Manufacturing In Automobile Industry', 'CIMAI', 4, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2180208.pdf', 0, 8, 1, 7),
(68, 2180209, 'Noise, Vibration & Harshness And Safety', 'NVHS', 4, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2180209.pdf', 0, 8, 1, 7),
(69, 2180210, 'Automotive And Combustion Engine Technology', 'ACET', 4, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2180210.pdf', 0, 8, 1, 7),
(70, 2130002, 'Advanced Engineering Mathematics', 'AEM', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2130002.pdf', 0, 3, 1, 6),
(71, 2130003, 'Mechanics Of Solids', 'MOS', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2130003.pdf', 0, 3, 1, 6),
(72, 2130601, 'Surveying', 'Surv', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2130601.pdf', 0, 3, 1, 6),
(73, 2130602, 'Fluid Mechanics', 'FM', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2130602.pdf', 0, 3, 1, 6),
(74, 2130606, 'Geotechnics & Applied Geology', 'GAG', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2130606.pdf', 0, 3, 1, 6),
(75, 2130607, 'Building Construction', 'BC', 4, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2130607.pdf', 0, 3, 1, 6),
(76, 2130005, 'Design Engineering - I A', 'DE-IA', 3, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2130005.pdf', 0, 3, 1, 6),
(77, 2140003, 'Engineering Economics And Management', 'EEM', 3, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2140003.pdf', 0, 4, 1, 6),
(78, 2140601, 'Advanced Surveying', 'AS', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2140601.pdf', 0, 4, 1, 6),
(79, 2140603, 'Structural Analysis-I', 'SA-I', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2140603.pdf', 0, 4, 1, 6),
(80, 2140606, 'Numerical And Statistical Methods For Civil Engineering', 'NSM', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2140606.pdf', 0, 4, 1, 6),
(81, 2140607, 'Buliding & Town Planning', 'BTP', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2140607.pdf', 0, 4, 1, 6),
(82, 2140608, 'Concrete Technology', 'CT', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2140608.pdf', 0, 4, 1, 6),
(83, 2140002, 'Design Engineering - I B', 'DE-IB', 3, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2140002.pdf', 0, 4, 1, 6),
(84, 2150601, 'Highway Engineering', 'HE', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2150601.pdf', 0, 5, 1, 6),
(85, 2150602, 'Hydrology & Water Resources Engineering', 'HWRE', 4, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2150602.pdf', 0, 5, 1, 6),
(86, 2150603, 'Environmental Engineering', 'EE', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2150603.pdf', 0, 5, 1, 6),
(87, 2150608, 'Structural Analysis-II', 'SA-II', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2150608.pdf', 0, 5, 1, 6),
(88, 2150609, 'Soil Mechanics', 'SM', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2150609.pdf', 0, 5, 1, 6),
(89, 2150001, 'Design Engineering - II A', 'DE-IIA', 3, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2150001.pdf', 0, 5, 1, 6),
(90, 2150002, 'Cyber Security', 'CS', 3, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2150002.pdf', 0, 5, 1, 6),
(91, 2150003, 'Diaster Management', 'DM', 3, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2150003.pdf', 0, 5, 1, 6),
(92, 2160601, 'Advanced Construction And Equipments', 'ACE', 4, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2160601.pdf', 0, 6, 1, 6),
(93, 2160602, 'Applied Fluid Mechanics', 'AFM', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2160602.pdf', 0, 6, 1, 6),
(94, 2160603, 'Railway, Bridge & Tunnel Engineering', 'RBTE', 4, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2160603.pdf', 0, 6, 1, 6),
(95, 2160604, 'Water & Waste Water Engineering', 'WWWE', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2160604.pdf', 0, 6, 1, 6),
(96, 2160607, 'Elementary Structural Design', 'ESD', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2160607.pdf', 0, 6, 1, 6),
(97, 2160001, 'Design Engineering - II B', 'DE-IIB', 3, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2160001.pdf', 0, 6, 1, 6),
(98, 2160608, 'Urban Transportation System', 'UTS', 4, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2160608.pdf', 0, 6, 1, 6),
(99, 2160609, 'Computational Mechanics', 'CM', 4, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2160609.pdf', 0, 6, 1, 6),
(100, 2170003, 'Project - I', 'P-I', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2170003.pdf', 0, 7, 1, 6),
(101, 2170607, 'Design Of Reinforced Concrete Structures', 'DORCS', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2170607.pdf', 0, 7, 1, 6),
(102, 2170609, 'Irrigation Engineering', 'IE', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2170609.pdf', 0, 7, 1, 6),
(103, 2170610, 'Professional Practices & Valuation', 'PPV', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2170610.pdf', 0, 7, 1, 6),
(104, 2170606, 'Application Of Geoinformatics In Civil Engineering', 'AOG', 4, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2170606.pdf', 0, 7, 1, 6),
(105, 2170611, 'Infrastructure Engineering And Management', 'IEM', 4, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2170611.pdf', 0, 7, 1, 6),
(106, 2170612, 'Earthquake Engineering', 'EE', 4, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2170612.pdf', 0, 7, 1, 6),
(107, 2170613, 'Traffic Engineering', 'TE', 4, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2170613.pdf', 0, 7, 1, 6),
(108, 2180605, 'Project -II', 'P-II', 8, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2180605.pdf', 0, 8, 1, 6),
(109, 2180609, 'Foundation Engineering', 'FE', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2180609.pdf', 0, 8, 1, 6),
(110, 2180610, 'Design Of Steel Structures', 'DOSS', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2180610.pdf', 0, 8, 1, 6),
(111, 2180611, 'Construction Management', 'CM', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2180611.pdf', 0, 8, 1, 6),
(112, 2180601, 'Design Of Hydrauilic Structures', 'DOHS', 4, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2180601.pdf', 0, 8, 1, 6),
(113, 2180607, 'Repairs & Rehabilitation Of Concrete Structures', 'RRCS', 4, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2180607.pdf', 0, 8, 1, 6),
(114, 2180612, 'Design Of Prestressed Concrete Structures & Bridges', 'DPCSB', 4, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2180612.pdf', 0, 8, 1, 6),
(115, 2180602, 'Harbour & Airport Engineering', 'HAE', 4, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2180602.pdf', 0, 8, 1, 6),
(116, 2180613, 'Glass Facade Engineering', 'GFE', 4, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2180613.pdf', 0, 8, 1, 6),
(117, 2130002, 'Advanced Engineering Mathematics', 'AEM', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2130002.pdf', 0, 3, 1, 2),
(118, 2130004, 'Engineering Economics And Management', 'EEM', 3, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2130004.pdf', 0, 3, 1, 2),
(119, 2130702, 'Data Structure', 'DS', 8, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2130702.pdf', 0, 3, 1, 2),
(120, 2130703, 'Database Management Systems', 'DBMS', 8, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2130703.pdf', 0, 3, 1, 2),
(121, 2131004, 'Digital Electronics', 'DE', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2131004.pdf', 0, 3, 1, 2),
(122, 2130005, 'Design Engineering - I A', 'DE-IA', 3, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2130005.pdf', 0, 3, 1, 2),
(123, 2140702, 'Operating System', 'OS', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2140702.pdf', 0, 4, 1, 2),
(124, 2140705, 'Object Oriented Programming With C++', 'OOPC', 8, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2140705.pdf', 0, 4, 1, 2),
(125, 2140706, 'Numerical And Statistical Methods For Computer Engineering', 'NSM', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2140706.pdf', 0, 4, 1, 2),
(126, 2140707, 'Computer Organization', 'CO', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2140707.pdf', 0, 4, 1, 2),
(127, 2140709, 'Computer Networks', 'CN', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2140709.pdf', 0, 4, 1, 2),
(128, 2140002, 'Design Engineering - I B', 'DE-IB', 3, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2140002.pdf', 0, 4, 1, 2),
(129, 2150703, 'Analysis And Design Of Algorithms', 'ADA', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2150703.pdf', 0, 5, 1, 2),
(130, 2150704, 'Object Oriented Programming Using Java', 'OOPJ', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2150704.pdf', 0, 5, 1, 2),
(131, 2150707, 'Microprocessor And Interfacing', 'MPI', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2150707.pdf', 0, 5, 1, 2),
(132, 2150708, 'System Programming', 'SP', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2150708.pdf', 0, 5, 1, 2),
(133, 2150001, 'Design Engineering - II A', 'DE-IIA', 3, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2150001.pdf', 0, 5, 1, 2),
(134, 2150002, 'Cyber Security', 'CS', 3, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2150002.pdf', 0, 5, 1, 2),
(135, 2150003, 'Diaster Management', 'DM', 3, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2150003.pdf', 0, 5, 1, 2),
(136, 2160701, 'Software Engineering', 'SE', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2160701.pdf', 0, 6, 1, 2),
(137, 2160707, 'Advanced Java', 'AJ', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2160707.pdf', 0, 6, 1, 2),
(138, 2160704, 'Theory Of Computation', 'TOC', 3, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2160704.pdf', 0, 6, 1, 2),
(139, 2160708, 'Web Technology', 'WT', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2160708.pdf', 0, 6, 1, 2),
(140, 2160001, 'Design Engineering - II B', 'DE-IIB', 3, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2160001.pdf', 0, 6, 1, 2),
(141, 2160703, 'Computer Graphics', 'CG', 6, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2160703.pdf', 0, 6, 1, 2),
(142, 2160709, 'Embedded & Vlsi Design', 'EVD', 6, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2160709.pdf', 0, 6, 1, 2),
(143, 2160710, 'Distributed Operating System', 'DOS', 6, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2160710.pdf', 0, 6, 1, 2),
(144, 2160711, '.Net Technology', 'DotNet', 6, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2160711.pdf', 0, 6, 1, 2),
(145, 2170002, 'Project - I', 'P-I', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2170002.pdf', 0, 7, 1, 2),
(146, 2170701, 'Complier Design', 'CD', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2170701.pdf', 0, 7, 1, 2),
(147, 2170709, 'Information And Network Security', 'INS', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2170709.pdf', 0, 7, 1, 2),
(148, 2170710, 'Mobile Computing And Wireless Communication', 'MCWC', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2170710.pdf', 0, 7, 1, 2),
(149, 2170712, 'Image Processing', 'IP', 5, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2170712.pdf', 0, 7, 1, 2),
(150, 2170713, 'Service Oriented Computing', 'SOC', 5, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2170713.pdf', 0, 7, 1, 2),
(151, 2170714, 'Distributed Dbms', 'DDBMS', 5, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2170714.pdf', 0, 7, 1, 2),
(152, 2170715, 'Data Mining And Business Intelligence', 'DMBI', 5, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2170715.pdf', 0, 7, 1, 2),
(153, 2180703, 'Artificial Intelligence', 'AI', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2180703.pdf', 0, 8, 1, 2),
(154, 2180706, 'Project (Phase-II)', 'P-II', 16, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2180706.pdf', 0, 8, 1, 2),
(155, 2180709, 'Iot And Applications', 'IA', 5, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2180709.pdf', 0, 8, 1, 2),
(156, 2180710, 'Big Data Analytics', 'BDA', 5, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2180710.pdf', 0, 8, 1, 2),
(157, 2180711, 'Python Programming', 'PP', 5, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2180711.pdf', 0, 8, 1, 2),
(158, 2180712, 'Cloud Infrastructure And Services', 'CIS', 5, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2180712.pdf', 0, 8, 1, 2),
(159, 2180713, 'Web Data Management', 'WDM', 5, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2180713.pdf', 0, 8, 1, 2),
(160, 2180714, 'Ios Programming', 'iOS', 5, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2180714.pdf', 0, 8, 1, 2),
(161, 2180715, 'Android Programming', 'Andr', 5, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2180715.pdf', 0, 8, 1, 2),
(162, 2130002, 'Advance Engineering Mathematics', 'AEM', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2130002.pdf', 0, 3, 1, 5),
(163, 2130004, 'Engineering Economics And Management', 'EEM', 3, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2130004.pdf', 0, 3, 1, 5),
(164, 2130901, 'Circuits & Networks', 'CN', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2130901.pdf', 0, 3, 1, 5),
(165, 2130902, 'Analog Electronics', 'AE', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2130902.pdf', 0, 3, 1, 5),
(166, 2130903, 'Electrical Measurement And Measuring Instruments', 'EMMI', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2130903.pdf', 0, 3, 1, 5),
(167, 2130904, 'DC Machines And Transformer', 'DMT', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2130904.pdf', 0, 3, 1, 5),
(168, 2130005, 'Design Engineering - I A', 'DE-IA', 3, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2130005.pdf', 0, 3, 1, 5),
(169, 2140910, 'Digital Electronics', 'DE', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2140910.pdf', 0, 4, 1, 5),
(170, 2140906, 'AC Machines', 'AM', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2140906.pdf', 0, 4, 1, 5),
(171, 2140907, 'Applied Thermal And Hydraulic Engineering', 'ATHE', 3, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2140907.pdf', 0, 4, 1, 5),
(172, 2140908, 'Electrical Power Generation', 'EPG', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2140908.pdf', 0, 4, 1, 5),
(173, 2140909, 'Field Theory', 'FT', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2140909.pdf', 0, 4, 1, 5),
(174, 2141005, 'Signals And Systems', 'SAS', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2141005.pdf', 0, 4, 1, 5),
(175, 2140002, 'Design Engineering - I B', 'DE-IB', 3, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2140002.pdf', 0, 4, 1, 5),
(176, 2150903, 'Power Electronics - I', 'PE-I', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2150903.pdf', 0, 5, 1, 5),
(177, 2150907, 'Microprocessor And Microcontroller Architechture & Interfacing', 'MMAI', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2150907.pdf', 0, 5, 1, 5),
(178, 2150908, 'Electrical Power System - I', 'EPS-I', 3, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2150908.pdf', 0, 5, 1, 5),
(179, 2150909, 'Control System Engineering', 'CSE', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2150909.pdf', 0, 5, 1, 5),
(180, 2150904, 'Elements Of Electrical Design', 'EED', 4, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2150904.pdf', 0, 5, 1, 5),
(181, 2150001, 'Design Engineering - II A', 'DE-IIA', 3, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2150001.pdf', 0, 5, 1, 5),
(182, 2150002, 'Cyber Security', 'CS', 3, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2150002.pdf', 0, 5, 1, 5),
(183, 2150003, 'Diaster Management', 'DM', 3, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2150003.pdf', 0, 5, 1, 5),
(184, 2160902, 'Power Electronics - II', 'PE-II', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2160902.pdf', 0, 6, 1, 5),
(185, 2160912, 'Design Of DC Machines And Transformer', 'DDMT', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2160912.pdf', 0, 6, 1, 5),
(186, 2160904, 'High Voltage Engineering', 'HVE', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2160904.pdf', 0, 6, 1, 5),
(187, 2160907, 'Utilization Of Electrical Energy And Traction', 'UEET', 3, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2160907.pdf', 0, 6, 1, 5),
(188, 2160908, 'Electrical Power System - II', 'EPS-II', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2160908.pdf', 0, 6, 1, 5),
(189, 2160001, 'Design Engineering - II B', 'DE-IIB', 3, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2160001.pdf', 0, 6, 1, 5),
(190, 2160909, 'Advance Microcontrollers', 'AM', 5, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2160909.pdf', 0, 6, 1, 5),
(191, 2160910, 'Electrical Drives', 'ED', 5, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2160910.pdf', 0, 6, 1, 5),
(192, 2160911, 'Computer Aided Analysis And Design For Electrical Engg.', 'CAAD', 5, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2160911.pdf', 0, 6, 1, 5),
(193, 2170004, 'Project - I', 'P-I', 8, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2170004.pdf', 0, 7, 1, 5),
(194, 2170901, 'Inter Connected Power System', 'ICPS', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2170901.pdf', 0, 7, 1, 5),
(195, 2170908, 'Switch Gear And Protection', 'SGP', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2170908.pdf', 0, 7, 1, 5),
(196, 2170909, 'Design Of Ac Machines', 'DAM', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2170909.pdf', 0, 7, 1, 5),
(197, 2170906, 'Advanced Power Electronics', 'APE', 5, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2170906.pdf', 0, 7, 1, 5),
(198, 2170913, 'Industrial Instrumentation', 'II', 5, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2170913.pdf', 0, 7, 1, 5),
(199, 2170914, 'Digital Signal Processing', 'DSP', 5, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2170914.pdf', 0, 7, 1, 5),
(200, 2180903, 'Power System Planning And Design', 'PSPD', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2180903.pdf', 0, 8, 1, 5),
(201, 2180905, 'Project', 'P-II', 10, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2180905.pdf', 0, 8, 1, 5),
(202, 2180901, 'Testing And Commissioning Of Electrical Equipments', 'TCEE', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2180901.pdf', 0, 8, 1, 5),
(203, 2180909, 'Power System Operation And Control', 'PSOC', 4, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2180909.pdf', 0, 8, 1, 5),
(204, 2180910, 'Energy Conservation And Audit', 'ECA', 5, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2180910.pdf', 0, 8, 1, 5),
(205, 2180911, 'Power Quality And Management', 'PQM', 5, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2180911.pdf', 0, 8, 1, 5),
(206, 2180912, 'Condition Monitoring', 'CM', 5, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2180912.pdf', 0, 8, 1, 5),
(207, 2180913, 'Advanced Control Systems', 'ACS', 5, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2180913.pdf', 0, 8, 1, 5),
(208, 2130002, 'Advanced Engineering Mathematics', 'AEM', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2130002.pdf', 0, 3, 1, 4),
(209, 2130004, 'Engineering Economics And Management', 'EEM', 3, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2130004.pdf', 0, 3, 1, 4),
(210, 2130901, 'Circuits And Networks', 'CN', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2130901.pdf', 0, 3, 1, 4),
(211, 2131004, 'Digital Electronics', 'DE', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2131004.pdf', 0, 3, 1, 4),
(212, 2131005, 'Electrical Machines', 'EM', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2131005.pdf', 0, 3, 1, 4),
(213, 2131006, 'Electronics Devices & Circuits', 'EDC', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2131006.pdf', 0, 3, 1, 4),
(214, 2130005, 'Design Engineering - I A', 'DE-IA', 3, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2130005.pdf', 0, 3, 1, 4),
(215, 2141001, 'Microprocessor And Interfacing', 'MPI', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2141001.pdf', 0, 4, 1, 4),
(216, 2141002, 'Analog Circuit Design', 'ACD', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2141002.pdf', 0, 4, 1, 4),
(217, 2141003, 'Electronics Measurement And Instrumentation', 'EMI', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2141003.pdf', 0, 4, 1, 4),
(218, 2141004, 'Control System Engineering', 'CSE', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2141004.pdf', 0, 4, 1, 4),
(219, 2141005, 'Signals And Systems', 'SS', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2141005.pdf', 0, 4, 1, 4),
(220, 2141006, 'Simulation And Design Tools', 'SDT', 2, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2141006.pdf', 0, 4, 1, 4),
(221, 2140002, 'Design Engineering - I B', 'DE-IB', 3, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2140002.pdf', 0, 4, 1, 4),
(222, 2151001, 'Microcontroller And Interfacing (EC)', 'MPI', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2151001.pdf', 0, 5, 1, 4),
(223, 2151002, 'Engineering Electromagnetics', 'EE', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2151002.pdf', 0, 5, 1, 4),
(224, 2151004, 'Electronics & Communication', 'EC', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2151004.pdf', 0, 5, 1, 4),
(225, 2151102, 'Mini Project', 'MP', 2, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2151102.pdf', 0, 5, 1, 4),
(226, 2151101, 'Audio Video Systems', 'AVS', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2151101.pdf', 0, 5, 1, 4),
(227, 2150001, 'Design Engineering - II A', 'DE-IIA', 3, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2150001.pdf', 0, 5, 1, 4),
(228, 2150002, 'Cyber Security', 'CS', 3, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2150002.pdf', 0, 5, 1, 4),
(229, 2150003, 'Diaster Management', 'DM', 3, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2150003.pdf', 0, 5, 1, 4),
(230, 2161001, 'Digital Communication', 'DC', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2161001.pdf', 0, 6, 1, 4),
(231, 2161003, 'Antenna & Wave Propagation', 'AWP', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2161003.pdf', 0, 6, 1, 4),
(232, 2161005, 'Optical Communication', 'OC', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2161005.pdf', 0, 6, 1, 4),
(233, 2161101, 'VLSI Technology & Design', 'VTD', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2161101.pdf', 0, 6, 1, 4),
(234, 2160001, 'Design Engineering - II B', 'DE-IIB', 3, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2160001.pdf', 0, 6, 1, 4),
(235, 2161102, 'Advanced Microprocessor', 'AM', 5, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2161102.pdf', 0, 6, 1, 4),
(236, 2161006, 'Power Electronics Devices And Circuits', 'PEDC', 5, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2161006.pdf', 0, 6, 1, 4),
(237, 2161103, 'Telecommunication Switching Systems And Networks', 'TSSN', 5, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2161103.pdf', 0, 6, 1, 4),
(238, 2170001, 'Project - I', 'P-I', 4, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2170001.pdf', 0, 7, 1, 4),
(239, 2171001, 'Microwave Engineering', 'ME', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2171001.pdf', 0, 7, 1, 4),
(240, 2171003, 'Digital Signal Processing', 'DSP', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2171003.pdf', 0, 7, 1, 4),
(241, 2171004, 'Wireless Communication', 'WC', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2171004.pdf', 0, 7, 1, 4),
(242, 2171008, 'Data Communication And Networking', 'DCN', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2171008.pdf', 0, 7, 1, 4),
(243, 2171005, 'Embedded Systems', 'ES', 5, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2171005.pdf', 0, 7, 1, 4),
(244, 2171102, 'Biomedical Instrumentation', 'BI', 5, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2171102.pdf', 0, 7, 1, 4),
(245, 2171007, 'Satellite Communication', 'SC', 5, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2171007.pdf', 0, 7, 1, 4),
(246, 2171103, 'Industrial Automation', 'IA', 5, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2171103.pdf', 0, 7, 1, 4),
(247, 2181105, 'Project II', 'P-II', 22, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2181105.pdf', 0, 8, 1, 4),
(248, 2181102, 'Fundamentals Of Image Processing', 'FIP', 6, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2181102.pdf', 0, 8, 1, 4),
(249, 2181103, 'Radar & Navigational Aids', 'RNA', 6, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2181103.pdf', 0, 8, 1, 4),
(250, 2181106, 'Device Driver & Writing', 'DDW', 6, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2181106.pdf', 0, 8, 1, 4),
(251, 2181107, 'Testing And Verification', 'TV', 6, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2181107.pdf', 0, 8, 1, 4),
(252, 2130002, 'Advanced Engineering Mathematics', 'AEM', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2130002.pdf', 0, 3, 1, 3),
(253, 2130004, 'Engineering Economics & Management', 'EEM', 3, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2130004.pdf', 0, 3, 1, 3),
(254, 2130702, 'Data Structures', 'DS', 8, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2130702.pdf', 0, 3, 1, 3),
(255, 2130703, 'Database Management Systems', 'DBMS', 8, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2130703.pdf', 0, 3, 1, 3),
(256, 2131004, 'Digital Electronics', 'DE', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2131004.pdf', 0, 3, 1, 3),
(257, 2130005, 'Design Engineering - I A', 'DE-IA', 3, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2130005.pdf', 0, 3, 1, 3),
(258, 2140702, 'Operating System', 'OS', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2140702.pdf', 0, 4, 1, 3),
(259, 2140705, 'Object Oriented Programming With C++', 'OOPC', 8, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2140705.pdf', 0, 4, 1, 3),
(260, 2140706, 'Numerical And Statistical Methods For Computer Engineering', 'NSM', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2140706.pdf', 0, 4, 1, 3),
(261, 2140707, 'Computer Organization', 'CO', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2140707.pdf', 0, 4, 1, 3),
(262, 2140709, 'Computer Networks', 'CN', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2140709.pdf', 0, 4, 1, 3),
(263, 2140002, 'Design Engineering - I B', 'DE-IB', 3, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2140002.pdf', 0, 4, 1, 3),
(264, 2150703, 'Analysis And Design Of Algorithms', 'ADA', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2150703.pdf', 0, 5, 1, 3),
(265, 2150704, 'Object Oriented Programming Using Java', 'OOPJ', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2150704.pdf', 0, 5, 1, 3),
(266, 2150708, 'System Programming', 'SP', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2150708.pdf', 0, 5, 1, 3),
(267, 2151603, 'Computer Graphics', 'CG', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2151603.pdf', 0, 5, 1, 3),
(268, 2150001, 'Design Engineering - II A', 'DE-IIA', 3, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2150001.pdf', 0, 5, 1, 3),
(269, 2150002, 'Cyber Security', 'CS', 3, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2150002.pdf', 0, 5, 1, 3),
(270, 2150003, 'Diaster Management', 'DM', 3, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2150003.pdf', 0, 5, 1, 3),
(271, 2160701, 'Software Engineering', 'SE', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2160701.pdf', 0, 6, 1, 3),
(272, 2160707, 'Advanced Java', 'AJ', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2160707.pdf', 0, 6, 1, 3),
(273, 2160708, 'Web Technology', 'WT', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2160708.pdf', 0, 6, 1, 3),
(274, 2161603, 'Data Compression And Data Retrival', 'DCDR', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2161603.pdf', 0, 6, 1, 3),
(275, 2160001, 'Design Engineering - II B', 'DE-IIB', 3, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2160001.pdf', 0, 6, 1, 3),
(276, 2161604, 'Image Processing', 'IP', 6, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2161604.pdf', 0, 6, 1, 3),
(277, 2160709, 'Embedded & VLSI Design', 'EVD', 6, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2160709.pdf', 0, 6, 1, 3),
(278, 2160710, 'Distributed Operating System', 'DOS', 6, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2160710.pdf', 0, 6, 1, 3),
(279, 2160711, '.Net Technology', 'DotNet', 6, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2160711.pdf', 0, 6, 1, 3),
(280, 2170002, 'Project - I', 'P-I', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2170002.pdf', 0, 7, 1, 3),
(281, 2170709, 'Information And Network Security', 'INS', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2170709.pdf', 0, 7, 1, 3),
(282, 2170710, 'Mobile Computing And Wireless Communication', 'MCWC', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2170710.pdf', 0, 7, 1, 3),
(283, 2170715, 'Data Mining And Business Intelligence', 'DMBI', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2170715.pdf', 0, 7, 1, 3),
(284, 2171607, 'Big Data Analytics', 'BDA', 5, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2171607.pdf', 0, 7, 1, 3),
(285, 2170713, 'Service Oriented Computing', 'SOC', 5, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2170713.pdf', 0, 7, 1, 3),
(286, 2170714, 'Distributed Dbms', 'DDBMS', 5, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2170714.pdf', 0, 7, 1, 3),
(287, 2180703, 'Artificial Intelligence', 'AI', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2180703.pdf', 0, 8, 1, 3),
(288, 2181606, 'Project (Phase-II)', 'P-II', 16, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2181606.pdf', 0, 8, 1, 3),
(289, 2180709, 'Iot And Applications', 'IA', 5, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2180709.pdf', 0, 8, 1, 3),
(290, 2180711, 'Python Programming', 'PP', 5, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2180711.pdf', 0, 8, 1, 3),
(291, 2181607, 'Mutlimedia And Animation', 'MAA', 5, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2181607.pdf', 0, 8, 1, 3),
(292, 2180713, 'Web Data Management', 'WDM', 5, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2180713.pdf', 0, 8, 1, 3),
(293, 2180712, 'Cloud Infrastructure And Services', 'CIS', 5, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2180712.pdf', 0, 8, 1, 3),
(294, 2180714, 'Ios Programming', 'iOS', 5, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2180714.pdf', 0, 8, 1, 3),
(295, 2180715, 'Android Programming', 'Andr', 5, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2180715.pdf', 0, 8, 1, 3),
(296, 2130002, 'Advanced Engineering Mathematics', 'AEM', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2130002.pdf', 0, 3, 1, 1),
(297, 2130003, 'Mechanics Of Solids', 'MOS', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2130003.pdf', 0, 3, 1, 1),
(298, 2131903, 'Manufacturing Process-1', 'MP-I', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2131903.pdf', 0, 3, 1, 1),
(299, 2131904, 'Material Science And Metallurgy', 'MSM', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2131904.pdf', 0, 3, 1, 1),
(300, 2131905, 'Engineering Thermodynamics', 'ET', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2131905.pdf', 0, 3, 1, 1),
(301, 2131906, 'Kinematics Of Machines', 'KM', 4, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2131906.pdf', 0, 3, 1, 1),
(302, 2130005, 'Design Engineering - I A', 'DE-IA', 3, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2130005.pdf', 0, 3, 1, 1),
(303, 2140003, 'Engineering Economics And Management', 'EEM', 3, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2140003.pdf', 0, 4, 1, 1),
(304, 2141901, 'Mechanical Measurement & Metrology', 'MMM', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2141901.pdf', 0, 4, 1, 1),
(305, 2141905, 'Complex Variables And Numerical Methods', 'CVNM', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2141905.pdf', 0, 4, 1, 1),
(306, 2141906, 'Fluid Mechanics', 'FM', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2141906.pdf', 0, 4, 1, 1),
(307, 2141907, 'Machine Design & Industrial Drafting', 'MDID', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2141907.pdf', 0, 4, 1, 1),
(308, 2141908, 'Manufacturing Processes -II', 'MP-II', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2141908.pdf', 0, 4, 1, 1),
(309, 2140002, 'Design Engineering - I B', 'DE-IB', 3, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2140002.pdf', 0, 4, 1, 1),
(310, 2151902, 'Theory Of Machines', 'TOM', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2151902.pdf', 0, 5, 1, 1),
(311, 2151903, 'Fluid Power Engineering', 'FPE', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2151903.pdf', 0, 5, 1, 1),
(312, 2151907, 'Design Of Machine Elements', 'DOME', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2151907.pdf', 0, 5, 1, 1),
(313, 2151908, 'Control Engineering', 'CE', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2151908.pdf', 0, 5, 1, 1),
(314, 2151909, 'Heat Transfer', 'HT', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2151909.pdf', 0, 5, 1, 1),
(315, 2150001, 'Design Engineering - II A', 'DE-IIA', 3, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2150001.pdf', 0, 5, 1, 1),
(316, 2150002, 'Cyber Security', 'CS', 3, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2150002.pdf', 0, 5, 1, 1),
(317, 2150003, 'Diaster Management', 'DM', 3, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2150003.pdf', 0, 5, 1, 1),
(318, 2161901, 'Dynamics Of Machinery', 'DOM', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2161901.pdf', 0, 6, 1, 1),
(319, 2161902, 'Internal Combustion Engines', 'ICE', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2161902.pdf', 0, 6, 1, 1),
(320, 2161903, 'Computer Aided Design', 'CAD', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2161903.pdf', 0, 6, 1, 1),
(321, 2161907, 'Industrial Engineering', 'IE', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2161907.pdf', 0, 6, 1, 1),
(322, 2161908, 'Refrigeration And Airconditioning', 'RAA', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2161908.pdf', 0, 6, 1, 1),
(323, 2161909, 'Production Technology', 'PT', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2161909.pdf', 0, 6, 1, 1),
(324, 2160001, 'Design Engineering - II B', 'DE-IIB', 3, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2160001.pdf', 0, 6, 1, 1),
(325, 2170001, 'Project - I', 'P-I', 4, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2170001.pdf', 0, 7, 1, 1),
(326, 2171901, 'Operation Research', 'OR', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2171901.pdf', 0, 7, 1, 1),
(327, 2171903, 'Computer Aided Manufacturing', 'CAM', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2171903.pdf', 0, 7, 1, 1),
(328, 2171909, 'Machine Design', 'MD', 5, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2171909.pdf', 0, 7, 1, 1),
(329, 2171910, 'Power Plant Engineering', 'PPE', 6, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2171910.pdf', 0, 7, 1, 1),
(330, 2170203, 'Vehicle Dynamics', 'VD', 5, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2170203.pdf', 0, 7, 1, 1),
(331, 2171911, 'Advance Heat Transfer', 'AHT', 5, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2171911.pdf', 0, 7, 1, 1),
(332, 2171912, 'Oil Hydraulics And Pneumatic', 'OHP', 5, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2171912.pdf', 0, 7, 1, 1),
(333, 2171913, 'Metal Forming Analysis', 'MFA', 5, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2171913.pdf', 0, 7, 1, 1),
(334, 2171914, 'Gas Dynamics', 'GD', 5, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2171914.pdf', 0, 7, 1, 1),
(335, 2171916, 'Applied Mechanics Of Solids', 'AMOS', 5, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2171916.pdf', 0, 7, 1, 1),
(336, 2181909, 'Project II', 'P-II', 16, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2181909.pdf', 0, 8, 1, 1),
(337, 2181910, 'Renewable Energy Engineering', 'REE', 4, 'Primary', 'http://192.168.0.101/newAttempt/syllabus/2181910.pdf', 0, 8, 1, 1),
(338, 2181911, 'Finite Elements Method', 'FEM', 5, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2181911.pdf', 0, 8, 1, 1),
(339, 2181912, 'Optimization', 'Opti', 5, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2181912.pdf', 0, 8, 1, 1),
(340, 2181913, 'Product Design And Value Engineering', 'PDVE', 5, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2181913.pdf', 0, 8, 1, 1),
(341, 2181914, 'Rapid Prototyping', 'RP', 5, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2181914.pdf', 0, 8, 1, 1),
(342, 2181915, 'Automobile Engineering', 'AE', 5, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2181915.pdf', 0, 8, 1, 1),
(343, 2181916, 'Energy Conservation And Management', 'ECAM', 5, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2181916.pdf', 0, 8, 1, 1),
(344, 2181917, 'Cryogenic Engineering', 'CE', 5, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2181917.pdf', 0, 8, 1, 1),
(345, 2181918, 'Principles Of Combustion Engineering', 'PCE', 5, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2181918.pdf', 0, 8, 1, 1),
(346, 2181919, 'Robotics', 'Robo', 5, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2181919.pdf', 0, 8, 1, 1),
(347, 2181920, 'Quality Engineering', 'QE', 5, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2181920.pdf', 0, 8, 1, 1),
(348, 2181921, 'Design For Manufacturing And Assembly', 'DFMA', 5, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2181921.pdf', 0, 8, 1, 1),
(349, 2181922, 'Automation', 'Auto', 5, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2181922.pdf', 0, 8, 1, 1),
(350, 2181923, 'Enterpreneurship', 'Entre', 5, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2181923.pdf', 0, 8, 1, 1),
(351, 2181924, 'Design Of Heat Exchanger', 'DHE', 5, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2181924.pdf', 0, 8, 1, 1),
(352, 2181925, 'Computational Fluid Dynamics', 'CFD', 5, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2181925.pdf', 0, 8, 1, 1),
(353, 2181926, 'Tribology', 'Tribo', 5, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2181926.pdf', 0, 8, 1, 1),
(354, 2181927, 'Advance Welding Technology', 'AWT', 5, 'Elective', 'http://192.168.0.101/newAttempt/syllabus/2181927.pdf', 0, 8, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sub_alloc_master`
--

CREATE TABLE `sub_alloc_master` (
  `alloc_id` smallint(4) UNSIGNED NOT NULL,
  `discipline_id` tinyint(2) NOT NULL COMMENT '** Foreign Key',
  `branch_id` tinyint(3) NOT NULL COMMENT '** Foreign Key',
  `faculty_id` varchar(12) COLLATE utf32_unicode_ci NOT NULL COMMENT '** Foreign Key',
  `sub_id` smallint(4) UNSIGNED NOT NULL COMMENT '** Foreign Key'
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `sub_alloc_master`
--

INSERT INTO `sub_alloc_master` (`alloc_id`, `discipline_id`, `branch_id`, `faculty_id`, `sub_id`) VALUES
(1, 1, 2, '07001', 153),
(2, 1, 2, '07002', 157),
(3, 1, 2, '07003', 160),
(4, 1, 2, '07004', 154),
(5, 1, 2, '07005', 153),
(6, 1, 2, '07006', 157),
(7, 1, 2, '07007', 154),
(8, 1, 2, '07008', 160),
(9, 1, 2, '07009', 154),
(10, 1, 2, '07010', 154),
(11, 1, 2, '07004', 161),
(12, 1, 2, '07010', 161),
(13, 1, 2, '07008', 159),
(14, 1, 2, '07003', 159);

-- --------------------------------------------------------

--
-- Table structure for table `timeline_master`
--

CREATE TABLE `timeline_master` (
  `timeline_id` mediumint(6) NOT NULL,
  `timetable_id` smallint(4) UNSIGNED NOT NULL COMMENT '** Foreign Key',
  `topic` text COLLATE utf32_unicode_ci NOT NULL,
  `link` text COLLATE utf32_unicode_ci NOT NULL,
  `faculty_id` varchar(12) COLLATE utf32_unicode_ci NOT NULL COMMENT '** Foreign Key'
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `timeline_master`
--

INSERT INTO `timeline_master` (`timeline_id`, `timetable_id`, `topic`, `link`, `faculty_id`) VALUES
(1, 1, 'What is AI?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07001'),
(2, 2, 'What is Ai Again?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07002'),
(3, 3, 'What is python?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07003'),
(4, 4, 'What is iOS?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07004'),
(5, 5, 'Who is harold finch?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07005'),
(6, 6, 'Who is Reese?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07006'),
(7, 7, 'Have you watched PI?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07007'),
(8, 8, 'if you havent you are poor', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07008'),
(9, 9, 'What was the last funny video you saw?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07009'),
(10, 10, 'What do you do to get rid of stress?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07010'),
(11, 11, 'What is something you are obsessed with?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07001'),
(12, 12, 'Who is your favorite entertainer (comedian, musician, actor, etc.)?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07002'),
(13, 13, 'What’s your favorite way to waste time?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07003'),
(14, 14, 'Do you have any pets? What are their names?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07004'),
(15, 15, 'Where did you go last weekend? What did you do?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07005'),
(16, 16, 'What are you going to do this weekend?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07006'),
(17, 17, 'What is something that is popular now that annoys you?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07007'),
(18, 18, 'What did you do on your last vacation?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07008'),
(19, 19, 'What was the last time you worked incredibly hard?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07009'),
(20, 20, 'Are you very active of do you prefer to just relax in your free time?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07010'),
(21, 21, 'What do you do when you hang out with your friends?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07001'),
(22, 22, 'Who is your oldest friend? Where did you meet them?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07002'),
(23, 23, 'What’s the best / worst thing about your work / school?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07003'),
(24, 24, 'If you had intro music, what song would it be? Why?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07004'),
(25, 25, 'What were you really into when you were a kid?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07005'),
(26, 26, 'If you could have any animal as a pet, what animal would you choose?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07006'),
(27, 27, 'What three words best describe you?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07007'),
(28, 28, 'What would be your perfect weekend?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07008'),
(29, 29, 'What do you think of tattoos? Do you have any?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07009'),
(30, 30, 'What’s your favorite number? Why?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07010'),
(31, 31, 'What’s the most useful thing you own?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07001'),
(32, 32, 'Have you ever saved an animal’s life? How about a person’s life?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07002'),
(33, 33, 'If you opened a business, what kind of business would it be?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07003'),
(34, 34, 'Are you a very organized person?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07004'),
(35, 35, 'Have you ever spoke in front of a large group of people? How did it go?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07005'),
(36, 36, 'What is the strangest dream you have ever had?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07006'),
(37, 37, 'What is a controversial opinion you have?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07007'),
(38, 38, 'Who in your life brings you the most joy?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07008'),
(39, 39, 'Who had the biggest impact on the person you have become?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07009'),
(40, 40, 'What is the most annoying habit someone can have?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07010'),
(41, 41, 'Where is the most beautiful place you have been?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07001'),
(42, 42, 'Where do you spend most of your free time / day?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07002'),
(43, 43, 'Who was your best friend in elementary school?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07003'),
(44, 44, 'How often do you stay up past 3 a.m.?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07004'),
(45, 45, 'What’s your favorite season? Why?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07005'),
(46, 46, 'Which is more important, a great car or a great house? Why?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07006'),
(47, 47, 'What animal or insect do you wish humans could eradicate?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07007'),
(48, 48, 'Where is the most beautiful place near where you live?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07008'),
(49, 49, 'What do you bring with you everywhere you go?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07009'),
(50, 50, 'How much time do you spend on the internet? What do you usually do?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07010'),
(51, 51, 'What is the most disgusting habit some people have?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07001'),
(52, 52, 'Where and when was the most amazing sunset you have ever seen?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07002'),
(53, 53, 'Which recent news story is the most interesting?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07003'),
(54, 54, 'Where is the worst place you have been stuck for a long time?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07004'),
(55, 55, 'If you had to change your name, what would your new name be?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07005'),
(56, 56, 'What is something that really annoys you but doesn’t bother most people?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07006'),
(57, 57, 'What word or saying from the past do you think should come back?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07007'),
(58, 58, 'How should success be measured? By that measurement, who is the most successful person you know?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07008'),
(59, 59, 'What is your guilty pleasure?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07009'),
(60, 60, 'Was there ever an event in your life that defied explanation?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07010'),
(61, 61, 'If you could learn the answer to one question about your future, what would the question be?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07008'),
(62, 62, 'Has anyone ever saved your life?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07009'),
(63, 63, 'What benefit do you bring to the group when you hang out with friends?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07010'),
(64, 64, 'How often do you curse?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07001'),
(65, 65, 'What trends did you follow when you were younger?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07002'),
(66, 66, 'What do you fear is hiding in the dark?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07003'),
(67, 67, 'What was the best time period of your life? What do you think will be the best time period of your entire life?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07004'),
(68, 68, 'What do you do to improve your mood when you are in a bad mood?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07005'),
(69, 69, 'What is the silliest fear you have?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07006'),
(70, 70, 'What are some things you want to accomplish before you die?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07007'),
(71, 71, 'What is the best room in your house? Why?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07008'),
(72, 72, 'Who is someone who is popular now that you really like? Why do you like them so much?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07009'),
(73, 73, 'Where is the best place to take a date?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07010'),
(74, 74, 'What smell brings back great memories?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07007'),
(75, 75, 'How often do you help others? Who do you help? How do you help?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07008'),
(76, 76, 'What are you best at?', 'http://192.168.0.102/newAttempt/syllabus/2110014.pdf', '07009');

-- --------------------------------------------------------

--
-- Table structure for table `timetable_two_master`
--

CREATE TABLE `timetable_two_master` (
  `tt_id` smallint(4) UNSIGNED NOT NULL,
  `discipline_id` tinyint(2) NOT NULL COMMENT '** Foreign Key',
  `branch_id` tinyint(3) NOT NULL COMMENT '** Foreign Key',
  `sem_id` tinyint(2) NOT NULL COMMENT '** Foreign Key',
  `division_id` smallint(3) UNSIGNED NOT NULL COMMENT '** Foreign Key',
  `day` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lec_no` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lec_type` tinyint(1) NOT NULL COMMENT '** Foreign Key',
  `batch_id` smallint(3) UNSIGNED NOT NULL COMMENT '** Foreign Key',
  `alloc_id` smallint(4) UNSIGNED NOT NULL COMMENT '** Foreign Key'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timetable_two_master`
--

INSERT INTO `timetable_two_master` (`tt_id`, `discipline_id`, `branch_id`, `sem_id`, `division_id`, `day`, `lec_no`, `lec_type`, `batch_id`, `alloc_id`) VALUES
(1, 1, 2, 8, 1, 'Monday', '1', 1, 1, 4),
(2, 1, 2, 8, 1, 'Monday', '2', 1, 1, 4),
(3, 1, 2, 8, 1, 'Monday', '3', 1, 1, 4),
(4, 1, 2, 8, 1, 'Monday', '4', 1, 1, 10),
(5, 1, 2, 8, 1, 'Monday', '5', 1, 1, 10),
(6, 1, 2, 8, 1, 'Monday', '6', 1, 1, 10),
(7, 1, 2, 8, 1, 'Tuesday', '1', 1, 1, 10),
(8, 1, 2, 8, 1, 'Tuesday', '2', 1, 1, 10),
(9, 1, 2, 8, 1, 'Tuesday', '3', 1, 1, 10),
(10, 1, 2, 8, 1, 'Tuesday', '4', 1, 1, 4),
(11, 1, 2, 8, 1, 'Tuesday', '5', 1, 1, 4),
(12, 1, 2, 8, 1, 'Tuesday', '6', 1, 1, 4),
(13, 1, 2, 8, 1, 'Wednesday', '1', 1, 1, 10),
(14, 1, 2, 8, 1, 'Wednesday', '2', 1, 1, 4),
(15, 1, 2, 8, 1, 'Wednesday', '3', 1, 1, 10),
(16, 1, 2, 8, 1, 'Wednesday', '4', 1, 1, 4),
(17, 1, 2, 8, 1, 'Wednesday', '5', 1, 1, 10),
(18, 1, 2, 8, 1, 'Wednesday', '6', 1, 1, 4),
(19, 1, 2, 8, 1, 'Thursday', '1', 1, 1, 1),
(20, 1, 2, 8, 1, 'Thursday', '2', 1, 1, 1),
(21, 1, 2, 8, 1, 'Thursday', '3', 1, 1, 2),
(22, 1, 2, 8, 1, 'Thursday', '3', 1, 1, 8),
(23, 1, 2, 8, 1, 'Thursday', '4', 1, 1, 2),
(24, 1, 2, 8, 1, 'Thursday', '4', 1, 1, 8),
(25, 1, 2, 8, 1, 'Thursday', '5', 2, 2, 5),
(26, 1, 2, 8, 1, 'Thursday', '6', 2, 3, 5),
(27, 1, 2, 8, 1, 'Friday', '1', 1, 1, 2),
(28, 1, 2, 8, 1, 'Friday', '1', 1, 1, 8),
(29, 1, 2, 8, 1, 'Friday', '2', 1, 1, 2),
(30, 1, 2, 8, 1, 'Friday', '2', 1, 1, 8),
(31, 1, 2, 8, 1, 'Friday', '3', 1, 1, 1),
(32, 1, 2, 8, 1, 'Friday', '4', 1, 1, 5),
(33, 1, 2, 8, 1, 'Friday', '5', 2, 3, 3),
(34, 1, 2, 8, 1, 'Friday', '5', 2, 2, 6),
(35, 1, 2, 8, 1, 'Friday', '6', 2, 3, 3),
(36, 1, 2, 8, 1, 'Friday', '6', 2, 2, 6),
(37, 1, 2, 8, 2, 'Monday', '1', 1, 1, 7),
(38, 1, 2, 8, 2, 'Monday', '2', 1, 1, 7),
(39, 1, 2, 8, 2, 'Monday', '3', 1, 1, 7),
(40, 1, 2, 8, 2, 'Monday', '4', 1, 1, 9),
(41, 1, 2, 8, 2, 'Monday', '5', 1, 1, 9),
(42, 1, 2, 8, 2, 'Monday', '6', 1, 1, 9),
(43, 1, 2, 8, 2, 'Tuesday', '1', 1, 1, 9),
(44, 1, 2, 8, 2, 'Tuesday', '2', 1, 1, 9),
(45, 1, 2, 8, 2, 'Tuesday', '3', 1, 1, 9),
(46, 1, 2, 8, 2, 'Tuesday', '4', 1, 1, 7),
(47, 1, 2, 8, 2, 'Tuesday', '5', 1, 1, 7),
(48, 1, 2, 8, 2, 'Tuesday', '6', 1, 1, 7),
(49, 1, 2, 8, 2, 'Wednesday', '1', 1, 1, 9),
(50, 1, 2, 8, 2, 'Wednesday', '2', 1, 1, 7),
(51, 1, 2, 8, 2, 'Wednesday', '3', 1, 1, 9),
(52, 1, 2, 8, 2, 'Wednesday', '4', 1, 1, 7),
(53, 1, 2, 8, 2, 'Wednesday', '5', 1, 1, 9),
(54, 1, 2, 8, 2, 'Wednesday', '6', 1, 1, 7),
(55, 1, 2, 8, 2, 'Thursday', '1', 1, 1, 5),
(56, 1, 2, 8, 2, 'Thursday', '2', 1, 1, 5),
(57, 1, 2, 8, 2, 'Thursday', '3', 1, 1, 11),
(58, 1, 2, 8, 2, 'Thursday', '3', 1, 1, 14),
(59, 1, 2, 8, 2, 'Thursday', '4', 1, 1, 11),
(60, 1, 2, 8, 2, 'Thursday', '4', 1, 1, 14),
(61, 1, 2, 8, 2, 'Thursday', '5', 2, 2, 1),
(62, 1, 2, 8, 2, 'Thursday', '6', 2, 3, 1),
(63, 1, 2, 8, 2, 'Friday', '1', 1, 1, 11),
(64, 1, 2, 8, 2, 'Friday', '1', 1, 1, 14),
(65, 1, 2, 8, 2, 'Friday', '2', 1, 1, 11),
(66, 1, 2, 8, 2, 'Friday', '2', 1, 1, 14),
(67, 1, 2, 8, 2, 'Friday', '3', 1, 1, 5),
(68, 1, 2, 8, 2, 'Friday', '4', 1, 1, 1),
(69, 1, 2, 8, 2, 'Friday', '5', 2, 2, 13),
(70, 1, 2, 8, 2, 'Friday', '5', 2, 3, 12),
(71, 1, 2, 8, 2, 'Friday', '6', 2, 2, 13),
(72, 1, 2, 8, 2, 'Friday', '6', 2, 3, 12);

-- --------------------------------------------------------

--
-- Table structure for table `user_master`
--

CREATE TABLE `user_master` (
  `user_id` tinyint(1) NOT NULL,
  `user_type` varchar(10) COLLATE utf32_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic_calender`
--
ALTER TABLE `academic_calender`
  ADD PRIMARY KEY (`academic_id`),
  ADD KEY `academic_calender_ibfk_1` (`sem_id`),
  ADD KEY `academic_calender_ibfk_2` (`discipline_id`);

--
-- Indexes for table `addr_city_table`
--
ALTER TABLE `addr_city_table`
  ADD PRIMARY KEY (`city_id`),
  ADD KEY `constraint_state_fk` (`state_id`);

--
-- Indexes for table `addr_state_table`
--
ALTER TABLE `addr_state_table`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `assignment_master`
--
ALTER TABLE `assignment_master`
  ADD PRIMARY KEY (`assgn_id`),
  ADD KEY `discipline_id` (`discipline_id`,`branch_id`,`sem_id`,`division_id`,`sub_id`),
  ADD KEY `cnstr_fk_asg_dis_branch` (`branch_id`),
  ADD KEY `cnstr_fk_asg_dis_sem` (`sem_id`),
  ADD KEY `cnstr_fk_asg_dis_div` (`division_id`),
  ADD KEY `cnstr_fk_asg_dis_sub` (`sub_id`);

--
-- Indexes for table `assignment_table`
--
ALTER TABLE `assignment_table`
  ADD PRIMARY KEY (`ass_id`),
  ADD KEY `cnstr_ass_fk_disci` (`discipline_id`),
  ADD KEY `cnstr_ass_fk_branch` (`branch_id`),
  ADD KEY `cnstr_ass_fk_sem` (`sem_id`),
  ADD KEY `cnstr_ass_fk_div` (`div_id`),
  ADD KEY `alloc_id` (`alloc_id`);

--
-- Indexes for table `attendance_computer`
--
ALTER TABLE `attendance_computer`
  ADD KEY `cnstr_attd_fk_stud` (`student_id`),
  ADD KEY `cnstr_ass_fk_timetable` (`timetable_id`);

--
-- Indexes for table `attendance_master`
--
ALTER TABLE `attendance_master`
  ADD PRIMARY KEY (`attd_master_id`),
  ADD KEY `division_id` (`division_id`),
  ADD KEY `acd_cal_id` (`acd_cal_id`);

--
-- Indexes for table `authentication_master`
--
ALTER TABLE `authentication_master`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `enr_no` (`enr_no`);

--
-- Indexes for table `batch_master`
--
ALTER TABLE `batch_master`
  ADD PRIMARY KEY (`batch_id`);

--
-- Indexes for table `branch_master`
--
ALTER TABLE `branch_master`
  ADD PRIMARY KEY (`branch_id`),
  ADD KEY `cnstr_branch_fk_disci` (`discipline_id`);

--
-- Indexes for table `circular_info`
--
ALTER TABLE `circular_info`
  ADD PRIMARY KEY (`circular_id`);

--
-- Indexes for table `discipline_master`
--
ALTER TABLE `discipline_master`
  ADD PRIMARY KEY (`discipline_id`);

--
-- Indexes for table `division_master`
--
ALTER TABLE `division_master`
  ADD PRIMARY KEY (`div_id`),
  ADD KEY `cnstr_div_fk_disci` (`discipline_id`),
  ADD KEY `cnstr_div_fk_branch` (`branch_id`),
  ADD KEY `cnstr_div_fk_sem` (`sem_id`);

--
-- Indexes for table `exam_schedule_master`
--
ALTER TABLE `exam_schedule_master`
  ADD PRIMARY KEY (`ex_sched_id`),
  ADD KEY `discipline_id` (`discipline_id`,`branch_id`,`sem_id`,`division_id`,`exam_type_id`,`sub_id`),
  ADD KEY `cnstr_exsched_branch` (`branch_id`),
  ADD KEY `cnstr_exsched_sem` (`sem_id`),
  ADD KEY `cnstr_exsched_div` (`division_id`),
  ADD KEY `cnstr_exsched_extype` (`exam_type_id`),
  ADD KEY `cnstr_exsched_sub` (`sub_id`);

--
-- Indexes for table `exam_type_master`
--
ALTER TABLE `exam_type_master`
  ADD PRIMARY KEY (`exam_type_id`);

--
-- Indexes for table `faculty_acad_details`
--
ALTER TABLE `faculty_acad_details`
  ADD KEY `cnstr_facacad_fk_id` (`faculty_id`);

--
-- Indexes for table `faculty_current_detail`
--
ALTER TABLE `faculty_current_detail`
  ADD PRIMARY KEY (`fc_id`),
  ADD KEY `cnstr_faccrnt_fk_id` (`faculty_id`),
  ADD KEY `cnstr_faccrnt_fk_discipline` (`discipline_id`),
  ADD KEY `cnstr_faccrnt_fk_branch` (`branch_id`);

--
-- Indexes for table `faculty_master`
--
ALTER TABLE `faculty_master`
  ADD PRIMARY KEY (`faculty_id`),
  ADD KEY `cnstr_facmstr_fk_lstate` (`local_state`),
  ADD KEY `cnstr_facmstr_fk_pstate` (`perm_state`),
  ADD KEY `cnstr_facmstr_fk_lcity` (`local_city`),
  ADD KEY `cnstr_facmstr_fk_pcity` (`perm_city`);

--
-- Indexes for table `feedback_criteria`
--
ALTER TABLE `feedback_criteria`
  ADD PRIMARY KEY (`f_crit_id`);

--
-- Indexes for table `feedback_details`
--
ALTER TABLE `feedback_details`
  ADD KEY `cnstr_fdbkdet_fk_enr` (`enr_no`),
  ADD KEY `cnstr_fdbkdet_fk_crit` (`f_crit_id`),
  ADD KEY `cnstr_fdbkdet_fk_rating` (`f_rating_id`),
  ADD KEY `cnstr_fdbkdet_fk_alloc` (`alloc_id`);

--
-- Indexes for table `feedback_percent`
--
ALTER TABLE `feedback_percent`
  ADD PRIMARY KEY (`f_perc_id`),
  ADD KEY `cnstr_fdbkpr_fk_alloc` (`alloc_id`),
  ADD KEY `cnstr_fdbkpr_fk_crit` (`f_crit_id`);

--
-- Indexes for table `feedback_rating`
--
ALTER TABLE `feedback_rating`
  ADD PRIMARY KEY (`f_rating_id`);

--
-- Indexes for table `institute_master`
--
ALTER TABLE `institute_master`
  ADD PRIMARY KEY (`institute_id`);

--
-- Indexes for table `lecture_type_master`
--
ALTER TABLE `lecture_type_master`
  ADD PRIMARY KEY (`lec_type_id`);

--
-- Indexes for table `media_details`
--
ALTER TABLE `media_details`
  ADD PRIMARY KEY (`media_id`);

--
-- Indexes for table `mid_result`
--
ALTER TABLE `mid_result`
  ADD PRIMARY KEY (`result_id`),
  ADD KEY `cnstr_midrslt_fk_enr` (`enr_no`),
  ADD KEY `cnstr_midrslt_fk_extype` (`exam_type_id`),
  ADD KEY `sub_code` (`sub_id`);

--
-- Indexes for table `parent_detail_master`
--
ALTER TABLE `parent_detail_master`
  ADD KEY `cnstr_parent_fk_enr` (`enr_no`);

--
-- Indexes for table `semester_master`
--
ALTER TABLE `semester_master`
  ADD PRIMARY KEY (`sem_id`),
  ADD KEY `cnstr_sem_fk_disci` (`discipline_id`);

--
-- Indexes for table `staff_department_master`
--
ALTER TABLE `staff_department_master`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `staff_details`
--
ALTER TABLE `staff_details`
  ADD PRIMARY KEY (`staff_id`),
  ADD KEY `cnstr_staff_fk_dept` (`dept_id`),
  ADD KEY `cnstr_staff_fk_lcity` (`local_city`),
  ADD KEY `cnstr_staff_fk_lstate` (`local_state`),
  ADD KEY `cnstr_staff_fk_pcity` (`perm_city`),
  ADD KEY `cnstr_staff_fk_pstate` (`perm_state`);

--
-- Indexes for table `student_current_acad_details`
--
ALTER TABLE `student_current_acad_details`
  ADD PRIMARY KEY (`current_acad_id`),
  ADD KEY `cnstr_studcrnt_fk_enr` (`enr_no`),
  ADD KEY `cnstr_studcrnt_fk_disci` (`discipline_id`),
  ADD KEY `cnstr_studcrnt_fk_branch` (`branch_id`),
  ADD KEY `cnstr_studcrnt_fk_sem` (`sem_id`),
  ADD KEY `cnstr_studcrnt_fk_div` (`div_id`),
  ADD KEY `cnstr_studcrnt_fk_batch` (`batch_id`),
  ADD KEY `elec_alloc_id` (`elec_id`);

--
-- Indexes for table `student_master`
--
ALTER TABLE `student_master`
  ADD PRIMARY KEY (`enr_no`),
  ADD KEY `cnstr_stud_fk_lcity` (`local_city`),
  ADD KEY `cnstr_stud_fk_lstate` (`local_state`),
  ADD KEY `cnstr_stud_fk_pcity` (`perm_city`),
  ADD KEY `cnstr_stud_fk_pstate` (`perm_state`);

--
-- Indexes for table `student_prev_acad_details`
--
ALTER TABLE `student_prev_acad_details`
  ADD KEY `cnstr_studprev_fk_enr` (`enr_no`);

--
-- Indexes for table `subject_master`
--
ALTER TABLE `subject_master`
  ADD PRIMARY KEY (`sub_id`),
  ADD KEY `cnstr_sub_fk_disci` (`discipline_id`),
  ADD KEY `cnstr_sub_fk_branch` (`branch_id`),
  ADD KEY `cnstr_sub_fk_sem` (`sem_id`);

--
-- Indexes for table `sub_alloc_master`
--
ALTER TABLE `sub_alloc_master`
  ADD PRIMARY KEY (`alloc_id`),
  ADD KEY `cnstr_suballoc_fk_disci` (`discipline_id`),
  ADD KEY `cnstr_suballoc_fk_branch` (`branch_id`),
  ADD KEY `cnstr_suballoc_fk_fac` (`faculty_id`),
  ADD KEY `cnstr_suballoc_fk_sub` (`sub_id`);

--
-- Indexes for table `timeline_master`
--
ALTER TABLE `timeline_master`
  ADD PRIMARY KEY (`timeline_id`),
  ADD KEY `cnstr_timeline_fk_tt` (`timetable_id`),
  ADD KEY `cnstr_timeline_fk_fac` (`faculty_id`);

--
-- Indexes for table `timetable_two_master`
--
ALTER TABLE `timetable_two_master`
  ADD PRIMARY KEY (`tt_id`),
  ADD KEY `discipline_id` (`discipline_id`,`branch_id`,`sem_id`,`division_id`,`lec_type`,`batch_id`,`alloc_id`),
  ADD KEY `cnstr_tt2_fk_brn` (`branch_id`),
  ADD KEY `cnstr_tt2_fk_sem` (`sem_id`),
  ADD KEY `cnstr_tt2_fk_div` (`division_id`),
  ADD KEY `cnstr_tt2_fk_lectype` (`lec_type`),
  ADD KEY `cnstr_tt2_fk_batch` (`batch_id`),
  ADD KEY `cnstr_tt2_fk_alloc` (`alloc_id`);

--
-- Indexes for table `user_master`
--
ALTER TABLE `user_master`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academic_calender`
--
ALTER TABLE `academic_calender`
  MODIFY `academic_id` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `addr_city_table`
--
ALTER TABLE `addr_city_table`
  MODIFY `city_id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1220;
--
-- AUTO_INCREMENT for table `addr_state_table`
--
ALTER TABLE `addr_state_table`
  MODIFY `state_id` tinyint(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `assignment_master`
--
ALTER TABLE `assignment_master`
  MODIFY `assgn_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `assignment_table`
--
ALTER TABLE `assignment_table`
  MODIFY `ass_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `attendance_master`
--
ALTER TABLE `attendance_master`
  MODIFY `attd_master_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `authentication_master`
--
ALTER TABLE `authentication_master`
  MODIFY `sr_no` mediumint(7) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `batch_master`
--
ALTER TABLE `batch_master`
  MODIFY `batch_id` smallint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `branch_master`
--
ALTER TABLE `branch_master`
  MODIFY `branch_id` tinyint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `circular_info`
--
ALTER TABLE `circular_info`
  MODIFY `circular_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `discipline_master`
--
ALTER TABLE `discipline_master`
  MODIFY `discipline_id` tinyint(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `division_master`
--
ALTER TABLE `division_master`
  MODIFY `div_id` smallint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `exam_schedule_master`
--
ALTER TABLE `exam_schedule_master`
  MODIFY `ex_sched_id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `exam_type_master`
--
ALTER TABLE `exam_type_master`
  MODIFY `exam_type_id` tinyint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `faculty_current_detail`
--
ALTER TABLE `faculty_current_detail`
  MODIFY `fc_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `feedback_criteria`
--
ALTER TABLE `feedback_criteria`
  MODIFY `f_crit_id` tinyint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `feedback_percent`
--
ALTER TABLE `feedback_percent`
  MODIFY `f_perc_id` smallint(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `feedback_rating`
--
ALTER TABLE `feedback_rating`
  MODIFY `f_rating_id` tinyint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `institute_master`
--
ALTER TABLE `institute_master`
  MODIFY `institute_id` tinyint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `lecture_type_master`
--
ALTER TABLE `lecture_type_master`
  MODIFY `lec_type_id` tinyint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `media_details`
--
ALTER TABLE `media_details`
  MODIFY `media_id` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mid_result`
--
ALTER TABLE `mid_result`
  MODIFY `result_id` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `semester_master`
--
ALTER TABLE `semester_master`
  MODIFY `sem_id` tinyint(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `staff_department_master`
--
ALTER TABLE `staff_department_master`
  MODIFY `dept_id` tinyint(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `student_current_acad_details`
--
ALTER TABLE `student_current_acad_details`
  MODIFY `current_acad_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `subject_master`
--
ALTER TABLE `subject_master`
  MODIFY `sub_id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=355;
--
-- AUTO_INCREMENT for table `sub_alloc_master`
--
ALTER TABLE `sub_alloc_master`
  MODIFY `alloc_id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `timeline_master`
--
ALTER TABLE `timeline_master`
  MODIFY `timeline_id` mediumint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT for table `timetable_two_master`
--
ALTER TABLE `timetable_two_master`
  MODIFY `tt_id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `user_master`
--
ALTER TABLE `user_master`
  MODIFY `user_id` tinyint(1) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `academic_calender`
--
ALTER TABLE `academic_calender`
  ADD CONSTRAINT `academic_calender_ibfk_1` FOREIGN KEY (`sem_id`) REFERENCES `semester_master` (`sem_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `academic_calender_ibfk_2` FOREIGN KEY (`discipline_id`) REFERENCES `discipline_master` (`discipline_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `addr_city_table`
--
ALTER TABLE `addr_city_table`
  ADD CONSTRAINT `constraint_state_fk` FOREIGN KEY (`state_id`) REFERENCES `addr_state_table` (`state_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `assignment_master`
--
ALTER TABLE `assignment_master`
  ADD CONSTRAINT `cnstr_fk_asg_dis_branch` FOREIGN KEY (`branch_id`) REFERENCES `branch_master` (`branch_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cnstr_fk_asg_dis_div` FOREIGN KEY (`division_id`) REFERENCES `division_master` (`div_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cnstr_fk_asg_dis_id` FOREIGN KEY (`discipline_id`) REFERENCES `discipline_master` (`discipline_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cnstr_fk_asg_dis_sem` FOREIGN KEY (`sem_id`) REFERENCES `semester_master` (`sem_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cnstr_fk_asg_dis_sub` FOREIGN KEY (`sub_id`) REFERENCES `subject_master` (`sub_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `assignment_table`
--
ALTER TABLE `assignment_table`
  ADD CONSTRAINT `cnstr_ass_fk_allocid` FOREIGN KEY (`alloc_id`) REFERENCES `sub_alloc_master` (`alloc_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cnstr_ass_fk_branch` FOREIGN KEY (`branch_id`) REFERENCES `branch_master` (`branch_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cnstr_ass_fk_disci` FOREIGN KEY (`discipline_id`) REFERENCES `discipline_master` (`discipline_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cnstr_ass_fk_div` FOREIGN KEY (`div_id`) REFERENCES `division_master` (`div_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cnstr_ass_fk_sem` FOREIGN KEY (`sem_id`) REFERENCES `semester_master` (`sem_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `attendance_computer`
--
ALTER TABLE `attendance_computer`
  ADD CONSTRAINT `cnstr_attd_fk_stud` FOREIGN KEY (`student_id`) REFERENCES `student_master` (`enr_no`);

--
-- Constraints for table `authentication_master`
--
ALTER TABLE `authentication_master`
  ADD CONSTRAINT `fk_enr_stud` FOREIGN KEY (`enr_no`) REFERENCES `student_master` (`enr_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `branch_master`
--
ALTER TABLE `branch_master`
  ADD CONSTRAINT `cnstr_branch_fk_disci` FOREIGN KEY (`discipline_id`) REFERENCES `discipline_master` (`discipline_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `division_master`
--
ALTER TABLE `division_master`
  ADD CONSTRAINT `cnstr_div_fk_branch` FOREIGN KEY (`branch_id`) REFERENCES `branch_master` (`branch_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cnstr_div_fk_disci` FOREIGN KEY (`discipline_id`) REFERENCES `discipline_master` (`discipline_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cnstr_div_fk_sem` FOREIGN KEY (`sem_id`) REFERENCES `semester_master` (`sem_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `exam_schedule_master`
--
ALTER TABLE `exam_schedule_master`
  ADD CONSTRAINT `cnstr_exsched_branch` FOREIGN KEY (`branch_id`) REFERENCES `branch_master` (`branch_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cnstr_exsched_disci` FOREIGN KEY (`discipline_id`) REFERENCES `discipline_master` (`discipline_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cnstr_exsched_div` FOREIGN KEY (`division_id`) REFERENCES `division_master` (`div_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cnstr_exsched_extype` FOREIGN KEY (`exam_type_id`) REFERENCES `exam_type_master` (`exam_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cnstr_exsched_sem` FOREIGN KEY (`sem_id`) REFERENCES `semester_master` (`sem_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cnstr_exsched_sub` FOREIGN KEY (`sub_id`) REFERENCES `subject_master` (`sub_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `faculty_acad_details`
--
ALTER TABLE `faculty_acad_details`
  ADD CONSTRAINT `cnstr_facacad_fk_id` FOREIGN KEY (`faculty_id`) REFERENCES `faculty_master` (`faculty_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `faculty_current_detail`
--
ALTER TABLE `faculty_current_detail`
  ADD CONSTRAINT `cnstr_faccrnt_fk_branch` FOREIGN KEY (`branch_id`) REFERENCES `branch_master` (`branch_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cnstr_faccrnt_fk_discipline` FOREIGN KEY (`discipline_id`) REFERENCES `discipline_master` (`discipline_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cnstr_faccrnt_fk_id` FOREIGN KEY (`faculty_id`) REFERENCES `faculty_master` (`faculty_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `faculty_master`
--
ALTER TABLE `faculty_master`
  ADD CONSTRAINT `cnstr_facmstr_fk_lcity` FOREIGN KEY (`local_city`) REFERENCES `addr_city_table` (`city_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cnstr_facmstr_fk_lstate` FOREIGN KEY (`local_state`) REFERENCES `addr_state_table` (`state_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cnstr_facmstr_fk_pcity` FOREIGN KEY (`perm_city`) REFERENCES `addr_city_table` (`city_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cnstr_facmstr_fk_pstate` FOREIGN KEY (`perm_state`) REFERENCES `addr_state_table` (`state_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `feedback_details`
--
ALTER TABLE `feedback_details`
  ADD CONSTRAINT `cnstr_fdbkdet_fk_alloc` FOREIGN KEY (`alloc_id`) REFERENCES `sub_alloc_master` (`alloc_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cnstr_fdbkdet_fk_crit` FOREIGN KEY (`f_crit_id`) REFERENCES `feedback_criteria` (`f_crit_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cnstr_fdbkdet_fk_enr` FOREIGN KEY (`enr_no`) REFERENCES `student_master` (`enr_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cnstr_fdbkdet_fk_rating` FOREIGN KEY (`f_rating_id`) REFERENCES `feedback_rating` (`f_rating_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `feedback_percent`
--
ALTER TABLE `feedback_percent`
  ADD CONSTRAINT `cnstr_fdbkpr_fk_alloc` FOREIGN KEY (`alloc_id`) REFERENCES `sub_alloc_master` (`alloc_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cnstr_fdbkpr_fk_crit` FOREIGN KEY (`f_crit_id`) REFERENCES `feedback_criteria` (`f_crit_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mid_result`
--
ALTER TABLE `mid_result`
  ADD CONSTRAINT `cnstr_midrslt_fk_enr` FOREIGN KEY (`enr_no`) REFERENCES `student_master` (`enr_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cnstr_midrslt_fk_extype` FOREIGN KEY (`exam_type_id`) REFERENCES `exam_type_master` (`exam_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cnstr_midrslt_fk_subid` FOREIGN KEY (`sub_id`) REFERENCES `subject_master` (`sub_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `parent_detail_master`
--
ALTER TABLE `parent_detail_master`
  ADD CONSTRAINT `cnstr_parent_fk_enr` FOREIGN KEY (`enr_no`) REFERENCES `student_master` (`enr_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `semester_master`
--
ALTER TABLE `semester_master`
  ADD CONSTRAINT `cnstr_sem_fk_disci` FOREIGN KEY (`discipline_id`) REFERENCES `discipline_master` (`discipline_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `staff_details`
--
ALTER TABLE `staff_details`
  ADD CONSTRAINT `cnstr_staff_fk_dept` FOREIGN KEY (`dept_id`) REFERENCES `staff_department_master` (`dept_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cnstr_staff_fk_lcity` FOREIGN KEY (`local_city`) REFERENCES `addr_city_table` (`city_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cnstr_staff_fk_lstate` FOREIGN KEY (`local_state`) REFERENCES `addr_state_table` (`state_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cnstr_staff_fk_pcity` FOREIGN KEY (`perm_city`) REFERENCES `addr_city_table` (`city_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cnstr_staff_fk_pstate` FOREIGN KEY (`perm_state`) REFERENCES `addr_state_table` (`state_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student_current_acad_details`
--
ALTER TABLE `student_current_acad_details`
  ADD CONSTRAINT `cnstr_studcrnt_fk_batch` FOREIGN KEY (`batch_id`) REFERENCES `batch_master` (`batch_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cnstr_studcrnt_fk_branch` FOREIGN KEY (`branch_id`) REFERENCES `branch_master` (`branch_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cnstr_studcrnt_fk_disci` FOREIGN KEY (`discipline_id`) REFERENCES `discipline_master` (`discipline_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cnstr_studcrnt_fk_div` FOREIGN KEY (`div_id`) REFERENCES `division_master` (`div_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cnstr_studcrnt_fk_elecid` FOREIGN KEY (`elec_id`) REFERENCES `subject_master` (`sub_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cnstr_studcrnt_fk_enr` FOREIGN KEY (`enr_no`) REFERENCES `student_master` (`enr_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cnstr_studcrnt_fk_sem` FOREIGN KEY (`sem_id`) REFERENCES `semester_master` (`sem_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student_master`
--
ALTER TABLE `student_master`
  ADD CONSTRAINT `cnstr_stud_fk_lcity` FOREIGN KEY (`local_city`) REFERENCES `addr_city_table` (`city_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cnstr_stud_fk_lstate` FOREIGN KEY (`local_state`) REFERENCES `addr_state_table` (`state_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cnstr_stud_fk_pcity` FOREIGN KEY (`perm_city`) REFERENCES `addr_city_table` (`city_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cnstr_stud_fk_pstate` FOREIGN KEY (`perm_state`) REFERENCES `addr_state_table` (`state_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student_prev_acad_details`
--
ALTER TABLE `student_prev_acad_details`
  ADD CONSTRAINT `cnstr_studprev_fk_enr` FOREIGN KEY (`enr_no`) REFERENCES `student_master` (`enr_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subject_master`
--
ALTER TABLE `subject_master`
  ADD CONSTRAINT `cnstr_sub_fk_branch` FOREIGN KEY (`branch_id`) REFERENCES `branch_master` (`branch_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cnstr_sub_fk_disci` FOREIGN KEY (`discipline_id`) REFERENCES `discipline_master` (`discipline_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cnstr_sub_fk_sem` FOREIGN KEY (`sem_id`) REFERENCES `semester_master` (`sem_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sub_alloc_master`
--
ALTER TABLE `sub_alloc_master`
  ADD CONSTRAINT `cnstr_suballoc_fk_branch` FOREIGN KEY (`branch_id`) REFERENCES `branch_master` (`branch_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cnstr_suballoc_fk_disci` FOREIGN KEY (`discipline_id`) REFERENCES `discipline_master` (`discipline_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cnstr_suballoc_fk_fac` FOREIGN KEY (`faculty_id`) REFERENCES `faculty_master` (`faculty_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cnstr_suballoc_fk_sub` FOREIGN KEY (`sub_id`) REFERENCES `subject_master` (`sub_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `timeline_master`
--
ALTER TABLE `timeline_master`
  ADD CONSTRAINT `cnstr_timeline_fk_fac` FOREIGN KEY (`faculty_id`) REFERENCES `faculty_master` (`faculty_id`);

--
-- Constraints for table `timetable_two_master`
--
ALTER TABLE `timetable_two_master`
  ADD CONSTRAINT `cnstr_tt2_fk_alloc` FOREIGN KEY (`alloc_id`) REFERENCES `sub_alloc_master` (`alloc_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cnstr_tt2_fk_batch` FOREIGN KEY (`batch_id`) REFERENCES `batch_master` (`batch_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cnstr_tt2_fk_brn` FOREIGN KEY (`branch_id`) REFERENCES `branch_master` (`branch_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cnstr_tt2_fk_dis` FOREIGN KEY (`discipline_id`) REFERENCES `discipline_master` (`discipline_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cnstr_tt2_fk_div` FOREIGN KEY (`division_id`) REFERENCES `division_master` (`div_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cnstr_tt2_fk_lectype` FOREIGN KEY (`lec_type`) REFERENCES `lecture_type_master` (`lec_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cnstr_tt2_fk_sem` FOREIGN KEY (`sem_id`) REFERENCES `semester_master` (`sem_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
