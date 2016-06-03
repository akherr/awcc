-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Jun 01, 2016 at 09:45 PM
-- Server version: 5.5.42
-- PHP Version: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `dlapluma_awcc`
--

-- --------------------------------------------------------

--
-- Table structure for table `group_types`
--

CREATE TABLE `Group_Types` (
  `group_type_id` int(11) unsigned NOT NULL,
  `name` varchar(150) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `group_types`
--

INSERT INTO `Group_Types` (`group_type_id`, `name`) VALUES
(1, 'Corporate'),
(2, 'School (not univ.)'),
(3, 'University'),
(4, 'Student group'),
(5, 'Sports team'),
(6, 'Non-profit'),
(7, 'Church'),
(8, 'Government'),
(9, 'Trade organization'),
(10, 'Event planner'),
(11, 'Consultant'),
(12, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `Notes` (
  `note_id` int(11) unsigned NOT NULL,
  `note_author` int(11) unsigned NOT NULL,
  `program_request_id` int(11) unsigned DEFAULT NULL,
  `note_content` varchar(4000) NOT NULL,
  `time_noted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `program_requests`
--

CREATE TABLE `Program_Requests` (
  `program_request_id` int(11) unsigned NOT NULL,
  `program_type_id` int(11) unsigned DEFAULT NULL,
  `group_type_id` int(11) unsigned DEFAULT NULL,
  `assigned_user_id` int(11) unsigned DEFAULT NULL,
  `status_type_id` int(11) unsigned DEFAULT NULL,
  `first_name` varchar(128) DEFAULT NULL,
  `last_name` varchar(128) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `company` varchar(254) DEFAULT NULL,
  `role` varchar(128) DEFAULT NULL,
  `proposed_location` varchar(254) DEFAULT NULL,
  `proposed_date` varchar(128) DEFAULT NULL,
  `number_participants` varchar(254) DEFAULT NULL,
  `estimated_cost` varchar(254) DEFAULT NULL,
  `client_message` varchar(10000) DEFAULT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `program_requests`
--

INSERT INTO `Program_Requests` (`program_request_id`, `program_type_id`, `group_type_id`, `assigned_user_id`, `status_type_id`, `first_name`, `last_name`, `phone`, `email`, `company`, `role`, `proposed_location`, `proposed_date`, `number_participants`, `estimated_cost`, `client_message`, `updated`, `created`) VALUES
(1, NULL, NULL, NULL, NULL, 'Elvis', 'Presley', '404-777-1234', 'elvis@washere.com', 'The Big Music Machine', 'Lead singer', NULL, NULL, NULL, NULL, 'I''d like an event to kick off my tour next year. I''ve got a new band, new roadies, and my old management team. We need to get acquainted, and we have to come up with some plans and best practices for the tour. Best time: sometime this summer, depending on everyone''s schedules. Could we do this in one or two days?', '2016-05-03 16:00:55', '0000-00-00 00:00:00'),
(2, NULL, NULL, NULL, NULL, 'Bobby', 'Billy', '555-123-4567', 'me@you.com', 'pr_company A', 'Head Honcho', NULL, NULL, NULL, NULL, 'I need teamwork, and I need it now!', '2016-05-03 16:00:55', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `program_req_status`
--

CREATE TABLE `Program_Req_Status` (
  `program_req_status_id` int(11) unsigned NOT NULL,
  `program_req_id` int(11) unsigned DEFAULT NULL,
  `status_type_id` int(11) unsigned DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `user_id` int(11) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `program_types`
--

CREATE TABLE `Program_Types` (
  `program_type_id` int(11) unsigned NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `program_types`
--

INSERT INTO `Program_Types` (`program_type_id`, `name`, `description`) VALUES
(1, 'Ropes Course', 'Scaling walls, doing knots, just rope things'),
(2, 'Zip Lines', '500ft zip lines, in two rows, 100ft off the ground'),
(3, 'Human Pyramid', 'Human pyramid wall, max bottom row of 6');

-- --------------------------------------------------------

--
-- Table structure for table `status_types`
--

CREATE TABLE `Status_Types` (
  `status_type_id` int(11) unsigned NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `status_types`
--

INSERT INTO `Status_Types` (`status_type_id`, `name`, `description`) VALUES
(1, 'NEW', 'as entered (by staff or webform)'),
(2, 'WARM', 'simply a NEW that was not rejected or deleted (due to inappropriateness to workflow)'),
(3, 'UNDERWAY', 'means there''s been an interview and packet was sent'),
(4, 'CONFIRMED', 'contract and deposit received'),
(5, 'BUILDING', 'job NAMED and ON CALENDAR'),
(6, 'DELIVERED', 'program has been delivered'),
(7, 'COMPLETED', 'all follow-up (to client and office) has been accomplished'),
(8, 'TRANSFER', 'move record to (???) for future contact'),
(9, 'PURGE', 'record (and contact info) can be deleted');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `Users` (
  `user_id` int(11) unsigned NOT NULL,
  `username` varchar(16) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(100) NOT NULL DEFAULT '',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `Users` (`user_id`, `username`, `email`, `password`, `create_time`) VALUES
(1, 'jenhal', 'jenniferhalverson@adventureworks.com', 'dgwslwlo', '2016-03-17 22:28:18'),
(2, 'bdavis', 'brian@adventureworks.com', 'dgwslwlo', '2016-03-17 22:29:41'),
(3, 'dfeather', 'danfeather@adventureworks.com', 'dgwslwlo', '2016-03-18 16:43:44'),
(4, 'dannyboy', 'dannymacfeather@gmail.com', 'dgwslwlo', '2016-03-18 16:46:04'),
(5, 'bogusss', 'goodluck@no.com', 'xdxdxdx', '2016-04-08 18:08:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `group_types`
--
ALTER TABLE `Group_Types`
  ADD PRIMARY KEY (`group_type_id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `Notes`
  ADD PRIMARY KEY (`note_id`),
  ADD KEY `fk_80FAB6EE-1871-49E8-A140-52FC0A36548E` (`program_request_id`),
  ADD KEY `note_content` (`note_content`(255)),
  ADD KEY `note_author` (`note_author`);

--
-- Indexes for table `program_requests`
--
ALTER TABLE `Program_Requests`
  ADD PRIMARY KEY (`program_request_id`),
  ADD KEY `fk_38BC89BB-2A94-4633-94F9-110911028F7A` (`program_type_id`),
  ADD KEY `fk_3AC84605-658F-4540-8221-7B27587A6E49` (`group_type_id`),
  ADD KEY `assigned_user_id` (`assigned_user_id`);

--
-- Indexes for table `program_req_status`
--
ALTER TABLE `Program_Req_Status`
  ADD KEY `program_req_id` (`program_req_id`),
  ADD KEY `status_type_id` (`status_type_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `program_types`
--
ALTER TABLE `Program_Types`
  ADD PRIMARY KEY (`program_type_id`);

--
-- Indexes for table `status_types`
--
ALTER TABLE `Status_Types`
  ADD PRIMARY KEY (`status_type_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username_UNIQUE` (`username`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `group_types`
--
ALTER TABLE `Group_Types`
  MODIFY `group_type_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `Notes`
  MODIFY `note_id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `program_requests`
--
ALTER TABLE `Program_Requests`
  MODIFY `program_request_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `program_types`
--
ALTER TABLE `Program_Types`
  MODIFY `program_type_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `status_types`
--
ALTER TABLE `Status_Types`
  MODIFY `status_type_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `Users`
  MODIFY `user_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `notes`
--
ALTER TABLE `Notes`
  ADD CONSTRAINT `notes_ibfk_1` FOREIGN KEY (`note_author`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `fk_80FAB6EE-1871-49E8-A140-52FC0A36548E` FOREIGN KEY (`program_request_id`) REFERENCES `program_requests` (`program_request_id`);

--
-- Constraints for table `program_requests`
--
ALTER TABLE `Program_Requests`
  ADD CONSTRAINT `program_requests_ibfk_1` FOREIGN KEY (`assigned_user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `fk_38BC89BB-2A94-4633-94F9-110911028F7A` FOREIGN KEY (`program_type_id`) REFERENCES `program_types` (`program_type_id`),
  ADD CONSTRAINT `fk_3AC84605-658F-4540-8221-7B27587A6E49` FOREIGN KEY (`group_type_id`) REFERENCES `group_types` (`group_type_id`);

--
-- Constraints for table `program_req_status`
--
ALTER TABLE `Program_Req_Status`
  ADD CONSTRAINT `program_req_status_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `program_req_status_ibfk_1` FOREIGN KEY (`program_req_id`) REFERENCES `program_requests` (`program_request_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `program_req_status_ibfk_2` FOREIGN KEY (`status_type_id`) REFERENCES `status_types` (`status_type_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
