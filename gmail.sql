-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2021 at 01:47 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gmail`
--

-- --------------------------------------------------------

--
-- Table structure for table `drafts`
--

CREATE TABLE `drafts` (
  `id` int(11) NOT NULL,
  `email_sender` varchar(50) NOT NULL,
  `email_title` varchar(50) NOT NULL,
  `email_msg` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `drafts`
--

INSERT INTO `drafts` (`id`, `email_sender`, `email_title`, `email_msg`) VALUES
(1, 'himanshutyagi623@gmail.com', 'Ducat India', '        Welcome to Dummy Gmail\r\n        '),
(2, '', '', '        Welcome to Dummy Gmail\r\n        '),
(3, 'codewithpunit@gmail.com', 'Ducat India', '        Welcome to Dummy Gmail\r\n        '),
(4, 'codewithpunit@gmail.com', 'Welcome Email', '        Welcome to Dummy Gmail\r\n        ');

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE `emails` (
  `id` int(11) NOT NULL,
  `email_sender` varchar(20) NOT NULL,
  `email_title` varchar(50) NOT NULL,
  `email_msg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `emails`
--

INSERT INTO `emails` (`id`, `email_sender`, `email_title`, `email_msg`) VALUES
(7, 'Fraud Company', 'Dummy Content', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam incidunt explicabo soluta nemo. Porro corrupti ipsum, harum alias modi accusantium necessitatibus deserunt neque itaque, pariatur sit tempore eos, rerum aliquid mollitia amet veniam. Doloribus voluptatem sapiente accusantium. Nisi reprehenderit, eaque nobis, beatae soluta quae amet minus error numquam animi adipisci magnam cumque voluptatum veniam laudantium? Ut, id fugit a, eum, qui ipsa consequuntur repudiandae ipsum adipisci veniam vitae nesciunt laboriosam deserunt atque consectetur voluptatibus sunt. Quas accusantium deleniti corrupti ea. Repudiandae consequuntur beatae dolorem aut, reprehenderit minus eius nemo quo dolor nisi qui consectetur aspernatur, libero sapiente soluta id cupiditate dignissimos error sunt magni cum eum, eaque incidunt ipsa. Magni error, reiciendis reprehenderit nam adipisci exercitationem eos non illo laborum. Vero voluptatem aliquid doloremque. Doloribus quidem explicabo eligendi excepturi commodi, laudantium optio deserunt officiis necessitatibus eum soluta exercitationem, neque quisquam iure at beatae quibusdam accusantium. Quas tempora delectus vitae nam quia consequuntur? Reprehenderit aliquid, sit saepe aut vero aspernatur tempora quos sequi odit sapiente magnam placeat ullam, dolore voluptatem laudantium repudiandae accusantium quis. Quibusdam consectetur incidunt magni perspiciatis, rerum in expedita non neque vero obcaecati? Laudantium, nesciunt? Voluptates nesciunt dolore eveniet, iusto esse consequuntur magni maxime eaque quo officiis, veniam rem odit cupiditate. Quasi est sequi possimus tempora aperiam hic totam quia eligendi unde, molestiae error saepe aspernatur at suscipit veniam aliquam voluptates quam autem nisi fugiat repudiandae! Facilis totam aliquid illum sunt dolore optio, sint non at voluptate ipsum necessitatibus sed, molestias eligendi saepe voluptas quas veritatis culpa! Maxime voluptates temporibus minus, officia commodi voluptate eveniet quia quo, tempora placeat, rem ullam iure dolorum impedit sequi aspernatur quaerat aut dignissimos sit autem iusto qui unde. Enim cum ipsa qui eveniet ullam provident est nostrum reiciendis tempora omnis commodi iusto sequi itaque non vero, error, tempore consequatur, officia eos animi. Dicta esse, alias ea molestias maxime suscipit non harum est accusamus eum saepe provident, voluptatum qui asperiores repellendus possimus quas expedita minus assumenda. Qui consectetur maiores alias libero doloribus quaerat? Odit quae necessitatibus distinctio officiis suscipit vitae ducimus, quia error ullam, laborum numquam atque voluptatem et earum perspiciatis consequatur ipsa dolore amet. Sed obcaecati aspernatur explicabo nesciunt ducimus consectetur, maxime quas natus ad dolores quaerat eveniet quibusdam a, temporibus id dolorem reiciendis beatae. Error voluptatem nostrum porro dolorum amet dolorem laudantium cum, quam earum voluptatum tenetur illo, perferendis optio beatae repellat ab! Magni dolorum dolor consequuntur quod expedita officiis ipsum consequatur obcaecati itaque. Iure deleniti repellat voluptatum ex quod distinctio fugiat, ut facilis, aliquid dolorum hic cum, quae natus perspiciatis reiciendis libero totam quo labore quaerat vel illo vitae. Dolorem sunt quisquam debitis neque, sed unde ratione modi voluptatibus nostrum aut, doloribus obcaecati error qui tempora voluptas eligendi dolores cum voluptate corrupti asperiores iusto minus laudantium! Molestiae facere accusamus eius ut sed obcaecati, omnis quibusdam corrupti, vero repellendus laboriosam nobis ipsa at fugiat minus? Eaque minima illo excepturi, velit cum assumenda est libero sed repudiandae molestias architecto natus adipisci. Omnis, placeat inventore? Quasi, ducimus neque necessitatibus dolor odio beatae quidem?'),
(8, 'Tata Consultancy Ser', 'Job | Node | Js Developers', 'Tata Consultancy Services is looking for talented Digital experts to lead innovation towards business sustainability and revolution.\r\nTCS Hiring Contest - Digital Skills - Node JS Challenge is for technical geeks like you to showcase your coding skills in Node Js, JavaScript.'),
(9, 'Paytm Mall', 'Himanshu, Pay Day Ka Maza Ab Hoga Dugna!', 'If you cannot view this message, click here\r\n\r\nEarn Over 5860000 /- Rupees By Working From Home.\r\nExclusive advice that can help you earn up to 65000/- Rupees a day.\r\nClick here to get started.'),
(10, 'Team HR', 'New jobs for Technical Support Voice Technical Sup', '\r\nTechnical support (Voice) Technical support Assistant - International Process\r\nEmprego Solutions\r\n\r\n0 to 3 Yrs\r\nDelhi\r\n\r\n \r\nApply\r\nTechnical Support Engineer Required for IT Company\r\nSFC GROUP\r\n\r\n0 to 1 Yr\r\nPune\r\n\r\n \r\nApply\r\nTechnical Support Engineer Required for IT Company\r\nSFC GROUP\r\n\r\n0 to 1 Yr\r\nPune\r\n\r\n \r\n'),
(11, 'Ching Oracle', 'Your I Ching for January 30th, 2021  ', '\r\nDear Himanshu Tyagi, this is your I Ching for Saturday, January 30th:\r\nSun: Wind,\r\nIn this period, your doubts dissipate and problems are resolved. The best way to see clearly is to observe the situation. Everything will sort itself out.\r\n\r\nSee you tomorrow.'),
(12, 'Fraud Company', 'Dummy Content', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam incidunt explicabo soluta nemo. Porro corrupti ipsum, harum alias modi accusantium necessitatibus deserunt neque itaque, pariatur sit tempore eos, rerum aliquid mollitia amet veniam. Doloribus voluptatem sapiente accusantium. Nisi reprehenderit, eaque nobis, beatae soluta quae amet minus error numquam animi adipisci magnam cumque voluptatum veniam laudantium? Ut, id fugit a, eum, qui ipsa consequuntur repudiandae ipsum adipisci veniam vitae nesciunt laboriosam deserunt atque consectetur voluptatibus sunt. Quas accusantium deleniti corrupti ea. Repudiandae consequuntur beatae dolorem aut, reprehenderit minus eius nemo quo dolor nisi qui consectetur aspernatur, libero sapiente soluta id cupiditate dignissimos error sunt magni cum eum, eaque incidunt ipsa. Magni error, reiciendis reprehenderit nam adipisci exercitationem eos non illo laborum. Vero voluptatem aliquid doloremque. Doloribus quidem explicabo eligendi excepturi commodi, laudantium optio deserunt officiis necessitatibus eum soluta exercitationem, neque quisquam iure at beatae quibusdam accusantium. Quas tempora delectus vitae nam quia consequuntur? Reprehenderit aliquid, sit saepe aut vero aspernatur tempora quos sequi odit sapiente magnam placeat ullam, dolore voluptatem laudantium repudiandae accusantium quis. Quibusdam consectetur incidunt magni perspiciatis, rerum in expedita non neque vero obcaecati? Laudantium, nesciunt? Voluptates nesciunt dolore eveniet, iusto esse consequuntur magni maxime eaque quo officiis, veniam rem odit cupiditate. Quasi est sequi possimus tempora aperiam hic totam quia eligendi unde, molestiae error saepe aspernatur at suscipit veniam aliquam voluptates quam autem nisi fugiat repudiandae! Facilis totam aliquid illum sunt dolore optio, sint non at voluptate ipsum necessitatibus sed, molestias eligendi saepe voluptas quas veritatis culpa! Maxime voluptates temporibus minus, officia commodi voluptate eveniet quia quo, tempora placeat, rem ullam iure dolorum impedit sequi aspernatur quaerat aut dignissimos sit autem iusto qui unde. Enim cum ipsa qui eveniet ullam provident est nostrum reiciendis tempora omnis commodi iusto sequi itaque non vero, error, tempore consequatur, officia eos animi. Dicta esse, alias ea molestias maxime suscipit non harum est accusamus eum saepe provident, voluptatum qui asperiores repellendus possimus quas expedita minus assumenda. Qui consectetur maiores alias libero doloribus quaerat? Odit quae necessitatibus distinctio officiis suscipit vitae ducimus, quia error ullam, laborum numquam atque voluptatem et earum perspiciatis consequatur ipsa dolore amet. Sed obcaecati aspernatur explicabo nesciunt ducimus consectetur, maxime quas natus ad dolores quaerat eveniet quibusdam a, temporibus id dolorem reiciendis beatae. Error voluptatem nostrum porro dolorum amet dolorem laudantium cum, quam earum voluptatum tenetur illo, perferendis optio beatae repellat ab! Magni dolorum dolor consequuntur quod expedita officiis ipsum consequatur obcaecati itaque. Iure deleniti repellat voluptatum ex quod distinctio fugiat, ut facilis, aliquid dolorum hic cum, quae natus perspiciatis reiciendis libero totam quo labore quaerat vel illo vitae. Dolorem sunt quisquam debitis neque, sed unde ratione modi voluptatibus nostrum aut, doloribus obcaecati error qui tempora voluptas eligendi dolores cum voluptate corrupti asperiores iusto minus laudantium! Molestiae facere accusamus eius ut sed obcaecati, omnis quibusdam corrupti, vero repellendus laboriosam nobis ipsa at fugiat minus? Eaque minima illo excepturi, velit cum assumenda est libero sed repudiandae molestias architecto natus adipisci. Omnis, placeat inventore? Quasi, ducimus neque necessitatibus dolor odio beatae quidem?'),
(13, 'Tata Consultancy Ser', 'Job | Node | Js Developers', 'Tata Consultancy Services is looking for talented Digital experts to lead innovation towards business sustainability and revolution.\r\nTCS Hiring Contest - Digital Skills - Node JS Challenge is for technical geeks like you to showcase your coding skills in Node Js, JavaScript.'),
(14, 'Paytm Mall', 'Himanshu, Pay Day Ka Maza Ab Hoga Dugna!', 'If you cannot view this message, click here\r\n\r\nEarn Over 5860000 /- Rupees By Working From Home.\r\nExclusive advice that can help you earn up to 65000/- Rupees a day.\r\nClick here to get started.'),
(15, 'Team HR', 'New jobs for Technical Support Voice Technical Sup', '\r\nTechnical support (Voice) Technical support Assistant - International Process\r\nEmprego Solutions\r\n\r\n0 to 3 Yrs\r\nDelhi\r\n\r\n \r\nApply\r\nTechnical Support Engineer Required for IT Company\r\nSFC GROUP\r\n\r\n0 to 1 Yr\r\nPune\r\n\r\n \r\nApply\r\nTechnical Support Engineer Required for IT Company\r\nSFC GROUP\r\n\r\n0 to 1 Yr\r\nPune\r\n\r\n \r\n'),
(16, 'Ching Oracle', 'Your I Ching for January 30th, 2021  ', '\r\nDear Himanshu Tyagi, this is your I Ching for Saturday, January 30th:\r\nSun: Wind,\r\nIn this period, your doubts dissipate and problems are resolved. The best way to see clearly is to observe the situation. Everything will sort itself out.\r\n\r\nSee you tomorrow.'),
(17, 'punit@gmail.com', 'Hello', ''),
(23, 'codewithpunit@gmail.', 'Ducat India', 'Welcome to Ducat Ghazaiabad\r\nWe offer Followin Courses\r\nHTML\r\nPHP\r\nJS\r\nJQUERY\r\nJAVA\r\nCSS\r\n>NET\r\n'),
(24, 'codewithpunit@gmail.', 'Ducat India', 'Welcome to Ducat Ghazaiabad\r\nWe offer Followin Courses\r\nHTML\r\nPHP\r\nJS\r\nJQUERY\r\nJAVA\r\nCSS\r\n>NET\r\n'),
(25, 'Rishabhtyagi000@gmai', 'NIET Noida', 'Image1\r\nImage2\r\nImage3\r\nImage4        \r\nImage5\r\nImage6\r\nImage7\r\nImage8\r\n        \r\n        '),
(26, 'Rishabhtyagi000@gmai', 'NIET Noida', 'Image1\r\nImage2\r\nImage3\r\nImage4        \r\nImage5\r\nImage6\r\nImage7\r\nImage8\r\n        \r\n        '),
(27, 'Paytm Mall', 'Himanshu, Pay Day Ka Maza Ab Hoga Dugna!', 'If you cannot view this message, click here\r\n\r\nEarn Over 5860000 /- Rupees By Working From Home.\r\nExclusive advice that can help you earn up to 65000/- Rupees a day.\r\nClick here to get started.'),
(28, 'Tata Consultancy Ser', 'Job | Node | Js Developers', 'Tata Consultancy Services is looking for talented Digital experts to lead innovation towards business sustainability and revolution.\r\nTCS Hiring Contest - Digital Skills - Node JS Challenge is for technical geeks like you to showcase your coding skills in Node Js, JavaScript.'),
(29, 'Ching Oracle', 'Your I Ching for January 30th, 2021  ', '\r\nDear Himanshu Tyagi, this is your I Ching for Saturday, January 30th:\r\nSun: Wind,\r\nIn this period, your doubts dissipate and problems are resolved. The best way to see clearly is to observe the situation. Everything will sort itself out.\r\n\r\nSee you tomorrow.');

-- --------------------------------------------------------

--
-- Table structure for table `sentmail`
--

CREATE TABLE `sentmail` (
  `id` int(11) NOT NULL,
  `email_sender` varchar(50) NOT NULL,
  `email_title` varchar(50) NOT NULL,
  `email_msg` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `starred`
--

CREATE TABLE `starred` (
  `id` int(11) NOT NULL,
  `email_sender` varchar(50) NOT NULL,
  `email_title` varchar(50) NOT NULL,
  `email_msg` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `starred`
--

INSERT INTO `starred` (`id`, `email_sender`, `email_title`, `email_msg`) VALUES
(1, 'himanshutyagi623@gmail.com', 'NIET Noida', '        Welcome to Dummy Gmail\r\n        '),
(2, 'himanshutyagi623@gmail.com', 'Ducat India', '        Welcome to Dummy Gmail\r\n        ');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `uname` char(50) NOT NULL,
  `upass` varchar(50) NOT NULL,
  `uemail` varchar(50) NOT NULL,
  `umobile` bigint(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `uname`, `upass`, `uemail`, `umobile`) VALUES
(1, 'Himanshu', '121212', 'himanshutyagi623@gmail.com', 9718108561),
(2, 'Admin', '12345', 'admin123@gmail.com', 8218332433),
(3, 'Ruchi Tyagi', '623', 'ruchityagi623@gmail.com', 9310243524),
(4, 'SOFTYOUTH1', 'bkjbbjkbj', 'softyouth@gmail.com', 11221122);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `drafts`
--
ALTER TABLE `drafts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sentmail`
--
ALTER TABLE `sentmail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `starred`
--
ALTER TABLE `starred`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `drafts`
--
ALTER TABLE `drafts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `emails`
--
ALTER TABLE `emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `sentmail`
--
ALTER TABLE `sentmail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `starred`
--
ALTER TABLE `starred`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
