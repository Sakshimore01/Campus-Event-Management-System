SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inhouse`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `eventslist` (
  `Sr.No.` int(100) NOT NULL AUTO_INCREMENT,
  `eventName` varchar(100) NOT NULL,
  `eventDate` date DEFAULT NULL,
  `eventTime` varchar(10) DEFAULT NULL,
  `eventVenue` varchar(50) DEFAULT NULL,
  `eventCoordinator` varchar(100) DEFAULT NULL,
  `budget` bigint(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Inserting data for table `events`
--

INSERT INTO `eventslist` (`Sr. NO. `,`eventName`, `eventDate`, `eventTime`, `eventVenue`, `eventCoordinator`, `budget`) VALUES
(1, 'Ecell Seminar', 2024-04-10, 03:00 AM, 'Seminar Hall', 'Ms. Ruchika Kalekar',5000),
(2, 'Etamax', 2024-03-15, 10:00 AM, 'Lawn', 'Mr. Yogesh Kurale',25000),
(3, 'Ganeshotsav', 2024-09-19, 02:00 PM, 'FCRIT Campus', 'Ms. Purva Kadam',15000),
(4, 'Navratri', 2024-11-20, 05:00 PM, 'Lawn', 'Mr. Pravin More',20000),
-- --------------------------------------------------------


--
-- Table structure for table `registered`
--

CREATE TABLE `registration` (
  `Name` varchar(100) NOT NULL,
  `Roll No.` int(50) DEFAULT NULL,
  `Branch` varchar(50) DEFAULT NULL,
  `Password` int(20) DEFAULT NULL,
  `Semester` enum('Sem 2','Sem 4','Sem 6','Sem 8') DEFAULT NULL,
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Inserting data for table `registration`
--

INSERT INTO `registration` (`Name`,`Roll No.`, `Branch`, `Password`, `Semester`) VALUES
('Sakshi Santosh More', 5022137, 'IT', 5022137, 'Sem 4'),
('Priyanka Vishwas Barman', 5022134, 'Comps', 5022134, 'Sem 4');


--
-- Table structure for table `registered`
--

CREATE TABLE `login` (
  `Username` int(50) NOT NULL,
  `Password` int(50) DEFAULT NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Inserting data for table `registration`
--

INSERT INTO `login` (`Username`,`Password`) VALUES
(5022137, 5022137),
(5022134, 5022134);

--
-- Indexes for table `eventslist`
--
ALTER TABLE `eventslist`
  ADD PRIMARY KEY (`Sr.No.`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`RollNo.`);


--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`Username`);

--
-- AUTO_INCREMENT for table `eventslist`
--
ALTER TABLE `eventslist`
  MODIFY `Sr.No.` int(100) NOT NULL AUTO_INCREMENT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;