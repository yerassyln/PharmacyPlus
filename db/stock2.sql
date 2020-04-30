-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 04 2019 г., 09:03
-- Версия сервера: 5.7.24
-- Версия PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `stock2`
--

-- --------------------------------------------------------

--
-- Структура таблицы `attributes`
--

DROP TABLE IF EXISTS `attributes`;
CREATE TABLE IF NOT EXISTS `attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `attributes`
--

INSERT INTO `attributes` (`id`, `name`, `active`) VALUES
(4, 'Подробное описание', 1),
(6, 'Примечание', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `attribute_value`
--

DROP TABLE IF EXISTS `attribute_value`;
CREATE TABLE IF NOT EXISTS `attribute_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) NOT NULL,
  `attribute_parent_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `attribute_value`
--

INSERT INTO `attribute_value` (`id`, `value`, `attribute_parent_id`) VALUES
(5, 'Blue', 2),
(6, 'White', 2),
(7, 'M', 3),
(8, 'L', 3),
(9, 'Green', 2),
(10, 'Black', 2),
(12, 'Grey', 2),
(13, 'S', 3),
(17, '30 мг', 4),
(20, 'большой', 6),
(21, 'средний', 6),
(22, 'маленький', 6);

-- --------------------------------------------------------

--
-- Структура таблицы `brands`
--

DROP TABLE IF EXISTS `brands`;
CREATE TABLE IF NOT EXISTS `brands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `brands`
--

INSERT INTO `brands` (`id`, `name`, `active`) VALUES
(15, 'алкоголизм и табакокурение', 1),
(16, 'антибактериальные и противовирусные средства', 1),
(17, 'антисептики, лечение ран и ожогов', 1),
(18, 'аксессуары для купания', 1),
(19, 'уход за волосами', 1),
(20, 'аксессуары для тростей/костылей', 1),
(21, 'прогулка', 1),
(22, 'мебель и техника', 1),
(23, 'кормление', 1),
(24, 'игры и развитие', 1),
(25, 'для мамы', 1),
(26, 'детское питание', 1),
(27, 'хирургический инструмент', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `active`) VALUES
(7, 'Лекарственные средства', 1),
(8, 'Санитария и гигиена', 1),
(9, 'Мама и ребенок', 1),
(10, 'Косметика', 1),
(11, 'Медицинская техника', 1),
(12, 'Средства для реабилитации', 1),
(13, 'Бандажи и компрессионное белье', 1),
(14, 'Медицинский товар', 1),
(15, 'Санитария и гигиена', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `company`
--

DROP TABLE IF EXISTS `company`;
CREATE TABLE IF NOT EXISTS `company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) NOT NULL,
  `service_charge_value` varchar(255) NOT NULL,
  `vat_charge_value` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `currency` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `company`
--

INSERT INTO `company` (`id`, `company_name`, `service_charge_value`, `vat_charge_value`, `address`, `phone`, `country`, `message`, `currency`) VALUES
(1, 'Аптека', '13', '10', 'Алматы', '+77002626295', 'Казахстан', '<p>Введите сообщение...</p>', 'KZT');

-- --------------------------------------------------------

--
-- Структура таблицы `groups`
--

DROP TABLE IF EXISTS `groups`;
CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) NOT NULL,
  `permission` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `groups`
--

INSERT INTO `groups` (`id`, `group_name`, `permission`) VALUES
(1, 'Administrator', 'a:36:{i:0;s:10:\"createUser\";i:1;s:10:\"updateUser\";i:2;s:8:\"viewUser\";i:3;s:10:\"deleteUser\";i:4;s:11:\"createGroup\";i:5;s:11:\"updateGroup\";i:6;s:9:\"viewGroup\";i:7;s:11:\"deleteGroup\";i:8;s:11:\"createBrand\";i:9;s:11:\"updateBrand\";i:10;s:9:\"viewBrand\";i:11;s:11:\"deleteBrand\";i:12;s:14:\"createCategory\";i:13;s:14:\"updateCategory\";i:14;s:12:\"viewCategory\";i:15;s:14:\"deleteCategory\";i:16;s:11:\"createStore\";i:17;s:11:\"updateStore\";i:18;s:9:\"viewStore\";i:19;s:11:\"deleteStore\";i:20;s:15:\"createAttribute\";i:21;s:15:\"updateAttribute\";i:22;s:13:\"viewAttribute\";i:23;s:15:\"deleteAttribute\";i:24;s:13:\"createProduct\";i:25;s:13:\"updateProduct\";i:26;s:11:\"viewProduct\";i:27;s:13:\"deleteProduct\";i:28;s:11:\"createOrder\";i:29;s:11:\"updateOrder\";i:30;s:9:\"viewOrder\";i:31;s:11:\"deleteOrder\";i:32;s:11:\"viewReports\";i:33;s:13:\"updateCompany\";i:34;s:11:\"viewProfile\";i:35;s:13:\"updateSetting\";}'),
(5, 'Admin', 'a:24:{i:0;s:10:\"updateUser\";i:1;s:8:\"viewUser\";i:2;s:11:\"createGroup\";i:3;s:11:\"updateGroup\";i:4;s:9:\"viewGroup\";i:5;s:11:\"createBrand\";i:6;s:11:\"updateBrand\";i:7;s:9:\"viewBrand\";i:8;s:14:\"createCategory\";i:9;s:14:\"updateCategory\";i:10;s:12:\"viewCategory\";i:11;s:11:\"createStore\";i:12;s:11:\"updateStore\";i:13;s:9:\"viewStore\";i:14;s:15:\"createAttribute\";i:15;s:15:\"updateAttribute\";i:16;s:13:\"viewAttribute\";i:17;s:13:\"createProduct\";i:18;s:13:\"updateProduct\";i:19;s:11:\"viewProduct\";i:20;s:11:\"createOrder\";i:21;s:11:\"updateOrder\";i:22;s:9:\"viewOrder\";i:23;s:13:\"updateCompany\";}');

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bill_no` varchar(255) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_address` varchar(255) NOT NULL,
  `customer_phone` varchar(255) NOT NULL,
  `date_time` varchar(255) NOT NULL,
  `gross_amount` varchar(255) NOT NULL,
  `service_charge_rate` varchar(255) NOT NULL,
  `service_charge` varchar(255) NOT NULL,
  `vat_charge_rate` varchar(255) NOT NULL,
  `vat_charge` varchar(255) NOT NULL,
  `net_amount` varchar(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `paid_status` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `bill_no`, `customer_name`, `customer_address`, `customer_phone`, `date_time`, `gross_amount`, `service_charge_rate`, `service_charge`, `vat_charge_rate`, `vat_charge`, `net_amount`, `discount`, `paid_status`, `user_id`) VALUES
(4, 'BILPR-239D', 'Карлыгаш', 'Алматы', '+77002626295', '1526279725', '450000.00', '13', '58500.00', '10', '45000.00', '553500.00', '', 1, 1),
(5, 'BILPR-0266', 'Галымжан', 'Алматы', '+77087271198', '1526358119', '761700.00', '13', '99021.00', '10', '76170.00', '936891.00', '', 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `orders_item`
--

DROP TABLE IF EXISTS `orders_item`;
CREATE TABLE IF NOT EXISTS `orders_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `orders_item`
--

INSERT INTO `orders_item` (`id`, `order_id`, `product_id`, `qty`, `rate`, `amount`) VALUES
(9, 5, 11, '13', '900', '11700.00'),
(10, 5, 10, '5', '150000', '750000.00'),
(11, 4, 8, '3', '150000', '450000.00');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `description` text NOT NULL,
  `attribute_value_id` text,
  `brand_id` text NOT NULL,
  `category_id` text NOT NULL,
  `store_id` int(11) NOT NULL,
  `availability` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`, `sku`, `price`, `qty`, `image`, `description`, `attribute_value_id`, `brand_id`, `category_id`, `store_id`, `availability`) VALUES
(8, 'АЛЬБУМИН-БИОФАРМА', '', '150000', '45', 'assets/images/product_image/5af844384c067.jpg', '<p>dsadsad<br></p>', 'null', 'null', 'null', 5, 1),
(10, 'ОКТАГАМ', '', '150000', '39', 'assets/images/product_image/5afa5fe395f9d.jpg', '<p>sample <br></p>', '[\"17\",\"20\"]', '[\"15\"]', '[\"7\"]', 5, 1),
(11, 'РИТУКСИМАБ', '', '900', '37', 'assets/images/product_image/5afa6026d808e.jpg', '<p>sample<br></p>', '[\"17\",\"21\"]', '[\"15\"]', '[\"7\"]', 5, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `stores`
--

DROP TABLE IF EXISTS `stores`;
CREATE TABLE IF NOT EXISTS `stores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `stores`
--

INSERT INTO `stores` (`id`, `name`, `active`) VALUES
(5, 'Алматы', 1),
(6, 'Астана', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `gender` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `firstname`, `lastname`, `phone`, `gender`) VALUES
(1, 'super admin', '$2y$10$yfi5nUQGXUZtMdl27dWAyOd/jMOmATBpiUvJDmUu9hJ5Ro6BE5wsK', 'admin@admin.com', 'john', 'doe', '65646546', 1),
(11, 'karlygash', '$2y$10$AheSxRVc0wbsKrveObkxj.J5RI77X/TT10kSjYymoHugsq6xVYx0u', 'karlygash@gmail.com', '-', '-', '+77002626295', 2),
(12, 'galaadmin', '$2y$10$f5BJ0bAszd91sDYkUQVZJOoX9UUrhVLWPrf9Jz0kSxkHFhGfmix2a', 'www.gg-game.com@mail.ru', 'Мухамеджанов', 'Галымжан', '+77087271198', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `user_group`
--

DROP TABLE IF EXISTS `user_group`;
CREATE TABLE IF NOT EXISTS `user_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user_group`
--

INSERT INTO `user_group` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(7, 6, 4),
(8, 7, 4),
(9, 8, 4),
(10, 9, 5),
(11, 10, 5),
(12, 11, 5),
(13, 12, 5);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
