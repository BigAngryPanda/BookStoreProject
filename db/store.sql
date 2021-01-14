SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `store`
--

-- --------------------------------------------------------

--
-- Структура таблицы `author`
--

CREATE TABLE IF NOT EXISTS `author` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(255) CHARACTER SET utf8 NOT NULL,
  `LastName` varchar(255) CHARACTER SET utf8 NOT NULL,
  `MiddleName` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `author`
--

INSERT INTO `author` (`ID`, `FirstName`, `LastName`, `MiddleName`) VALUES
(1, 'Джордж', 'Оруэлл', NULL),
(2, 'Рэй', 'Бредбери', NULL),
(3, 'Стивен', 'Кинг', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `book`
--

CREATE TABLE IF NOT EXISTS `book` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `AuthorID` int(10) NOT NULL,
  `Description` varchar(3000) CHARACTER SET utf8 NOT NULL,
  `Year` int(10) NOT NULL,
  `Quantity` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `PriceAudio` int(10) DEFAULT NULL,
  `PriceElectronic` int(10) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `AuthorID` (`AuthorID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci AUTO_INCREMENT=11 ;

--
-- Дамп данных таблицы `book`
--

INSERT INTO `book` (`ID`, `Title`, `AuthorID`, `Description`, `Year`, `Quantity`, `Price`, `PriceAudio`, `PriceElectronic`) VALUES
(1, '1984', 1, 'Своеобразный антипод второй великой антиутопии ХХ века — "О дивный новый мир" Олдоса Хаксли. Что, в сущности, страшнее: доведенное до абсурда "общество потребления" или доведенное до абсолюта "общество идеи"? По Оруэллу, нет и не может быть ничего ужаснее тотальной несвободы…', 2021, 52, 149, 199, 119),
(2, 'Ферма животных', 1, 'Джордж Оруэлл в "Ферме животных" использовал жанр басни для завуалированного показа некоторых известных исторических событий. Он писал: "Каждая строка любой серьезной работы, написанной мной с 1936 года, прямо или косвенно направлена против тоталитаризма... "Ферма животных" - первая книга, в которой я совершенно сознательно пытался... сплавить политическую задачу и задачу художественную в одно целое". События в книге напомнят читателю историю советского государства. Здесь мы видим события, начиная от революции и заканчивая окончательным крушением всех надежд обитателей двора, сведением всех "священных" заповедей к простой и точной формуле: "Все животные равны, но некоторые равнее других". Иногда описания метаморфоз на ферме вызывают улыбку, иногда грусть, так как за всеми событиями легко угадываются реальные исторические факты. Очевидное лежит на поверхности. Эта книга рассчитана на зрелую аудиторию, которая сможет понять, осмыслить освещенные в ней проблемы и не отвернуться от них.', 2010, 17, 229, 199, 129),
(3, 'Да здравствует фикус!', 1, 'Поэт должен быть голоден? Гению необходимо презирать «мещанский уют»? Обеспеченность, радость бытия и материальное благополучие убивают истинный талант? Молодой литератор Гордон Комсток привык считать эти истины святыми и непреложными. Он не только не ищет успеха и благополучия – он объявил им войну. Но однажды судьба играет с Гордоном скверную штуку. Он попросту… влюбляется. В самую обычную, совсем не богемную девушку. Так начинается его путь… то ли к творческому самоуничтожению, то ли к обычным радостям человеческого бытия…', 2014, 11, 196, 300, 150),
(4, 'О скитаньях вечных и о Земле (сборник)', 2, 'В настоящий сборник вошли произведения, созданные одним из ведущих американских писателей - фантастов Рэем Брэдбери: "Марсианские хроники", роман "451° по Фаренгейту", рассказы "Превращение", "Электрическое тело пою!", "О скитаниях вечных и о Земле", "Наказание без преступления" и др.', 1987, 4, 152, NULL, NULL),
(5, 'Марсианские хроники (сборник)', 2, 'Хотите покорить Марс, этот странный изменчивый мир, населенный загадочными, неуловимыми обитателями и не такой уж добрый к человеку? Дерзайте. Но только приготовьтесь в полной мере испить чашу сожалений и тоски - тоски по зеленой планете Земля, на которой навсегда останется ваше сердце. Цикл удивительных марсианских историй Рэя Брэдбери - классическое произведение, вошедшее в золотой фонд мировой литературы.', 2011, 33, 158, 183, 159),
(6, '451'' по Фаренгейту', 2, '451° по Фаренгейту — температура, при которой воспламеняется и горит бумага. Философская антиутопия Брэдбери рисует беспросветную картину развития постиндустриального общества: это мир будущего, в котором все письменные издания безжалостно уничтожаются специальным отрядом пожарных, а хранение книг преследуется по закону, интерактивное телевидение успешно служит всеобщему оболваниванию, карательная психиатрия решительно разбирается с редкими инакомыслящими, а на охоту за неисправимыми диссидентами выходит электрический пес… Роман, принесший своему творцу мировую известность.', 2017, 87, 154, 199, 119),
(7, 'Зеленая миля', 3, 'Роман-событие, ставший лауреатом премии Брэма Стокера и вдохновивший Фрэнка Дарабонта на создание культового фильма, в котором Том Хэнкс сыграл, возможно, свою лучшую роль. …Стивен Кинг приглашает читателей в жуткий мир тюремного блока смертников, откуда уходят, чтобы не вернуться, приоткрывает дверь последнего пристанища тех, кто преступил закон и теперь отсчитывает последние часы... До предела обнажены нервы, накалены страсти и обострены чувства. Уже ничего нельзя исправить — последняя черта совсем близко. Но еще можно понять и посочувствовать тем, кому предстоит отправиться по зловещей Зеленой миле в никуда…', 2020, 165, 220, 183, 127),
(8, 'Побег из Шоушенка', 3, 'Страшный сон, ставший реальностью... История невинного человека, приговоренного к пожизненному заключению в тюремном аду. Жесткая история выживания там, где выжить практически невозможно. Увлекательная история побега оттуда, откуда не сумел вырваться еще никто... Читайте одно из знаменитейших произведений "короля ужасов" Стивена Кинга, которое легло в основу известного фильма с Тимом Роббинсом и Морганом Фрименом в главных ролях!', 2011, 71, 249, 159, 63),
(9, '11/22/63', 3, 'Убийство президента Кеннеди стало самым трагическим событием американской истории ХХ века. Тайна его до сих пор не раскрыта. Но что, если случится чудо? Если появится возможность отправиться в прошлое и предотвратить катастрофу? Это предстоит выяснить обычному учителю из маленького городка Джейку Эппингу, получившему доступ к временному порталу. Его цель — спасти Кеннеди. Но какова будет цена спасения?', 2017, 16, 451, 279, 215);

-- --------------------------------------------------------

--
-- Структура таблицы `book_publisher`
--

CREATE TABLE IF NOT EXISTS `book_publisher` (
  `BookID` int(10) NOT NULL,
  `PublisherID` int(10) NOT NULL,
  KEY `BookID` (`BookID`),
  KEY `PublisherID` (`PublisherID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `book_publisher`
--

INSERT INTO `book_publisher` (`BookID`, `PublisherID`) VALUES
(1, 1),
(2, 2),
(3, 1),
(4, 5),
(5, 6),
(5, 7),
(6, 6),
(7, 1),
(8, 3),
(9, 1),
(9, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `book_type`
--

CREATE TABLE IF NOT EXISTS `book_type` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Type` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `book_type`
--

INSERT INTO `book_type` (`ID`, `Type`) VALUES
(1, 'Бумажная книга'),
(2, 'Электронная книга'),
(3, 'Аудиокнига');

-- --------------------------------------------------------

--
-- Структура таблицы `order`
--

CREATE TABLE IF NOT EXISTS `order` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `CustomerFirstName` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `CustomerLastName` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Phone` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Cost` int(10) DEFAULT NULL,
  `DateOfOrder` datetime DEFAULT NULL,
  `DateOfDelivery` datetime DEFAULT NULL,
  `OrderStatusID` int(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `OrderStatusID` (`OrderStatusID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `order`
--

INSERT INTO `order` (`ID`, `CustomerFirstName`, `CustomerLastName`, `Email`, `Phone`, `Address`, `Cost`, `DateOfOrder`, `DateOfDelivery`, `OrderStatusID`) VALUES
(1, 'Павел', 'Филонов', 'pavel_filonov@yandex.ru', '+79991234567', 'г. Санкт Петербург, ул Пушкина, д. 29, кв. 228', 520, '2021-01-14 09:31:38', '2021-01-16 10:00:00', 1),
(2, 'Иван', 'Иванов', 'ivan_ivanov@gmail.com', '+79997654321', 'г. Санкт Петербург, ул Ломоносова, д. 9', 425, '2021-01-05 20:38:19', '2021-01-09 15:00:00', 4),
(3, 'Дмитрий', 'Дмитриев', 'dm_ditr@mail.ru', '+79192837465', 'г. Санкт Петербург, Кронверский проспект, д. 49', 1085, '2020-03-11 14:21:13', '2020-04-01 08:00:00', 6);

-- --------------------------------------------------------

--
-- Структура таблицы `order_detail`
--

CREATE TABLE IF NOT EXISTS `order_detail` (
  `OrderID` int(10) NOT NULL,
  `BookID` int(10) NOT NULL,
  `Quantity` int(10) NOT NULL,
  `Cost` int(10) NOT NULL,
  `BookTypeID` int(10) NOT NULL,
  KEY `OrderID` (`OrderID`,`BookID`,`BookTypeID`),
  KEY `OrderID_2` (`OrderID`),
  KEY `BookID` (`BookID`),
  KEY `BookTypeID` (`BookTypeID`),
  KEY `BookTypeID_2` (`BookTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `order_detail`
--

INSERT INTO `order_detail` (`OrderID`, `BookID`, `Quantity`, `Cost`, `BookTypeID`) VALUES
(1, 1, 1, 149, 1),
(1, 6, 2, 308, 1),
(1, 8, 1, 63, 2),
(2, 2, 1, 229, 1),
(2, 3, 1, 196, 1),
(3, 7, 1, 183, 3),
(3, 9, 2, 902, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `order_status`
--

CREATE TABLE IF NOT EXISTS `order_status` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Status` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci AUTO_INCREMENT=8 ;

--
-- Дамп данных таблицы `order_status`
--

INSERT INTO `order_status` (`ID`, `Status`) VALUES
(1, 'Принят на обработку.'),
(2, 'Формируется.'),
(3, 'Отправлен в сортировочный центр.'),
(4, 'В службе доставки.'),
(5, 'Прибыл в город получателя.'),
(6, 'Доставлен.');

-- --------------------------------------------------------

--
-- Структура таблицы `publisher`
--

CREATE TABLE IF NOT EXISTS `publisher` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `publisher`
--

INSERT INTO `publisher` (`ID`, `Title`) VALUES
(1, 'АСТ'),
(2, 'Римис'),
(3, 'Астрель'),
(4, 'Neoclassic'),
(5, 'Правда'),
(6, 'Эксмо'),
(7, 'Домино');

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`AuthorID`) REFERENCES `author` (`ID`) ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `book_publisher`
--
ALTER TABLE `book_publisher`
  ADD CONSTRAINT `book_publisher_ibfk_2` FOREIGN KEY (`PublisherID`) REFERENCES `publisher` (`ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `book_publisher_ibfk_1` FOREIGN KEY (`BookID`) REFERENCES `book` (`ID`) ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`OrderStatusID`) REFERENCES `order_status` (`ID`) ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_3` FOREIGN KEY (`BookTypeID`) REFERENCES `book_type` (`ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `order` (`ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `order_detail_ibfk_2` FOREIGN KEY (`BookID`) REFERENCES `book` (`ID`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
