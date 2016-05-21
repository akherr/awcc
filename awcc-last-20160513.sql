-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 13, 2016 at 02:23 PM
-- Server version: 5.5.42-37.1
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dlapluma_awcc`
--
CREATE DATABASE IF NOT EXISTS `dlapluma_awcc` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `dlapluma_awcc`;

-- --------------------------------------------------------

--
-- Table structure for table `Admin-TESTINGtable`
--

CREATE TABLE IF NOT EXISTS `Admin-TESTINGtable` (
  `id` int(11) unsigned NOT NULL,
  `username` varchar(50) NOT NULL DEFAULT '',
  `UpdateTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Group_Types`
--

CREATE TABLE IF NOT EXISTS `Group_Types` (
  `GroupTypeID` int(11) NOT NULL,
  `Name` varchar(150) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Group_Types`
--

INSERT INTO `Group_Types` (`GroupTypeID`, `Name`) VALUES
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
(11, 'Consultan'),
(12, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `Notes`
--

CREATE TABLE IF NOT EXISTS `Notes` (
  `NoteID` int(11) NOT NULL,
  `ProgramRequestID` int(11) DEFAULT NULL,
  `Content` varchar(4000) DEFAULT NULL,
  `TimeEntered` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Program_Requests`
--

CREATE TABLE IF NOT EXISTS `Program_Requests` (
  `ProgramRequestID` int(11) NOT NULL,
  `ProgramTypeID` int(11) DEFAULT NULL,
  `GroupTypeID` int(11) DEFAULT NULL,
  `AssignedUserID` int(11) DEFAULT NULL,
  `StatusTypeID` int(11) DEFAULT NULL,
  `FirstName` varchar(128) DEFAULT NULL,
  `LastName` varchar(128) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `Email` varchar(254) DEFAULT NULL,
  `Company` varchar(254) DEFAULT NULL,
  `Role` varchar(128) DEFAULT NULL,
  `ProposedLocation` varchar(254) DEFAULT NULL,
  `ProposedDate` varchar(128) DEFAULT NULL,
  `NumberParticipants` varchar(254) DEFAULT NULL,
  `EstimatedCost` varchar(254) DEFAULT NULL,
  `ClientMessage` varchar(10000) DEFAULT NULL,
  `UpdateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CreatedDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Program_Requests`
--

INSERT INTO `Program_Requests` (`ProgramRequestID`, `ProgramTypeID`, `GroupTypeID`, `AssignedUserID`, `StatusTypeID`, `FirstName`, `LastName`, `Phone`, `Email`, `Company`, `Role`, `ProposedLocation`, `ProposedDate`, `NumberParticipants`, `EstimatedCost`, `ClientMessage`, `UpdateTime`, `CreatedDate`) VALUES
(1, NULL, NULL, NULL, NULL, 'Elvis', 'Presley', '404-777-1234', 'elvis@washere.com', 'The Big Music Machine', 'Lead singer', NULL, NULL, NULL, NULL, 'I''d like an event to kick off my tour next year. I''ve got a new band, new roadies, and my old management team. We need to get acquainted, and we have to come up with some plans and best practices for the tour. Best time: sometime this summer, depending on everyone''s schedules. Could we do this in one or two days?', '2016-05-03 16:00:55', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `Program_Types`
--

CREATE TABLE IF NOT EXISTS `Program_Types` (
  `ProgramTypeID` int(11) NOT NULL,
  `Name` varchar(150) DEFAULT NULL,
  `Description` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Program_Types`
--

INSERT INTO `Program_Types` (`ProgramTypeID`, `Name`, `Description`) VALUES
(1, 'Ropes Course', 'Scaling walls, doing knots, just rope things'),
(2, 'Zip Lines', '500ft zip lines, in two rows, 100ft off the ground'),
(3, 'Human Pyramid', 'Human pyramid wall, max bottom row of 6');

--
-- Table structure for table `Status_Types`
--

CREATE TABLE IF NOT EXISTS `Status_Types` (
  `StatusTypeID` int(11) NOT NULL,
  `Name` varchar(150) DEFAULT NULL,
  `Description` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Status_Types`
--

INSERT INTO `Status_Types` (`StatusTypeID`, `Name`, `Description`) VALUES
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
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_ID` int(11) NOT NULL,
  `username` varchar(16) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(100) NOT NULL DEFAULT '',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_ID`, `username`, `email`, `password`, `create_time`) VALUES
(1, 'jenhal', 'jenniferhalverson@adventureworks.com', 'dgwslwlo', '2016-03-17 22:28:18'),
(2, 'bdavis', 'brian@adventureworks.com', 'dgwslwlo', '2016-03-17 22:29:41'),
(3, 'dfeather', 'danfeather@adventureworks.com', 'dgwslwlo', '2016-03-18 16:43:44'),
(4, 'dannyboy', 'dannymacfeather@gmail.com', 'dgwslwlo', '2016-03-18 16:46:04'),
(5, 'bogusss', 'goodluck@no.com', 'xdxdxdx', '2016-04-08 18:08:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Admin-TESTINGtable`
--
ALTER TABLE `Admin-TESTINGtable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Group_Types`
--
ALTER TABLE `Group_Types`
  ADD PRIMARY KEY (`GroupTypeID`);

--
-- Indexes for table `Notes`
--
ALTER TABLE `Notes`
  ADD PRIMARY KEY (`NoteID`), ADD KEY `fk_80FAB6EE-1871-49E8-A140-52FC0A36548E` (`ProgramRequestID`);

--
-- Indexes for table `Program_Requests`
--
ALTER TABLE `Program_Requests`
  ADD PRIMARY KEY (`ProgramRequestID`), ADD KEY `fk_38BC89BB-2A94-4633-94F9-110911028F7A` (`ProgramTypeID`), ADD KEY `fk_3AC84605-658F-4540-8221-7B27587A6E49` (`GroupTypeID`), ADD KEY `fk_76F2F2E3-6DEB-4909-8633-DAADCF48A9F0` (`StatusTypeID`);

--
-- Indexes for table `Program_Types`
--
ALTER TABLE `Program_Types`
  ADD PRIMARY KEY (`ProgramTypeID`);

--
-- Indexes for table `Status_Types`
--
ALTER TABLE `Status_Types`
  ADD PRIMARY KEY (`StatusTypeID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_ID`), ADD UNIQUE KEY `username_UNIQUE` (`username`), ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Admin-TESTINGtable`
--
ALTER TABLE `Admin-TESTINGtable`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Group_Types`
--
ALTER TABLE `Group_Types`
  MODIFY `GroupTypeID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `Notes`
--
ALTER TABLE `Notes`
  MODIFY `NoteID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Program_Requests`
--
ALTER TABLE `Program_Requests`
  MODIFY `ProgramRequestID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Program_Types`
--
ALTER TABLE `Program_Types`
  MODIFY `ProgramTypeID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Status_Types`
--
ALTER TABLE `Status_Types`
  MODIFY `StatusTypeID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `Notes`
--
ALTER TABLE `Notes`
ADD CONSTRAINT `fk_80FAB6EE-1871-49E8-A140-52FC0A36548E` FOREIGN KEY (`ProgramRequestID`) REFERENCES `Program_Requests` (`ProgramRequestID`);

--
-- Constraints for table `Program_Requests`
--
ALTER TABLE `Program_Requests`
ADD CONSTRAINT `fk_38BC89BB-2A94-4633-94F9-110911028F7A` FOREIGN KEY (`ProgramTypeID`) REFERENCES `Program_Types` (`ProgramTypeID`),
ADD CONSTRAINT `fk_3AC84605-658F-4540-8221-7B27587A6E49` FOREIGN KEY (`GroupTypeID`) REFERENCES `Group_Types` (`GroupTypeID`),
ADD CONSTRAINT `fk_76F2F2E3-6DEB-4909-8633-DAADCF48A9F0` FOREIGN KEY (`StatusTypeID`) REFERENCES `Status_Types` (`StatusTypeID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
