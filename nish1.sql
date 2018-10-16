-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 16 2018 г., 23:17
-- Версия сервера: 5.6.37
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `nish1`
--

-- --------------------------------------------------------

--
-- Структура таблицы `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `passcode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `admin`
--

INSERT INTO `admin` (`id`, `username`, `passcode`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Структура таблицы `auditions`
--

CREATE TABLE `auditions` (
  `id` int(11) NOT NULL,
  `aud` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `auditions`
--

INSERT INTO `auditions` (`id`, `aud`) VALUES
(1, '15'),
(2, '16'),
(3, '17'),
(4, '18'),
(5, '19'),
(6, '20'),
(7, '21'),
(8, '22'),
(9, '23'),
(10, '24'),
(11, '25'),
(12, '26'),
(13, '27'),
(14, 'Спортзал');

-- --------------------------------------------------------

--
-- Структура таблицы `days`
--

CREATE TABLE `days` (
  `id` int(11) NOT NULL,
  `day` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `days`
--

INSERT INTO `days` (`id`, `day`) VALUES
(1, 'Monday'),
(2, 'Tuesday'),
(3, 'Wednesday'),
(4, 'Thursday'),
(5, 'Friday');

-- --------------------------------------------------------

--
-- Структура таблицы `klass`
--

CREATE TABLE `klass` (
  `id` int(11) NOT NULL,
  `klass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `klass`
--

INSERT INTO `klass` (`id`, `klass`) VALUES
(1, '7 A'),
(2, '7 B'),
(3, '7 C'),
(4, '8 A'),
(5, '8 B'),
(6, '8 C');

-- --------------------------------------------------------

--
-- Структура таблицы `lessons`
--

CREATE TABLE `lessons` (
  `id` int(11) NOT NULL,
  `number` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `lessons`
--

INSERT INTO `lessons` (`id`, `number`) VALUES
(1, '1'),
(2, '2'),
(3, '3'),
(4, '4'),
(5, '5'),
(6, '6'),
(7, '7'),
(8, '8'),
(9, '9'),
(10, '10');

-- --------------------------------------------------------

--
-- Структура таблицы `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `klass` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `passcode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `subjects`
--

INSERT INTO `subjects` (`id`, `subject`) VALUES
(1, 'Kazakh'),
(2, 'Math'),
(3, 'English'),
(4, 'Russian'),
(5, 'Art'),
(6, 'Self-knowledge'),
(7, 'Chemistry'),
(8, 'Kazakh history'),
(9, 'Physics'),
(10, 'Geography'),
(11, 'Computer science'),
(12, 'PE'),
(13, 'World history '),
(14, 'Biology');

-- --------------------------------------------------------

--
-- Структура таблицы `teachers`
--

CREATE TABLE `teachers` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `passcode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `teachers`
--

INSERT INTO `teachers` (`id`, `fullname`, `username`, `passcode`) VALUES
(1, 'Мурат Захаров', 'Мурат_Захаров', '1234'),
(2, 'Жанна Козлова', 'Жанна_Козлова', '1234'),
(3, 'Зарина Селезнева', 'Зарина_Селезнева', '1234'),
(4, 'Иннокентий Блинов', 'Иннокентий_Блинов', '1234'),
(5, 'Сара Галкина', 'Сара_Галкина', '1234'),
(6, 'Альбина Воронина', 'Альбина_Воронина', '1234'),
(7, 'Денис Сорокин', 'Денис_Сорокин', '1234'),
(8, 'Фаддей Озеров', 'Фаддей_Озеров', '1234'),
(9, 'Захар Ларионов', 'Захар_Ларионов', '1234'),
(10, 'Стелла Козлова', 'Стелла_Козлова', '1234');

-- --------------------------------------------------------

--
-- Структура таблицы `teachless`
--

CREATE TABLE `teachless` (
  `id` int(11) NOT NULL,
  `teach_id` int(11) NOT NULL,
  `subj_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `teachless`
--

INSERT INTO `teachless` (`id`, `teach_id`, `subj_name`) VALUES
(1, 1, 'Kazakh'),
(2, 5, 'Russian'),
(3, 1, 'English'),
(4, 3, 'Computer');

-- --------------------------------------------------------

--
-- Структура таблицы `timetable`
--

CREATE TABLE `timetable` (
  `id` int(11) NOT NULL,
  `day_id` int(11) NOT NULL,
  `num_id` int(11) NOT NULL,
  `tless_id` int(11) NOT NULL,
  `klass_id` int(11) NOT NULL,
  `aud_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `auditions`
--
ALTER TABLE `auditions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `days`
--
ALTER TABLE `days`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `klass`
--
ALTER TABLE `klass`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `klass` (`klass`);

--
-- Индексы таблицы `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `teachless`
--
ALTER TABLE `teachless`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subj_id` (`subj_name`),
  ADD KEY `teach_id` (`teach_id`);

--
-- Индексы таблицы `timetable`
--
ALTER TABLE `timetable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aud_id` (`aud_id`),
  ADD KEY `day_id` (`day_id`),
  ADD KEY `klass_id` (`klass_id`),
  ADD KEY `num_id` (`num_id`),
  ADD KEY `tless_id` (`tless_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `auditions`
--
ALTER TABLE `auditions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT для таблицы `days`
--
ALTER TABLE `days`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `klass`
--
ALTER TABLE `klass`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT для таблицы `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `teachless`
--
ALTER TABLE `teachless`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `timetable`
--
ALTER TABLE `timetable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`klass`) REFERENCES `klass` (`id`);

--
-- Ограничения внешнего ключа таблицы `teachless`
--
ALTER TABLE `teachless`
  ADD CONSTRAINT `teachless_ibfk_2` FOREIGN KEY (`teach_id`) REFERENCES `teachers` (`id`);

--
-- Ограничения внешнего ключа таблицы `timetable`
--
ALTER TABLE `timetable`
  ADD CONSTRAINT `timetable_ibfk_1` FOREIGN KEY (`aud_id`) REFERENCES `auditions` (`id`),
  ADD CONSTRAINT `timetable_ibfk_2` FOREIGN KEY (`day_id`) REFERENCES `days` (`id`),
  ADD CONSTRAINT `timetable_ibfk_3` FOREIGN KEY (`klass_id`) REFERENCES `klass` (`id`),
  ADD CONSTRAINT `timetable_ibfk_4` FOREIGN KEY (`num_id`) REFERENCES `lessons` (`id`),
  ADD CONSTRAINT `timetable_ibfk_5` FOREIGN KEY (`tless_id`) REFERENCES `teachless` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
