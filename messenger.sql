-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Мар 01 2021 г., 20:49
-- Версия сервера: 10.4.17-MariaDB
-- Версия PHP: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `messenger`
--

-- --------------------------------------------------------

--
-- Структура таблицы `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `message` text NOT NULL,
  `from` varchar(128) NOT NULL,
  `chat_id` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `chat`
--

INSERT INTO `chat` (`id`, `message`, `from`, `chat_id`, `created`) VALUES
(1, 'adawdawdawda', 'awda', 0, '2021-02-08 14:30:37'),
(2, 'fdfs', 'asfdf', 0, '2021-02-09 11:46:13'),
(3, 'asfdf', 'afdf', 0, '2021-02-09 11:47:24'),
(4, 'asfdf', 'asfsf', 0, '2021-02-09 11:48:49');

-- --------------------------------------------------------

--
-- Структура таблицы `chats`
--

CREATE TABLE `chats` (
  `id` int(11) NOT NULL,
  `list_chat_id` int(11) NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `text` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `chats`
--

INSERT INTO `chats` (`id`, `list_chat_id`, `from_user_id`, `text`, `created`) VALUES
(1, 1, 1, 'gfdgdsf', '2021-03-01 19:42:48'),
(2, 1, 1, 'gfdgdsf', '2021-03-01 19:42:48');

-- --------------------------------------------------------

--
-- Структура таблицы `list_chat`
--

CREATE TABLE `list_chat` (
  `id` int(11) NOT NULL,
  `from_users_id` int(11) NOT NULL,
  `whom_users_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `list_chat`
--

INSERT INTO `list_chat` (`id`, `from_users_id`, `whom_users_id`) VALUES
(1, 1, 2),
(2, 1, 3),
(3, 2, 3),
(4, 1, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `phone_number` char(13) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `mail`, `phone_number`, `password`) VALUES
(1, 'aaaaa', 'aaaaa', 'aaaaaaaaa', 'aaaaaaaaa', '63b8097d0adcae1c6151a37cf6d8fb56'),
(2, 'asfaa', 'asfsf', 'qwertyuio', 'safsaf', '63b8097d0adcae1c6151a37cf6d8fb56'),
(3, 'lloklaf', 'aaaaaaaaa', 'afsfsxcxc', '123456789', '63b8097d0adcae1c6151a37cf6d8fb56'),
(4, 'asdfg', 'asdf', '124@gmail.com', '123456789', '123456789');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `Id` int(11) UNSIGNED NOT NULL,
  `login` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `pass` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`Id`, `login`, `name`, `pass`) VALUES
(1, 'affasd', 'safasf', 'fbe99f2da144e2e5a3f02c442ca7b2b2'),
(2, '123456', '123456', 'e758e90bfd4d04e54f8acb5c0892c389'),
(3, 'fdgdfg', 'fgfdg', '22d41e2399faef68e04463e409c0a614'),
(4, 'fdfgfdg', 'gfdgdfg', 'b6007683c22282b475632e8e27404365');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `list_chat_id` (`list_chat_id`),
  ADD KEY `from_user_id` (`from_user_id`);

--
-- Индексы таблицы `list_chat`
--
ALTER TABLE `list_chat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `from_users_id` (`from_users_id`),
  ADD KEY `whom_users_id` (`whom_users_id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `Id` (`Id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `chats`
--
ALTER TABLE `chats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `list_chat`
--
ALTER TABLE `list_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `Id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `chats`
--
ALTER TABLE `chats`
  ADD CONSTRAINT `chats_ibfk_1` FOREIGN KEY (`list_chat_id`) REFERENCES `list_chat` (`id`),
  ADD CONSTRAINT `chats_ibfk_2` FOREIGN KEY (`from_user_id`) REFERENCES `user` (`id`);

--
-- Ограничения внешнего ключа таблицы `list_chat`
--
ALTER TABLE `list_chat`
  ADD CONSTRAINT `list_chat_ibfk_1` FOREIGN KEY (`from_users_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `list_chat_ibfk_2` FOREIGN KEY (`whom_users_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
