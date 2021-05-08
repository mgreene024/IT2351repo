/********************************************************
* This script creates the database named assignment5no2 
*********************************************************/

--
-- Database: `assignment5no2`
--
CREATE DATABASE IF NOT EXISTS `assignment5no2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `assignment5no2`;

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `class_id` int NOT NULL,
  `class_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `major_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`class_id`, `class_name`, `major_id`) VALUES
(1, 'IT1025', 2),
(2, 'MATH1200', 1),
(3, 'IT1050', 1),
(4, 'IT2351', 1),
(5, '1025', 2),
(6, '1050', 2);

-- --------------------------------------------------------

--
-- Table structure for table `majors`
--

CREATE TABLE `majors` (
  `major_id` int NOT NULL,
  `major_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `majors`
--

INSERT INTO `majors` (`major_id`, `major_name`) VALUES
(1, 'Programming'),
(2, 'Networking');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` int NOT NULL,
  `student_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `student_name`, `address`, `email`) VALUES
(1, 'Joe Green', '124 Main St.', 'Joe@school.edu'),
(2, 'Sue Smith', '345 Second St.', 'Sue@school.edu'),
(3, 'Nick Green', '45 York Road', 'Nick@school.edu'),
(4, 'Andy Andrews', '600 5thAve.', 'Andy@school.edu'),
(5, 'Jade Black', '42 Main St.', 'Jade@school.edu'),
(6, 'Charles Mike', '14 Second St.', 'Charles@school.edu'),
(7, 'George Cameroon', '73 Second St.', 'George@school.edu');

-- --------------------------------------------------------

--
-- Table structure for table `student_classes`
--

CREATE TABLE `student_classes` (
  `id` int NOT NULL,
  `student_id` int DEFAULT NULL,
  `class_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_classes`
--

INSERT INTO `student_classes` (`id`, `student_id`, `class_id`) VALUES
(5, 1, 1),
(6, 1, 2),
(7, 1, 3),
(8, 2, 1),
(9, 2, 3),
(10, 2, 4),
(11, 3, 5),
(12, 4, 5),
(13, 4, 6),
(14, 5, 3),
(15, 5, 4),
(16, 6, 4),
(17, 7, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`class_id`),
  ADD KEY `major_id_idx` (`major_id`);

--
-- Indexes for table `majors`
--
ALTER TABLE `majors`
  ADD PRIMARY KEY (`major_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `student_classes`
--
ALTER TABLE `student_classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_idx` (`class_id`),
  ADD KEY `student_idx` (`student_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `class_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `majors`
--
ALTER TABLE `majors`
  MODIFY `major_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `student_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `student_classes`
--
ALTER TABLE `student_classes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `classes`
--
ALTER TABLE `classes`
  ADD CONSTRAINT `major_id` FOREIGN KEY (`major_id`) REFERENCES `majors` (`major_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `student_classes`
--
ALTER TABLE `student_classes`
  ADD CONSTRAINT `class` FOREIGN KEY (`class_id`) REFERENCES `classes` (`class_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `student` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

-- Create a user named mgs_user
CREATE USER IF NOT EXISTS mgs_user@localhost
IDENTIFIED BY 'pa55word';

-- Grant privileges to that user
GRANT SELECT, INSERT, UPDATE, DELETE
ON mgs.*
TO mgs_user@localhost;