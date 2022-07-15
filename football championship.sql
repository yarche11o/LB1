-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июл 11 2022 г., 19:59
-- Версия сервера: 10.4.21-MariaDB
-- Версия PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `football championship`
--
CREATE DATABASE IF NOT EXISTS `football championship` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `football championship`;

-- --------------------------------------------------------

--
-- Структура таблицы `game`
--

CREATE TABLE `game` (
  `ID_Game` int(4) NOT NULL,
  `date` date NOT NULL,
  `place` varchar(30) NOT NULL,
  `score` varchar(30) NOT NULL,
  `FID_Team1` int(4) NOT NULL,
  `FID_Team2` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `game`
--

INSERT INTO `game` (`ID_Game`, `date`, `place`, `score`, `FID_Team1`, `FID_Team2`) VALUES
(1, '2022-01-23', 'Milan', '0-0', 1, 2),
(2, '2022-04-23', 'Munich', '3-1', 5, 6),
(3, '2022-03-20', 'Paris', '3-0', 4, 3),
(4, '2022-03-20', 'Madrid', '1-0', 7, 8),
(5, '2022-05-11', 'Turin', '2-4', 2, 9);

-- --------------------------------------------------------

--
-- Структура таблицы `player`
--

CREATE TABLE `player` (
  `ID_Player` int(4) NOT NULL,
  `name` text NOT NULL,
  `FID_Team` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `player`
--

INSERT INTO `player` (`ID_Player`, `name`, `FID_Team`) VALUES
(1, 'Vinícius Junior', 7),
(2, 'Toni Kroos', 7),
(3, 'Karim Benzema', 7),
(4, 'Luis Suarez', 8),
(5, 'Jan Oblak', 8),
(6, 'Antoine Griezmann', 8),
(7, 'Joao Felix', 8),
(8, 'Lionel Messi', 4),
(9, 'Neymar Junior', 4),
(10, 'Kylian Mbappe', 4),
(11, 'Djibril Sidibe', 3),
(12, 'Vanderson de Oliveira Campos', 3),
(13, 'Zlatan Ibrahimovic', 1),
(14, 'Olivier Giroud', 1),
(15, 'Alessio Romagnoli', 1),
(16, 'Aaron Ramsey', 2),
(17, 'Paulo Dybala', 2),
(18, 'Leonardo Bonucci', 2),
(19, 'Federico Chiesa', 2),
(20, 'Adrien Rabiot', 2),
(21, 'Arturo Vidal', 9),
(22, 'Alexis Sanchez', 9),
(23, 'Robert Lewandowski', 5),
(24, 'Sadio Mane', 5),
(25, 'Thomas Muller', 5),
(26, 'Thorgan Hazard', 6),
(27, 'Erling Braut Haaland', 6),
(28, 'Donyell Malen', 6);

-- --------------------------------------------------------

--
-- Структура таблицы `team`
--

CREATE TABLE `team` (
  `ID_TEAM` int(10) NOT NULL,
  `name` text NOT NULL,
  `league` text NOT NULL,
  `coach` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `team`
--

INSERT INTO `team` (`ID_TEAM`, `name`, `league`, `coach`) VALUES
(1, 'Milan', 'Seria A', 'Stefano Pioli'),
(2, 'Juventus', 'Seria A', 'Massimiliano Allegri'),
(3, 'Monaco', 'Liga 1', 'Philippe Clement'),
(4, 'PSG', 'Liga 1', 'Mauricio Pochettino'),
(5, 'Bayern Munich', 'Bundesliga', 'Julian Nagelsmann'),
(6, 'Borussia Dortmund', 'Bundesliga', 'Edin Terzic'),
(7, 'Real Madrid', 'LaLiga', 'Carlos Ancelotti'),
(8, 'Atletico Madrid', 'LaLiga', 'Diego Simeone'),
(9, 'Inter', 'Seria A', 'Simone Inzaghi');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`ID_Game`);

--
-- Индексы таблицы `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`ID_Player`);

--
-- Индексы таблицы `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`ID_TEAM`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
