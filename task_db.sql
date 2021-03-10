-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Мар 29 2019 г., 08:55
-- Версия сервера: 5.5.25
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `task_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `c`
--

CREATE TABLE IF NOT EXISTS `c` (
  `CNum` int(11) NOT NULL,
  `CName` varchar(50) NOT NULL,
  `City` varchar(50) NOT NULL,
  `Rating` int(11) NOT NULL,
  `SNum` int(11) NOT NULL,
  PRIMARY KEY (`CNum`),
  KEY `SNum` (`SNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `c`
--

INSERT INTO `c` (`CNum`, `CName`, `City`, `Rating`, `SNum`) VALUES
(201, 'Наталья', 'Харьков', 100, 101),
(202, 'Георгий', 'Осло', 200, 108),
(203, 'Роман', 'Париж', 150, 111),
(204, 'Роман', 'Харьков', 200, 102),
(206, 'Михаил', 'Киев', 250, 101),
(207, 'Клим', 'Харьков', 200, 103),
(208, 'Александр', 'Рим', 300, 103),
(211, 'Петр', 'Киев', 300, 101),
(212, 'Иван', 'Харьков', 200, 109),
(222, 'Name1', 'City1', 100, 101),
(223, 'Name2', 'City2', 100500, 101);

-- --------------------------------------------------------

--
-- Структура таблицы `o`
--

CREATE TABLE IF NOT EXISTS `o` (
  `ONum` int(11) NOT NULL,
  `ODate` date NOT NULL,
  `CNum` int(11) NOT NULL,
  `Summa` float NOT NULL,
  PRIMARY KEY (`ONum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `o`
--

INSERT INTO `o` (`ONum`, `ODate`, `CNum`, `Summa`) VALUES
(501, '2011-03-03', 201, 300),
(502, '2011-03-03', 206, 1200),
(503, '2011-03-03', 207, 25.5),
(504, '2012-03-03', 204, 550),
(505, '2012-03-03', 203, 56.5),
(506, '2014-03-03', 202, 600),
(507, '2014-03-03', 201, 3500),
(508, '2014-03-03', 207, 23.5),
(509, '2014-03-03', 207, 24),
(510, '2015-03-03', 204, 68.25),
(511, '2015-03-03', 212, 995);

-- --------------------------------------------------------

--
-- Структура таблицы `s`
--

CREATE TABLE IF NOT EXISTS `s` (
  `SNum` int(11) NOT NULL,
  `SName` varchar(50) NOT NULL,
  `City` varchar(50) NOT NULL,
  `Age` int(11) NOT NULL,
  `Comm` double NOT NULL,
  PRIMARY KEY (`SNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `s`
--

INSERT INTO `s` (`SNum`, `SName`, `City`, `Age`, `Comm`) VALUES
(101, 'Петр', 'Харьков', 28, 0.15),
(102, 'Александр', 'Киев', 24, 0.13),
(103, 'Андрей', 'Киев', 25, 0.1),
(104, 'Михаил', 'Харьков', 20, 0.11),
(107, 'Роман', 'Москва', 25, 0.15),
(108, 'Михаил', 'Харьков', 22, 0.14),
(109, 'Александр', 'Бабаи', 20, 0.14),
(111, 'Сергей', 'Киев', 20, 0.1),
(112, 'Андрей', 'Минск', 25, 0.11);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
