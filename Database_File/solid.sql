-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Дек 12 2019 г., 17:34
-- Версия сервера: 10.4.8-MariaDB
-- Версия PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `solid`
--

-- --------------------------------------------------------

--
-- Структура таблицы `public_messages`
--

CREATE TABLE `public_messages` (
  `Msg_ID` int(11) NOT NULL,
  `Sender` tinytext NOT NULL,
  `Message` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `public_messages`
--

INSERT INTO `public_messages` (`Msg_ID`, `Sender`, `Message`, `date`) VALUES
(1, 'Viktor', 'Стасян тута', '2019-11-15 01:26:02'),
(2, 'Stas', 'да я тута чё надо', '2019-11-15 00:25:39'),
(3, 'Viktor', 'ничего', '2019-11-15 22:37:05'),
(4, 'Stas', 'Вот и поговорили', '2019-11-15 22:37:15'),
(5, 'Stas', '[Stas]►gf', '2019-12-10 14:54:39'),
(6, 'Stas', '[Stas]►	Игрок Кот сыграл в Spinking, в результате игры получил: Валюта, сумма полученного: 1.60\nAdams	Игрок Adams сыграл в Spinking, в результате игры получил: Бонусы, сумма полученного: 150\nbyl\'ba	Игрок byl\'ba сыграл в Spinking, в результате игры получил: Валюта, сумма полученного: 1.60\nShamukhanov1	Игрок Shamukhanov1 сыграл в Spinking, в результате игры получил: Вещи, сумма полученного: 1.55', '2019-12-10 15:16:53'),
(7, 'Stas', '[Stas]►k\n', '2019-12-10 15:35:56'),
(10, 'Viktor', '[Viktor]►g', '2019-12-11 15:31:13'),
(11, 'Viktor', '[Viktor]►h', '2019-12-11 15:31:15'),
(12, 'Viktor', '[Viktor]►hj', '2019-12-11 15:31:17'),
(13, 'Viktor', '[Viktor]►g', '2019-12-11 15:32:05'),
(14, 'Viktor', '[Viktor]►g', '2019-12-11 15:34:58'),
(15, 'Viktor', '[Viktor]►g', '2019-12-11 15:35:02'),
(16, 'Viktor', '[Viktor]►g', '2019-12-11 15:35:03'),
(17, 'Viktor', '[Viktor]►g', '2019-12-11 15:35:03'),
(18, 'Viktor', '[Viktor]►g', '2019-12-11 15:35:04'),
(19, 'Viktor', '[Viktor]►g', '2019-12-11 15:35:04'),
(20, 'Stas', '[Stas]►g', '2019-12-12 15:44:46'),
(21, 'Viktor', '[Viktor]►ggf', '2019-12-12 15:52:38'),
(22, 'Viktor', '[Viktor]►Nice work\n', '2019-12-12 16:04:13');

-- --------------------------------------------------------

--
-- Структура таблицы `users_online`
--

CREATE TABLE `users_online` (
  `ID` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `status` varchar(100) NOT NULL,
  `Time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users_online`
--

INSERT INTO `users_online` (`ID`, `first_name`, `last_name`, `status`, `Time`) VALUES
(1, 'Viktor', 'Borodulin', 'online', '2019-11-15 22:35:12'),
(2, 'Stas', 'Dyk', 'offline', '2019-11-15 10:38:35');

-- --------------------------------------------------------

--
-- Структура таблицы `users_table`
--

CREATE TABLE `users_table` (
  `Users_ID` int(11) NOT NULL,
  `user_fname` varchar(255) NOT NULL,
  `user_lname` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Profile_Picture` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users_table`
--

INSERT INTO `users_table` (`Users_ID`, `user_fname`, `user_lname`, `Password`, `Profile_Picture`, `date`) VALUES
(1, 'Viktor', 'Borodulin', '12344321a', 'Foto.jpg', '2019-11-15 01:24:56'),
(2, 'Stas', 'Dyk', '1234', 'arkham-knight-wallpapers-58745-6037494.jpg', '2019-11-15 10:14:17');

-- --------------------------------------------------------

--
-- Структура таблицы `viktor_stas`
--

CREATE TABLE `viktor_stas` (
  `ID` int(11) NOT NULL,
  `Messages` longtext NOT NULL,
  `Time` timestamp NOT NULL DEFAULT current_timestamp(),
  `Usernames` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `viktor_stas`
--

INSERT INTO `viktor_stas` (`ID`, `Messages`, `Time`, `Usernames`) VALUES
(1, 'дз', '2019-12-10 14:50:03', 'Viktor'),
(2, 'gg', '2019-12-10 17:11:16', 'Viktor'),
(4, 'hi german', '2019-12-12 15:52:49', 'Viktor');

-- --------------------------------------------------------

--
-- Структура таблицы `viktor_stas_uploads`
--

CREATE TABLE `viktor_stas_uploads` (
  `ID` int(11) NOT NULL,
  `File` varchar(100) NOT NULL,
  `Type` varchar(10) NOT NULL,
  `Size` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `viktor_viktor`
--

CREATE TABLE `viktor_viktor` (
  `ID` int(11) NOT NULL,
  `Messages` longtext NOT NULL,
  `Time` timestamp NOT NULL DEFAULT current_timestamp(),
  `Usernames` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `viktor_viktor_uploads`
--

CREATE TABLE `viktor_viktor_uploads` (
  `ID` int(11) NOT NULL,
  `File` varchar(100) NOT NULL,
  `Type` varchar(10) NOT NULL,
  `Size` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `viktor_стас`
--

CREATE TABLE `viktor_стас` (
  `ID` int(11) NOT NULL,
  `Messages` longtext NOT NULL,
  `Time` timestamp NOT NULL DEFAULT current_timestamp(),
  `Usernames` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `viktor_стас`
--

INSERT INTO `viktor_стас` (`ID`, `Messages`, `Time`, `Usernames`) VALUES
(1, 'ol', '2019-12-11 15:06:43', 'viktor'),
(2, 'ol', '2019-12-11 15:09:11', 'viktor');

-- --------------------------------------------------------

--
-- Структура таблицы `viktor_стас_uploads`
--

CREATE TABLE `viktor_стас_uploads` (
  `ID` int(11) NOT NULL,
  `File` varchar(100) NOT NULL,
  `Type` varchar(10) NOT NULL,
  `Size` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `public_messages`
--
ALTER TABLE `public_messages`
  ADD PRIMARY KEY (`Msg_ID`);

--
-- Индексы таблицы `users_online`
--
ALTER TABLE `users_online`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `users_table`
--
ALTER TABLE `users_table`
  ADD PRIMARY KEY (`Users_ID`);

--
-- Индексы таблицы `viktor_stas`
--
ALTER TABLE `viktor_stas`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `viktor_stas_uploads`
--
ALTER TABLE `viktor_stas_uploads`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `viktor_viktor`
--
ALTER TABLE `viktor_viktor`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `viktor_viktor_uploads`
--
ALTER TABLE `viktor_viktor_uploads`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `viktor_стас`
--
ALTER TABLE `viktor_стас`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `viktor_стас_uploads`
--
ALTER TABLE `viktor_стас_uploads`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `public_messages`
--
ALTER TABLE `public_messages`
  MODIFY `Msg_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `users_online`
--
ALTER TABLE `users_online`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `users_table`
--
ALTER TABLE `users_table`
  MODIFY `Users_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT для таблицы `viktor_stas`
--
ALTER TABLE `viktor_stas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `viktor_stas_uploads`
--
ALTER TABLE `viktor_stas_uploads`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `viktor_viktor`
--
ALTER TABLE `viktor_viktor`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `viktor_viktor_uploads`
--
ALTER TABLE `viktor_viktor_uploads`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `viktor_стас`
--
ALTER TABLE `viktor_стас`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `viktor_стас_uploads`
--
ALTER TABLE `viktor_стас_uploads`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
