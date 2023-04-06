-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 02, 2023 lúc 04:49 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `bookstore`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`id`, `full_name`, `email`, `phone_number`, `address`, `password`, `role_id`) VALUES
(1, 'anh', 'admin@gmail.com', '0988888888', 'asaddasdsadsdsasd', '1234', 2),
(2, 'Anh', 'abc@gmail.com', '0988418222', 'abc1232', '1', 1),
(3, 'Nguyen thi ngoc anh', 'anhtanultest@gmail.com', '0923960640', '1 Đại Cồ Việt', 'abcd1234', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_1`
--

CREATE TABLE `order_1` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `total_money` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `order_1`
--

INSERT INTO `order_1` (`id`, `user_id`, `full_name`, `email`, `phone_number`, `address`, `order_date`, `status`, `total_money`) VALUES
(4, 2, 'Anh', 'abc@gmail.com', '0988418222', 'asdads asdasd asd', '2023-01-13', 1, 668000),
(8, 2, 'Nguyen thi ngoc anh', 'abc@gmail.com', '0923960640', 'bac phu soc son Ha Noi', '2023-01-30', 3, 1840000),
(9, 3, 'Nguyen thi ngoc anh', 'anhtanultest@gmail.com', '0923960640', 'adsadsasd adsasd fas', '2023-02-04', 1, 116000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_title` varchar(255) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `total_money` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `product_title`, `price`, `quantity`, `total_money`) VALUES
(4, 4, 7, '', 116000, 1, 668000),
(5, 4, 10, '', 92000, 6, 668000),
(10, 8, 7, '', 116000, 1, 1840000),
(11, 8, 8, '', 176000, 9, 1840000),
(12, 8, 12, '', 140000, 1, 1840000),
(13, 9, 7, '', 116000, 1, 116000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `publication_date` date DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `publisher_name` varchar(255) DEFAULT NULL,
  `author_name` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `description` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `title`, `price`, `publication_date`, `quantity`, `publisher_name`, `author_name`, `thumbnail`, `category`, `description`) VALUES
(6, 'The Heart of the Deal', 157000, '2022-06-07', 86, 'Alcove Press', 'Lindsay MacMillan', '1.jpg', 'Romance', 'Perfect for fans of Emily Giffin and Jojo Moyes, Lindsay MacMillan\'s debut novel deftly captures the feeling of being adrift in your late twenties, with poignant commentary on female friendships, mental health, and what happiness really looks like.\r\nRae is in a romantic recession.\r\nThe Wall Street banker is single in New York City and overwhelmed by the pressure to scramble up the corporate and romantic ladders. Feeling her biological clock ticking, she analyzes her love life like a business deal and vows to lock in a husband before her 30th birthday.\r\nThe Manhattan dating app scene has as many ups and downs as the stock market, and outsourcing dates to an algorithm isn\'t exactly Rae\'s idea of romance. She considers cutting her losses, but her friends help her stay invested, boosting her spirits with ice cream and cheap wine that they share in their sixth-floor walk-up while recapping cringe-worthy dates.\r\nAnd then Rae meets Dustin, a poetic soul trapped in a business suit, just like her. She starts to hear wedding bells, but Dustin\'s struggles with depression will test their relationship, and no amount of financial modeling can project what their future will look like.\r\nCan Rae free herself from the idea she had of what thirty was supposed to look like and let love breathe on its own timeline? Or is she too conditioned to stay on the \"right track\" to follow her unpaved intuition?\r\nMoving and timely, The Heart of the Deal is the story of one woman\'s reckoning with what success really is in a city, an industry, and a relationship whose low lows continually challenge the enchantment of the high highs.\r\n'),
(7, 'Moon Knight Omnibus Vol. 2', 116000, '2022-05-10', 87, 'Marvel', 'Doug Moench', '2.jpg', 'Superheroes', 'The end of the beginning! Doug Moench and Bill Sienkiewicz\'s landmark, critically acclaimed run comes to a close. But first Moon Knight must survive threats old and new -- including the madness of Morpheus, the deadly return of Stained Glass Scarlet, the devious Black Spectre and a rematch against the Werewolf by Night! Moon Knight teams with Iron Man, Brother Voodoo, Doctor Strange, Spider-Man and more -- but when tragedy strikes, the dead walk and secrets come to light, will Moon Knight meet his final rest? Or will he rise again, reinvigorated as the Fist of Khonshu?'),
(8, 'The Calculating Stars: A Lady Astronaut Novel', 176000, '2018-07-03', 52, 'Tor Books', 'Mary Robinette Kowal', '3.jpg', 'Science Fiction', 'On a cold spring night in 1952, a huge meteorite fell to earth and obliterated much of the east coast of the United States, including Washington D.C. The ensuing climate cataclysm will soon render the earth inhospitable for humanity, as the last such meteorite did for the dinosaurs. This looming threat calls for a radically accelerated effort to colonize space, and requires a much larger share of humanity to take part in the process.\r\nElma York\'s experience as a WASP pilot and mathematician earns her a place in the International Aerospace Coalition\'s attempts to put man on the moon, as a calculator. But with so many skilled and experienced women pilots and scientists involved with the program, it doesn\'t take long before Elma begins to wonder why they can\'t go into space, too.\r\nElma\'s drive to become the first Lady Astronaut is so strong that even the most dearly held conventions of society may not stand a chance against her.'),
(9, 'The Final Girl Support Group', 158000, '2022-06-14', 96, 'Berkley Books', 'Grady Hendrix', '4.jpg', 'Horror', 'In horror movies, the final girls are the ones left standing when the credits roll. They made it through the worst night of their lives...but what happens after?\r\nLike his bestselling novel The Southern Book Club\'s Guide to Slaying Vampires, Grady Hendrix\'s latest is a fast-paced, frightening, and wickedly humorous thriller. From chain saws to summer camp slayers, The Final Girl Support Group pays tribute to and slyly subverts our most popular horror films--movies like The Texas Chainsaw Massacre, A Nightmare on Elm Street, and Scream.\r\nLynnette Tarkington is a real-life final girl who survived a massacre. For more than a decade, she\'s been meeting with five other final girls and their therapist in a support group for those who survived the unthinkable, working to put their lives back together. Then one woman misses a meeting, and their worst fears are realized--someone knows about the group and is determined to rip their lives apart again, piece by piece.\r\nBut the thing about final girls is that no matter how bad the odds, how dark the night, how sharp the knife, they will never, ever give up.'),
(10, 'Jujutsu Kaisen, Vol. 8: Volume 8', 92000, '2022-02-02', 94, 'Viz Media', 'Gege Akutami', '5.jpg', 'Manga', 'To gain the power he needs to save his friend from a cursed spirit, Yuji Itadori swallows a piece of a demon, only to find himself caught in the midst of a horrific war of the supernatural!\r\nIn a world where cursed spirits feed on unsuspecting humans, fragments of the legendary and feared demon Ryomen Sukuna were lost and scattered about. Should any demon consume Sukuna\'s body parts, the power they gain could destroy the world as we know it. Fortunately, there exists a mysterious school of jujutsu sorcerers who exist to protect the precarious existence of the living from the supernatural!\r\nYuji Itadori and his classmates are fighting two of the three reincarnated Cursed Womb: Death Paintings brothers. Meanwhile, Megumi Fushiguro loses consciousness after finally defeating a special grade curse that possessed a Sukuna finger! Whoever wins the fight between Itadori and the brothers will be the one to secure the prized finger!'),
(11, 'Sword Art Online Progressive 8', 139500, '2022-06-07', 93, 'Yen on', 'Reki Kawahara', '6.jpg', 'Action', 'The secret feud between the Nachtoy and the Korloy families, who control the Volupta Grand Casino on the seventh floor, takes an unprecedented turn when Kirito and Asuna intervene. But when Kirito attempts to expose the Korloy family\'s misdeeds, he ends up stumbling into a trap. Now he has just two days to unravel a mystery, put an end to an unscrupulous conspiracy, and defeat the floor boss. It\'s all leading up to a showdown in the arena where everything\'s on the line!'),
(12, 'Sword Art Online 24: Unital Ring III', 140000, '2022-05-03', 97, 'Yen on', 'Reki Kawahara', '7.jpg', 'Action', 'In the world of Unital Ring, the foreboding presence that has been targeting the party finally makes itself known! Elsewhere, a reunion with Seijirou Kikuoka leads Kirito, Asuna, and Alice back to the Underworld, where two-hundred years have passed since the great war. There, they meet descendants of Ronie and Tiese, as well as the new leader of the Integrity Knights. But something about this man seems all too familiar...A certain glint in his eyes reminiscent of someone dearly departed...'),
(13, 'Fifty Shades Freed', 167300, '2012-04-17', 99, 'Vintage', 'E. L. James', '8.jpg', 'Romance - Erotica', 'When unworldly student Anastasia Steele first encountered the driven and dazzling young entrepreneur Christian Grey it sparked a sensual affair that changed both of their lives irrevocably. Shocked, intrigued, and, ultimately, repelled by Christians singular erotic tastes, Ana demands a deeper commitment. Determined to keep her, Christian agrees. Now, Ana and Christian have it all-love, passion, intimacy, wealth, and a world of possibilities for their future. But Ana knows that loving her Fifty Shades will not be easy, and that being together will pose challenges that neither of them would anticipate. Ana must somehow learn to share Christians opulent lifestyle without sacrificing her own identity. And Christian must overcome his compulsion to control as he wrestles with the demons of a tormented past.          '),
(14, 'Quelques Lignes Sur l\'Histoire Du Vietnam', 120000, '2020-04-07', 100, 'Hoang Co Dinh', 'Hoang Co Dinh', '9.jpg', 'Asia - Southeast Asia', 'Les Vietnamiens doivent connaître l\'histoire du Vietnam. Ce n\'est\r\nqu\'après avoir compris les difficultés de la fondation et de la préservation du pays par de nombreuses générations qui les ont précédés que les Vietnamiens auront confiance en eux et prendront conscience de leur devoir de préserver la patrie héritée de leurs ancêtres. Cependant, comme tout le monde n\'a pas suffisamment le temps ou n\'est pas disposé à fournir des efforts pour lire des livres ou des documents détaillés sur l\'histoire vietnamienne, nous avons besoin d\'un livre simple, facile à lire, qui reprend les faits essentiels, facilement mémorisables par tous.'),
(15, 'This Will Be Funny Someday', 102000, '2022-06-10', 100, 'Katherine Tegen Books', 'Reki Kawahara', '10.jpg', 'Humorous - General', 'The Marvelous Mrs. Maisel comes to high school in acclaimed author Katie Henry\'s coming-of-age YA contemporary about a girl who accidentally falls into the world of stand-up comedy. Perfect for fans of John Green and Becky Albertalli!'),
(23, 'ABC', 1232323, '2023-03-15', 12, 'abc', 'ABC', '2165ae650e4e6216e6deecfc707c9b46.jpg', 'dsdaa', 'world of Unital Ring, the foreboding presence that has been targeting the party finally make');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'account'),
(2, 'admin');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- Chỉ mục cho bảng `order_1`
--
ALTER TABLE `order_1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `order_1`
--
ALTER TABLE `order_1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);

--
-- Các ràng buộc cho bảng `order_1`
--
ALTER TABLE `order_1`
  ADD CONSTRAINT `order_1_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `customer` (`id`);

--
-- Các ràng buộc cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order_1` (`id`),
  ADD CONSTRAINT `order_detail_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
