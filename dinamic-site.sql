-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Май 29 2021 г., 09:18
-- Версия сервера: 8.0.18
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
-- База данных: `dinamic-site`
--

-- --------------------------------------------------------


--
-- Структура таблицы `posts`
--

CREATE TABLE IF NOT EXISTS `products` (
  `product_id` INT AUTO_INCREMENT PRIMARY KEY,
  `category_id` INT NOT NULL,
  `name` VARCHAR(255) NOT NULL,
  `price` DECIMAL(10,2) NOT NULL,
  `image` VARCHAR(255) DEFAULT NULL,
  `description` TEXT,
  `stock` INT DEFAULT 0,
  `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `posts`
--
INSERT INTO `products` (`category_id`, `name`, `price`, `image`, `description`, `stock`)
VALUES (1, 'Samsung Galaxy S21', 69990, '/images/samsung-galaxy-s21.jpg', 'Современный смартфон с мощной камерой и быстрым процессором', 10),
      (1, 'Apple iPhone 12', 89990, '/images/apple-iphone-12.jpg', 'Новый iPhone с поддержкой 5G и улучшенной производительностью', 5),
      (2, 'Lenovo ThinkPad X1 Carbon', 129990, '/images/lenovo-thinkpad-x1-carbon.jpg', 'Легкий и мощный ноутбук для бизнеса', 3),
      (3, 'Apple iPad Pro', 79990, '/images/apple-ipad-pro.jpg', 'Мощный планшет для профессионалов', 8);

-- -- Структура таблицы posts

CREATE TABLE posts ( 
  'id' int(12) NOT NULL, 
  'id_user' int(12) NOT NULL, 
  'title' varchar(255) NOT NULL, 
  'img' varchar(255) NOT NULL, 
  'content' text NOT NULL, status tinyint(4) NOT NULL, 
  'id_topic' int(12) DEFAULT NULL, 
  'created_date' datetime NOT NULL DEFAULT CURRENT_TIMESTAMP 
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `posts` 
ADD COLUMN `product_id` INT AFTER `id`,
ADD COLUMN `quantity` INT DEFAULT 1 AFTER `product_id`;

-- -- Дамп данных таблицы posts
INSERT INTO 'posts' ('id', 'id_user', 'title', 'img', 'content', 'status', 'id_topic', 'created_date') 
VALUES (20, 50, 'PHP или Django?', '1620237923_test1.jpg', '<p>sdfsd</p>', 1, 15, '2021-05-05 21:05:23'),
  (21, 50, 'Как вам дается ООП в PHP?', '1620237940_test1.jpg', '<p>Никак)))</p>', 1, 15, '2021-05-05 21:05:40'), 
  (22, 50, 'Хочу ролики по:', '1620377595_test1.jpg', '<p>третья статья</p>', 1, 18, '2021-05-05 21:07:26'), 
  (23, 50, 'При решении сложных задач трудно поместить решение в один запрос (хотя, многие стараются так сделать). В таких случаях удобно помещать какие-либо промежуточные данные во временную таблицу, для использования их в дальнейшем.', '1620239962_second.png', '<p>При решении сложных задач трудно поместить решение в один запрос (хотя, многие стараются так сделать). В таких случаях удобно помещать какие-либо промежуточные данные во вр<i>е</i>менную таблицу, для использования их в дальнейшем.</p><p> </p><p>При решении сложных задач трудно поместить решение в один запрос (хотя, многие стараются так сделать). В таких случаях удобно помещать какие-либо промежуточные данные во вр<i>е</i>менную таблицу, для использования их в дальнейшем.</p>', 1, 15, '2021-05-05 21:38:37'), 
  (24, 50, '15 полезных команд PostgreSQL', '1620374705_PostgreSQL.png', '<p>В сети много руководств по PostgreSQL, которые описывают основные команды. Но при погружении глубже в работу возникают такие практические вопросы, для которых требуются продвинутые команды.</p><p>Такие команды, или <a href="https://ru.wikipedia.org/wiki/%D0%A1%D0%BD%D0%B8%D0%BF%D0%BF%D0%B5%D1%82\&quot;&gt;сниппеты</a>, редко описаны в документации. Рассмотрим несколько на примерах, полезных как для разработчиков, так и для администраторов баз данных.</p>', 1, 18, '2021-05-07 11:05:05'), 
  (26, 51, 'Запись от TEST пользователя', '1621268311_test1.jpg', '<p>По словам разработчиков, синий цвет выбран вполне осознанно. Он способен проникать дальше, чем световое излучение с другой длиной волны.<br><br>Модем бесперебойно передает сигналы на расстояние 50 — 100 м на глубине до 6 тыс. метров. Именно этот прибор от Hydromea лег в основу нового подводного дрона.<br><br> </p><h2>Зачем дрону такая связь</h2><p><br>Разработка подводного дрона — более сложная задача, чем создание наземных или воздушных автономных систем.<br><br>Какие есть варианты обеспечения связью под водой?<br><br> </p><ul><li>Радиоволны, но их дальность не очень велика.</li><li>Звуковые волны слишком медленные, нельзя быть уверенным в их надежности.</li><li>Проводное соединение. На сегодня это самый распространенный вариант. Но и у него есть минусы, включая лимит на радиус перемещения.</li></ul><p><br>Есть несколько сфер, в которых просто необходимо применение подводных беспроводных роботов для получения важных сведений:<br><br> </p><ul><li>подводные исследования;</li><li>морской энергетический сектор;</li><li>строительство и ремонт водных объектов.</li></ul><p><br>Уже сейчас разработчики ExRay видят несколько сценариев использования аппарата в замкнутых затопленных пространствах:<br><br> </p><ul><li>в плотинах гидроэлектростанций;</li><li>закрытых водных путях;</li><li>балластных цистерн на судах.</li><li> </li></ul>', 1, 17, '2021-05-17 19:18:31'), 
  (27, 50, 'Новая статья', '1621881949_second.png', '<p>пагинация, постраничная навигация, pagination, pagination php,<br>easy pagination, пагинация на php</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ornare massa eget egestas purus. Nunc consequat interdum varius sit amet mattis vulputate enim. Nunc mi ipsum faucibus vitae aliquet nec. Arcu odio ut sem nulla pharetra diam sit. Ultricies lacus sed turpis tincidunt id aliquet risus. Sit amet est placerat in egestas. Erat pellentesque adipiscing commodo elit at. Quis commodo odio aenean sed. Proin libero nunc consequat interdum varius.</p><p>At volutpat diam ut venenatis tellus. Sit amet volutpat consequat mauris nunc congue nisi vitae suscipit. Nisi est sit amet facilisis magna etiam tempor. Interdum velit euismod in pellentesque massa placerat. Ut morbi tincidunt augue interdum velit euismod. Sed elementum tempus egestas sed. Scelerisque in dictum non consectetur a erat. Sollicitudin ac orci phasellus egestas tellus rutrum tellus pellentesque eu. Habitant morbi tristique senectus et. At consectetur lorem donec massa sapien faucibus et. Praesent tristique magna sit amet. Enim ut tellus elementum sagittis vitae et leo. Elit pellentesque habitant morbi tristique senectus. Mauris pharetra et ultrices neque ornare aenean euismod elementum nisi.</p><p>Mi bibendum neque egestas congue quisque egestas diam. Vitae tortor condimentum lacinia quis vel eros donec ac. At erat pellentesque adipiscing commodo elit at. Consectetur a erat nam at lectus urna duis convallis. Rhoncus est pellentesque elit ullamcorper dignissim. Non nisi est sit amet facilisis. Tellus orci ac auctor augue mauris augue neque gravida. Ornare aenean euismod elementum nisi quis eleifend quam adipiscing vitae. Mattis enim ut tellus elementum sagittis vitae et. Nec tincidunt praesent semper feugiat. Lacus vel facilisis volutpat est. Fringilla ut morbi tincidunt augue. Condimentum mattis pellentesque id nibh tortor id aliquet lectus proin. Suspendisse interdum consectetur libero id faucibus. Ut diam quam nulla porttitor massa. Sit amet facilisis magna etiam tempor orci. Aenean et tortor at risus. At consectetur lorem donec massa sapien faucibus. Risus feugiat in ante metus dictum at. Ultrices neque ornare aenean euismod.</p>', 1, 17, '2021-05-24 21:45:49');



-- --------------------------------------------------------

--
-- Структура таблицы `topics`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `category_id` INT AUTO_INCREMENT PRIMARY KEY,
  `name` VARCHAR(255) NOT NULL,
  `parent_category_id` INT DEFAULT NULL,
  `description` TEXT,
  `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

--
-- Дамп данных таблицы `topics`
--

INSERT INTO `products` (`category_id`, `name`, `price`, `image`, `description`, `stock`)
VALUES (1, 'Samsung Galaxy S21', 69999.99, '/images/samsung-galaxy-s21.jpg', 'Современный смартфон с мощной камерой и быстрым процессором', 10),
      (1, 'Apple iPhone 12', 89999.99, '/images/apple-iphone-12.jpg', 'Новый iPhone с поддержкой 5G и улучшенной производительностью', 5),
      (2, 'Lenovo ThinkPad X1 Carbon', 129999.99, '/images/lenovo-thinkpad-x1-carbon.jpg', 'Легкий и мощный ноутбук для бизнеса', 3),
      (3, 'Apple iPad Pro', 79999.99, '/images/apple-ipad-pro.jpg', 'Мощный планшет для профессионалов', 8);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(12) NOT NULL,
  `admin` tinyint(4) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `admin`, `username`, `email`, `password`, `created`) VALUES
(50, 1, 'Andrei', 'ahdepc88@gmail.com', '$2y$10$mkpLBHXIXJbVcy3N/NJdieHK.JWezPbul4VeMh/malzOO/Ug9IKf2', '2021-05-05 18:04:34'),
(51, 1, 'test', 'ah@gmail.com', '$2y$10$bsx9bl2pS0sNvBDXLI5ksOyHd8CiXU54FhSNyrevwHksMPB.aistG', '2021-05-17 16:16:41'),
(52, 0, 'Test22', 'test22@gmail.com', '$2y$10$QnMnaL.Uzbi77Y3XaFA1MeofmCh8M31fMCvahekLt0dPBP7twpeq2', '2021-05-27 18:23:26');

--
-- Структура таблицы `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` INT AUTO_INCREMENT PRIMARY KEY,
  `user_id` INT NOT NULL,
  `total_price` DECIMAL(10,2) NOT NULL,
  `payment_status` ENUM('pending', 'paid', 'refunded') DEFAULT 'pending',
  `shipping_address` TEXT,
  `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

--
-- Структура таблицы `order_items`
--

CREATE TABLE IF NOT EXISTS `order_items` (
  `item_id` INT AUTO_INCREMENT PRIMARY KEY,
  `order_id` INT NOT NULL,
  `product_id` INT NOT NULL,
  `quantity` INT DEFAULT 1,
  `unit_price` DECIMAL(10,2) NOT NULL,
  FOREIGN KEY (`order_id`) REFERENCES `orders`(`order_id`) ON DELETE CASCADE,
  FOREIGN KEY (`product_id`) REFERENCES `products`(`product_id`) ON DELETE RESTRICT
);

--
-- Дамп данных таблицы `orders`
--
INSERT INTO `orders` (`user_id`, `total_price`, `payment_status`, `shipping_address`)
VALUES (1, 169999.98, 'paid', 'Москва, ул. Тверская, д. 25, кв. 10'),
      (2, 299999.97, 'pending', 'Санкт-Петербург, пр. Невский, д. 75, оф. 150');

--
-- Дамп данных таблицы `order_items`
--
INSERT INTO `order_items` (`order_id`, `product_id`, `quantity`, `unit_price`)
VALUES (1, 1, 2, 69999.99), -- два Samsung Galaxy S21
      (2, 3, 1, 129999.99); -- один Lenovo ThinkPad X1 Carbon



--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `doc`
--
ALTER TABLE `doc`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_topic` (`id_topic`);

--
-- Индексы таблицы `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `doc`
--
ALTER TABLE `doc`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT для таблицы `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`id_topic`) REFERENCES `topics` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
