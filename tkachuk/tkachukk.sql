-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Дек 14 2021 г., 13:03
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
-- База данных: `tkachukk`
--

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `text` text NOT NULL,
  `like` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `text`, `like`) VALUES
(4, 'dgfgjgfj', 0),
(6, 'fffff', 0),
(7, 'іфірф', 0),
(8, 'fghfhjg', 0),
(9, 'hi', 0),
(10, 'прпавіфвапваіаіаві', 0),
(11, 'папрп', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `foto`
--

CREATE TABLE `foto` (
  `id` int(11) NOT NULL,
  `post` text NOT NULL,
  `comments` varchar(50) NOT NULL,
  `likes` int(11) NOT NULL,
  `time` date NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `foto`
--

INSERT INTO `foto` (`id`, `post`, `comments`, `likes`, `time`, `name`) VALUES
(27, 'fgfgfgf', '', 0, '0000-00-00', ''),
(28, 'hgtjhy', '', 0, '0000-00-00', ''),
(29, 'hgtjhy', '', 0, '0000-00-00', ''),
(30, 'hgtjhy', '', 0, '0000-00-00', ''),
(31, 'Sasha', '', 0, '0000-00-00', ''),
(32, 'Sasha', '', 0, '0000-00-00', ''),
(33, 'Sasha', '', 0, '0000-00-00', ''),
(34, 'Sasha', '', 0, '0000-00-00', ''),
(41, 'hi', '', 0, '0000-00-00', '');

-- --------------------------------------------------------

--
-- Структура таблицы `igtv`
--

CREATE TABLE `igtv` (
  `id` int(11) NOT NULL,
  `time` date DEFAULT NULL,
  `comment` varchar(40) DEFAULT NULL,
  `number_of_views` int(11) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `igtv`
--

INSERT INTO `igtv` (`id`, `time`, `comment`, `number_of_views`, `name`) VALUES
(1, '0000-00-00', '', 0, ''),
(2, '0000-00-00', '', 0, ''),
(3, '0000-00-00', '', 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `instagram`
--

CREATE TABLE `instagram` (
  `user` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `stories`
--

CREATE TABLE `stories` (
  `id` int(11) NOT NULL,
  `time` date NOT NULL,
  `reactions` int(11) NOT NULL,
  `number_of_views` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `password` int(11) NOT NULL,
  `foto` int(11) NOT NULL,
  `login` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `igtv`
--
ALTER TABLE `igtv`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `instagram`
--
ALTER TABLE `instagram`
  ADD PRIMARY KEY (`user`);

--
-- Индексы таблицы `stories`
--
ALTER TABLE `stories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `foto`
--
ALTER TABLE `foto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT для таблицы `igtv`
--
ALTER TABLE `igtv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `stories`
--
ALTER TABLE `stories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
