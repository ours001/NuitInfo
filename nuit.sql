-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 06, 2012 at 08:20 PM
-- Server version: 5.5.20
-- PHP Version: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `nuit`
--

-- --------------------------------------------------------

--
-- Table structure for table `departement`
--

CREATE TABLE IF NOT EXISTS `departement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` text NOT NULL,
  `pathSVG` text NOT NULL,
  `lieux` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `departement`
--

INSERT INTO `departement` (`id`, `nom`, `pathSVG`, `lieux`) VALUES
(1, 'HauteGaronne', 'M 212.1875,196.875 L 212.5625,197.75 L 206.90625,199.3125 L 205.5625,201.28125 L 203.1875,199.71875 L 204.375,203.625 L 202.21875,203.625 L 198.3125,200.875 L 196.375,204.78125 L 197.34375,205.96875 L 197.34375,207.125 L 195.375,209.6875 L 195.59375,213.96875 L 192.46875,217.6875 L 190.25,225.6875 L 190.5,225.6875 L 191.28125,228.8125 L 195,229.59375 L 195,231.9375 L 199.6875,233.3125 L 199.6875,237.03125 L 199.5,239.375 L 205.34375,239.375 L 210.4375,238.1875 L 210.03125,236.03125 L 211.59375,235.0625 L 213.15625,237.21875 L 214.53125,237.8125 L 215.6875,242.5 L 219.03125,246 L 219.40625,248.75 L 222.4375,251.75 L 224.15625,251.59375 L 226.28125,249.625 L 227.8125,241.65625 L 228.78125,238.84375 L 229.5,235.34375 L 232.59375,234.21875 L 234.6875,234.625 L 236.09375,235.90625 L 237.625,233.375 L 239.03125,232.09375 L 239.03125,230.5625 L 240.84375,230.4375 L 241.28125,228.59375 L 239.71875,226.5 L 239.96875,225.625 L 238.875,224.6875 L 235.9375,220.34375 L 232.15625,220.34375 L 231.03125,218.65625 L 231.03125,211.625 L 229.5,207.5625 L 229.21875,202.53125 L 227.25,202.375 L 225,200.6875 L 224.4375,200.6875 L 222.46875,202.09375 L 221.21875,201.25 L 220.9375,199.3125 L 222.34375,198.59375 L 222.46875,197.90625 L 221.65625,197.1875 L 212.1875,196.875 z ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `domaine`
--

CREATE TABLE IF NOT EXISTS `domaine` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `lieu`
--

CREATE TABLE IF NOT EXISTS `lieu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` text NOT NULL,
  `description` text NOT NULL,
  `media` text NOT NULL,
  `lattitude` text NOT NULL,
  `longitude` text NOT NULL,
  `domaine` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `lieu`
--

INSERT INTO `lieu` (`id`, `nom`, `description`, `media`, `lattitude`, `longitude`, `domaine`) VALUES
(1, 'lieuTest', 'this is a test', '', '0', '0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE IF NOT EXISTS `region` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` text NOT NULL,
  `pathSVG` text NOT NULL,
  `departements` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`id`, `nom`, `pathSVG`, `departements`) VALUES
(1, 'MidiP', '', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
