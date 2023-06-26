-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2023 at 02:58 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `recruitment_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE `application` (
  `id` int(30) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `middlename` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `cover_letter` text NOT NULL,
  `position_id` int(30) NOT NULL,
  `resume_path` text NOT NULL,
  `process_id` tinyint(30) NOT NULL DEFAULT 0 COMMENT '0=for review\r\n',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`id`, `firstname`, `middlename`, `lastname`, `gender`, `email`, `contact`, `address`, `cover_letter`, `position_id`, `resume_path`, `process_id`, `date_created`) VALUES
(2, 'Abdul', 'null', 'Raoof', 'Male', 'raoof4581@gmail.com', '0318-2295042', 'Hafizabad', '', 2, '1685791860_file-sample150kB.pdf', 9, '2023-06-03 16:31:10'),
(3, 'Abdul', 'null', 'Raoof', 'Male', 'raoof4581@gmail.com', '0318-2295042', 'Hafizabad', '', 3, '1685792280_file-sample150kB.pdf', 1, '2023-06-03 16:38:25'),
(4, 'Abdul', 'null', 'Raoof', 'Male', 'Raoof1123@gmail.com', '0318-2295042', 'Hafizabad', '', 1, '1685952900_file-sample150kB.pdf', 0, '2023-06-05 13:15:16');

-- --------------------------------------------------------

--
-- Table structure for table `recruitment_status`
--

CREATE TABLE `recruitment_status` (
  `id` int(30) NOT NULL,
  `status_label` varchar(200) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recruitment_status`
--

INSERT INTO `recruitment_status` (`id`, `status_label`, `status`) VALUES
(1, 'Scheduled for Initial Interview', 0),
(2, 'No Show', 0),
(3, 'Passed the Initial Interview', 1),
(4, 'Failed in Initial Review', 1),
(5, 'Passed the Written Exam', 0),
(6, 'Failed the written exam', 0),
(7, 'Passed the Final Interview', 1),
(8, 'Failed in Final Review', 0),
(9, 'Hired', 1),
(10, 'test', 1);

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `cover_img` text NOT NULL,
  `about_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `cover_img`, `about_content`) VALUES
(1, 'Recruitment', 'raoof4581@gmail.com', '0318-2295042', '1685944260_1.jpeg', '&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;/p&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; text-align: justify; color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; text-align: justify; color: rgb(255, 255, 255);&quot;&gt;&amp;nbsp;&lt;/span&gt;&amp;nbsp;&lt;/span&gt;&amp;nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus sit amet venenatis metus, a placerat urna. Phasellus est massa, cursus eget turpis commodo, volutpat tincidunt libero. Nam varius justo in dolor hendrerit aliquam. Praesent rhoncus scelerisque nisl, id finibus leo rutrum id. Nulla tincidunt, purus eu tincidunt vulputate, nibh arcu gravida felis, sed malesuada arcu lacus non sapien. Nulla vulputate, erat quis posuere vehicula, diam nisi sagittis enim, quis lobortis arcu nisl ut velit. Etiam eget hendrerit justo. Pellentesque arcu massa, vestibulum quis magna id, mollis molestie augue. Duis imperdiet elit eu congue dictum. Duis iaculis imperdiet diam, non pharetra magna condimentum ut. Cras rhoncus justo a pharetra aliquet.&lt;br style=&quot;color: rgb(255, 255, 255);&quot;&gt;&lt;p style=&quot;color: rgb(255, 255, 255);&quot;&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative; color: rgb(255, 255, 255);&quot;&gt;&lt;/p&gt;&lt;h1 style=&quot;font-size: 28px; background: transparent; position: relative; color: rgb(255, 255, 255);&quot;&gt;Where does it come from?&lt;span style=&quot;color:rgb(255,255,255);font-size: 28px; background: transparent; position: relative;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/h1&gt;&lt;p style=&quot;text-align: center; margin-bottom: 15px; padding: 0px; color: rgb(255, 255, 255); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-weight: 400;&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; text-align: justify; color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; text-align: justify; color: rgb(255, 255, 255);&quot;&gt;Proin sodales ut massa eu pharetra. Fusce in porttitor purus. Vivamus porta nisl ornare neque convallis dapibus. Vivamus arcu tortor, venenatis eu vehicula in, egestas sit amet nisi. In vel diam purus. Suspendisse commodo elit et nisi sodales, quis varius justo faucibus. Nullam eget porttitor odio. Etiam tincidunt ante eu libero sagittis convallis. Pellentesque maximus neque et viverra porttitor. Etiam et arcu dui. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Praesent &lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; text-align: justify; color: rgb(255, 255, 255);&quot;&gt;&amp;nbsp;&lt;/span&gt;dignissim arcu et turpis aliquam finibus. Aenean ut sagittis purus.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; margin-bottom: 15px; padding: 0px; color: rgb(255, 255, 255); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-weight: 400;&quot;&gt;&lt;/p&gt;&lt;/span&gt;&lt;p style=&quot;text-align: center; margin-bottom: 15px; padding: 0px; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-weight: 400;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `doctor_id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` text NOT NULL,
  `contact` text NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1=admin , 2 = staff'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `doctor_id`, `name`, `address`, `contact`, `username`, `password`, `type`) VALUES
(4, 0, 'Abdul Raoof', '', '', 'raoof.2295@gamil.com', '$2y$10$H4d1nZUE3lBVFKjad/qeE.4UvUlzamx0PqCu/QD4QSuKaiNg9gsBS', 1),
(6, 0, 'Abdul Raoof', '', '', 'raoof4581@gmail.com', '$2y$10$6lwuSsCBB4udxDxfWCN5juy0fINoLljEbzy352bv4JsQDlexp2/26', 2);

-- --------------------------------------------------------

--
-- Table structure for table `vacancy`
--

CREATE TABLE `vacancy` (
  `id` int(30) NOT NULL,
  `position` varchar(200) NOT NULL,
  `availability` int(30) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vacancy`
--

INSERT INTO `vacancy` (`id`, `position`, `availability`, `description`, `status`, `date_created`) VALUES
(1, 'Junior Web Developer', 5, '&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; text-align: justify;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus sit amet venenatis metus, a placerat urna. Phasellus est massa, cursus eget turpis commodo, volutpat tincidunt libero. Nam varius justo in dolor hendrerit aliquam. Praesent rhoncus scelerisque nisl, id finibus leo rutrum id. Nulla tincidunt, purus eu tincidunt vulputate, nibh arcu gravida felis, sed malesuada arcu lacus non sapien. Nulla vulputate, erat quis posuere vehicula, diam nisi sagittis enim, quis lobortis arcu nisl ut velit. Etiam eget hendrerit justo. Pellentesque arcu massa, vestibulum quis magna id, mollis molestie augue.&lt;/span&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; text-align: justify;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; text-align: justify;&quot;&gt;Must have:&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;ul&gt;&lt;li&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; text-align: justify;&quot;&gt;Sample 101&lt;/span&gt;&lt;br&gt;&lt;/li&gt;&lt;li&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; text-align: justify;&quot;&gt;Sample 102&lt;/span&gt;&lt;/li&gt;&lt;li&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; text-align: justify;&quot;&gt;Sample 103&lt;/span&gt;&lt;/li&gt;&lt;li&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; text-align: justify;&quot;&gt;Sample 104&lt;/span&gt;&lt;/li&gt;&lt;li&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; text-align: justify;&quot;&gt;Sample 105&lt;/span&gt;&lt;/li&gt;&lt;li&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; text-align: justify;&quot;&gt;Sample 106&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;/p&gt;', 1, '2022-09-04 16:03:15'),
(2, 'Inter Web Developer', 3, '&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; text-align: justify;&quot;&gt;Proin sodales ut massa eu pharetra. Fusce in porttitor purus. Vivamus porta nisl ornare neque convallis dapibus. Vivamus arcu tortor, venenatis eu vehicula in, egestas sit amet nisi. In vel diam purus. Suspendisse commodo elit et nisi sodales, quis varius justo faucibus. Nullam eget porttitor odio. Etiam tincidunt ante eu libero sagittis convallis. Pellentesque maximus neque et viverra porttitor. Etiam et arcu dui.&lt;/span&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; text-align: justify;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;font color=&quot;#000000&quot; face=&quot;Open Sans, Arial, sans-serif&quot;&gt;Benifts:&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify; &quot;&gt;&lt;ul&gt;&lt;li&gt;&lt;font color=&quot;#000000&quot; face=&quot;Open Sans, Arial, sans-serif&quot; style=&quot;text-align: justify; &quot;&gt;test&amp;nbsp; 101&lt;/font&gt;&lt;/li&gt;&lt;li&gt;&lt;font color=&quot;#000000&quot; face=&quot;Open Sans, Arial, sans-serif&quot; style=&quot;text-align: justify; &quot;&gt;Test 102&lt;/font&gt;&lt;/li&gt;&lt;li&gt;Test 103&lt;/li&gt;&lt;li&gt;Test 105&lt;/li&gt;&lt;/ul&gt;&lt;/p&gt;', 1, '2022-09-04 16:04:34'),
(3, 'MERN Stack  DEVELOPER', 10, '&lt;p&gt;&lt;b style=&quot;margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/b&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;/p&gt;', 1, '2023-06-03 16:19:11'),
(4, 'Web Development', 5, '&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; text-align: justify;&quot;&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &amp;#x2019;Content here, content here&amp;#x2019;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &amp;#x2019;lorem ipsum&amp;#x2019; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose&lt;/span&gt;', 1, '2023-06-07 09:18:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `application`
--
ALTER TABLE `application`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recruitment_status`
--
ALTER TABLE `recruitment_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vacancy`
--
ALTER TABLE `vacancy`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `application`
--
ALTER TABLE `application`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `recruitment_status`
--
ALTER TABLE `recruitment_status`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `vacancy`
--
ALTER TABLE `vacancy`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
