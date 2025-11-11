-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: tosho
-- ------------------------------------------------------
-- Server version	8.0.25

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- 20 Families (katakana)
LOCK TABLES `family` WRITE;
INSERT INTO `family` (`name`,`jp_name`,`email`,`created_at`) VALUES
('Tanaka','タナカ','tanaka@mail.com',NULL),
('Suzuki','スズキ','suzuki@mail.com',NULL),
('Takahashi','タカハシ','takahashi@mail.com',NULL),
('Yamamoto','ヤマモト','yamamoto@mail.com',NULL),
('Nakamura','ナカムラ','nakamura@mail.com',NULL),
('Kobayashi','コバヤシ','kobayashi@mail.com',NULL),
('Saito','サイトウ','saito@mail.com',NULL),
('Matsumoto','マツモト','matsumoto@mail.com',NULL),
('Inoue','イノウエ','inoue@mail.com',NULL),
('Kimura','キムラ','kimura@mail.com',NULL),
('Hayashi','ハヤシ','hayashi@mail.com',NULL),
('Shimizu','シミズ','shimizu@mail.com',NULL),
('Yamada','ヤマダ','yamada@mail.com',NULL),
('Ishikawa','イシカワ','ishikawa@mail.com',NULL),
('Fujimoto','フジモト','fujimoto@mail.com',NULL),
('Okada','オカダ','okada@mail.com',NULL),
('Hasegawa','ハセガワ','hasegawa@mail.com',NULL),
('Murakami','ムラカミ','murakami@mail.com',NULL),
('Kondo','コンドウ','kondo@mail.com',NULL),
('Abe','アベ','abe@mail.com',NULL),

('Ito','イト','ito11@mail.com',NULL),
('Ito','イト','ito12@mail.com',NULL),
('Ito','イト','ito13@mail.com',NULL),
('Ito','イト','ito14@mail.com',NULL),
('Ito','イト','ito15@mail.com',NULL),
('Ito','イト','ito16@mail.com',NULL),
('Ito','イト','ito17@mail.com',NULL),
('Ito','イト','ito18@mail.com',NULL),
('Ito','イト','ito19@mail.com',NULL),
('Ito','イト','ito20@mail.com',NULL),

('Yoshida','ヨシダ','yoshida11@mail.com',NULL),
('Yoshida','ヨシダ','yoshida12@mail.com',NULL),
('Yoshida','ヨシダ','yoshida13@mail.com',NULL),
('Yoshida','ヨシダ','yoshida14@mail.com',NULL),
('Yoshida','ヨシダ','yoshida15@mail.com',NULL),
('Yoshida','ヨシダ','yoshida16@mail.com',NULL),
('Yoshida','ヨシダ','yoshida17@mail.com',NULL),
('Yoshida','ヨシダ','yoshida18@mail.com',NULL),
('Yoshida','ヨシダ','yoshida19@mail.com',NULL),
('Yoshida','ヨシダ','yoshida20@mail.com',NULL),

('Yamaguchi','ヤマグチ','yamaguchi11@mail.com',NULL),
('Yamaguchi','ヤマグチ','yamaguchi12@mail.com',NULL),
('Yamaguchi','ヤマグチ','yamaguchi13@mail.com',NULL),
('Yamaguchi','ヤマグチ','yamaguchi14@mail.com',NULL),
('Yamaguchi','ヤマグチ','yamaguchi15@mail.com',NULL),
('Yamaguchi','ヤマグチ','yamaguchi16@mail.com',NULL),
('Yamaguchi','ヤマグチ','yamaguchi17@mail.com',NULL),
('Yamaguchi','ヤマグチ','yamaguchi18@mail.com',NULL),
('Yamaguchi','ヤマグチ','yamaguchi19@mail.com',NULL),
('Yamaguchi','ヤマグチ','yamaguchi20@mail.com',NULL),

('Matsuda','マツダ','matsuda11@mail.com',NULL),
('Matsuda','マツダ','matsuda12@mail.com',NULL),
('Matsuda','マツダ','matsuda13@mail.com',NULL),
('Matsuda','マツダ','matsuda14@mail.com',NULL),
('Matsuda','マツダ','matsuda15@mail.com',NULL),
('Matsuda','マツダ','matsuda16@mail.com',NULL),
('Matsuda','マツダ','matsuda17@mail.com',NULL),
('Matsuda','マツダ','matsuda18@mail.com',NULL),
('Matsuda','マツダ','matsuda19@mail.com',NULL),
('Matsuda','マツダ','matsuda20@mail.com',NULL),

('Okamoto','オカモト','okamoto11@mail.com',NULL),
('Okamoto','オカモト','okamoto12@mail.com',NULL),
('Okamoto','オカモト','okamoto13@mail.com',NULL),
('Okamoto','オカモト','okamoto14@mail.com',NULL),
('Okamoto','オカモト','okamoto15@mail.com',NULL),
('Okamoto','オカモト','okamoto16@mail.com',NULL),
('Okamoto','オカモト','okamoto17@mail.com',NULL),
('Okamoto','オカモト','okamoto18@mail.com',NULL),
('Okamoto','オカモト','okamoto19@mail.com',NULL),
('Okamoto','オカモト','okamoto20@mail.com',NULL),

('Fujita','フジタ','fujita11@mail.com',NULL),
('Fujita','フジタ','fujita12@mail.com',NULL),
('Fujita','フジタ','fujita13@mail.com',NULL),
('Fujita','フジタ','fujita14@mail.com',NULL),
('Fujita','フジタ','fujita15@mail.com',NULL),
('Fujita','フジタ','fujita16@mail.com',NULL),
('Fujita','フジタ','fujita17@mail.com',NULL),
('Fujita','フジタ','fujita18@mail.com',NULL),
('Fujita','フジタ','fujita19@mail.com',NULL),
('Fujita','フジタ','fujita20@mail.com',NULL),

('Kawasaki','カワサキ','kawasaki11@mail.com',NULL),
('Kawasaki','カワサキ','kawasaki12@mail.com',NULL),
('Kawasaki','カワサキ','kawasaki13@mail.com',NULL),
('Kawasaki','カワサキ','kawasaki14@mail.com',NULL),
('Kawasaki','カワサキ','kawasaki15@mail.com',NULL),
('Kawasaki','カワサキ','kawasaki16@mail.com',NULL),
('Kawasaki','カワサキ','kawasaki17@mail.com',NULL),
('Kawasaki','カワサキ','kawasaki18@mail.com',NULL),
('Kawasaki','カワサキ','kawasaki19@mail.com',NULL),
('Kawasaki','カワサキ','kawasaki20@mail.com',NULL),

('Tanaka','タナカ','tanaka11@mail.com',NULL),
('Tanaka','タナカ','tanaka12@mail.com',NULL),
('Tanaka','タナカ','tanaka13@mail.com',NULL),
('Tanaka','タナカ','tanaka14@mail.com',NULL),
('Tanaka','タナカ','tanaka15@mail.com',NULL),
('Tanaka','タナカ','tanaka16@mail.com',NULL),
('Tanaka','タナカ','tanaka17@mail.com',NULL),
('Tanaka','タナカ','tanaka18@mail.com',NULL),
('Tanaka','タナカ','tanaka19@mail.com',NULL),
('Tanaka','タナカ','tanaka20@mail.com',NULL);
UNLOCK TABLES;

LOCK TABLES `book` WRITE;
INSERT INTO `book` (`title`, `author`, `cover_url`, `location`, `jp_title`, `jp_author`, `added_at`, `status`, `code`) VALUES
('11 Piki no Neko', 'Baba Noboru', 'https://covers.openlibrary.org/b/isbn/9784834000601-S.jpg', 'Caméléon', '１１ぴきのねこ', 'ババ ノボル', '2025-11-11 10:00:00', 'Disponible', '0001'),
('Guri to Gura', 'Nakagawa Rie', 'https://covers.openlibrary.org/b/isbn/9784834000618-S.jpg', 'F', 'ぐりとぐら', 'ナカガワ リエ', '2025-11-11 10:05:00', 'Disponible', '0002'),
('Majo no Takkyubin', 'Kadono Eiko', NULL, 'Badet', 'まじょのたっきゅうびん', 'カドノ エイコ', '2025-11-11 10:10:00', 'Disponible', '0003'),
('Shirokuma-chan no Hotcake', 'Ken Wakayama', 'https://covers.openlibrary.org/b/isbn/9784033325808-S.jpg', 'MBA', 'しろくまちゃんのほっとけーき', 'ワカヤマ ケン', '2025-11-11 10:15:00', 'Disponible', '0004'),
('Pan Dorobou', 'Shibata Keiko', NULL, 'Caméléon', 'ぱんどろぼう', 'シバタ ケイコ', '2025-11-11 10:20:00', 'Disponible', '0005'),
('Nenai Ko Dareda', 'Titi', NULL, 'F', 'ねないこだれだ', 'チチ', '2025-11-11 10:25:00', 'Disponible', '0006'),
('Doraemon: Nobita no Uchuu Ryokou', 'Fujiko F. Fujio', 'https://covers.openlibrary.org/b/isbn/9784063631036-S.jpg', 'Badet', 'ドラえもん: のび太の宇宙旅行', 'フジコ・F・フジオ', '2025-11-11 10:30:00', 'Disponible', '0007'),
('Anpanman to Neko no Mori', 'Takashi Yanase', 'https://covers.openlibrary.org/b/isbn/9784088803944-S.jpg', 'MBA', 'アンパンマンとネコの森', 'ヤナセ タカシ', '2025-11-11 10:35:00', 'Disponible', '0008'),
('Guri to Gura no Oshougatsu', 'Nakagawa Rieko', NULL, 'Caméléon', 'ぐりとぐらのお正月', 'ナカガワ リエコ', '2025-11-11 10:40:00', 'Disponible', '0009'),
('Kiki no Takkyubin', 'Eiko Kadono', NULL, 'F', 'キキの宅急便', 'カドノ エイコ', '2025-11-11 10:45:00', 'Disponible', '0010'),
('Shirokuma-chan no Birthday', 'Ken Wakayama', NULL, 'Badet', 'しろくまちゃんの誕生日', 'ワカヤマ ケン', '2025-11-11 10:50:00', 'Disponible', '0011'),
('Pan to Usagi', 'Keiko Sena', 'https://covers.openlibrary.org/b/isbn/9784033325815-S.jpg', 'MBA', 'パンとうさぎ', 'セナ ケイコ', '2025-11-11 10:55:00', 'Disponible', '0012'),
('Majo no Takkyubin 2', 'Kadono Eiko', NULL, 'Caméléon', 'まじょのたっきゅうびん 2', 'カドノ エイコ', '2025-11-11 11:00:00', 'Disponible', '0013'),
('Guri to Gura no Mori', 'Nakagawa Rie', NULL, 'F', 'ぐりとぐらの森', 'ナカガワ リエ', '2025-11-11 11:05:00', 'Disponible', '0014'),
('Shirokuma-chan no Picnic', 'Ken Wakayama', NULL, 'Badet', 'しろくまちゃんのピクニック', 'ワカヤマ ケン', '2025-11-11 11:10:00', 'Disponible', '0015'),
('Doraemon: Nobita no Tanken', 'Fujiko F. Fujio', NULL, 'MBA', 'ドラえもん: のび太の冒険', 'フジコ・F・フジオ', '2025-11-11 11:15:00', 'Disponible', '0016'),
('Anpanman to Mori no Tomodachi', 'Takashi Yanase', NULL, 'Caméléon', 'アンパンマンと森の友達', 'ヤナセ タカシ', '2025-11-11 11:20:00', 'Disponible', '0017'),
('Guri to Gura no Birthday', 'Nakagawa Rieko', NULL, 'F', 'ぐりとぐらの誕生日', 'ナカガワ リエコ', '2025-11-11 11:25:00', 'Disponible', '0018'),
('Pan Dorobou 2', 'Shibata Keiko', NULL, 'Badet', 'ぱんどろぼう 2', 'シバタ ケイコ', '2025-11-11 11:30:00', 'Disponible', '0019'),
('Nenai Ko Dareda 2', 'Titi', NULL, 'MBA', 'ねないこだれだ 2', 'チチ', '2025-11-11 11:35:00', 'Disponible', '0020'),

('My Neighbor Totoro Picture Book', 'Hayao Miyazaki', NULL, 'F', 'となりのトトロ 絵本', '宮崎 駿', '2025-11-11 11:45:00', 'Disponible', '0022'),
('The Little Prince', 'Antoine de Saint-Exupéry', 'https://covers.openlibrary.org/b/isbn/9784033329011-S.jpg', 'Badet', '星の王子さま', 'アントワーヌ・ド・サン＝テグジュペリ', '2025-11-11 11:50:00', 'Disponible', '0023'),
('Pokemon: Pikachu Adventure', 'Satoshi Tajiri', NULL, 'MBA', 'ポケモン ピカチュウの冒険', '田尻 智', '2025-11-11 11:55:00', 'Disponible', '0024'),
('Kiki\'s Delivery Service', 'Eiko Kadono', 'https://covers.openlibrary.org/b/isbn/9784061850099-S.jpg', 'Caméléon', '魔女の宅急便', '角野 栄子', '2025-11-11 12:00:00', 'Disponible', '0025'),
('Spirited Away', 'Hayao Miyazaki', NULL, 'F', '千と千尋の神隠し', '宮崎 駿', '2025-11-11 12:05:00', 'Disponible', '0026'),
('Anpanman', 'Takashi Yanase', 'https://covers.openlibrary.org/b/isbn/9784251032400-S.jpg', 'Badet', 'それいけ！アンパンマン', 'やなせ たかし', '2025-11-11 12:10:00', 'Disponible', '0027'),
('Guri and Gura\'s Adventures', 'Rie Nakagawa', NULL, 'MBA', 'ぐりとぐらの冒険', '中川 李枝子', '2025-11-11 12:15:00', 'Disponible', '0028'),
('Panda Bear and Friends', 'Keiko Sena', NULL, 'Caméléon', 'パンダくんとお友だち', '瀬名 恵子', '2025-11-11 12:20:00', 'Disponible', '0029'),
('The Very Hungry Caterpillar', 'Eric Carle', 'https://covers.openlibrary.org/b/isbn/9784072700016-S.jpg', 'F', 'はらぺこあおむし', 'エリック・カール', '2025-11-11 12:25:00', 'Disponible', '0030'),
('Ponyo', 'Hayao Miyazaki', NULL, 'Badet', '崖の上のポニョ', '宮崎 駿', '2025-11-11 12:30:00', 'Disponible', '0031'),
('The Cat Who Lived a Million Times', 'Yoko Sano', 'https://covers.openlibrary.org/b/isbn/9784033329509-S.jpg', 'MBA', '100万回生きたねこ', '佐野 洋子', '2025-11-11 12:35:00', 'Disponible', '0032'),
('Moomin', 'Tove Jansson', NULL, 'Caméléon', 'ムーミン', 'トーベ・ヤンソン', '2025-11-11 12:40:00', 'Disponible', '0033'),
('Nontan and Friends', 'Sachiko Kiyono', NULL, 'F', 'ノンタンといっしょ', '清野 さちこ', '2025-11-11 12:45:00', 'Disponible', '0034'),
('The Secret Garden', 'Frances Hodgson Burnett', 'https://covers.openlibrary.org/b/isbn/9784033329027-S.jpg', 'Badet', '秘密の花園', 'フランシス・ホジソン・バーネット', '2025-11-11 12:50:00', 'Disponible', '0035'),
('The Giving Tree', 'Shel Silverstein', NULL, 'MBA', 'おおきな木', 'シェル・シルヴァスタイン', '2025-11-11 12:55:00', 'Disponible', '0036'),
('Doraemon: Nobita no Space Adventure', 'Fujiko F. Fujio', NULL, 'Caméléon', 'ドラえもん: のび太の宇宙冒険', '藤子・F・不二雄', '2025-11-11 13:00:00', 'Disponible', '0037'),
('Heidi', 'Johanna Spyri', NULL, 'F', 'アルプスの少女ハイジ', 'ヨハンナ・シュピリ', '2025-11-11 13:05:00', 'Disponible', '0038'),
('Little Red Riding Hood', 'Charles Perrault', NULL, 'Badet', '赤ずきん', 'シャルル・ペロー', '2025-11-11 13:10:00', 'Disponible', '0039'),
('Alice in Wonderland', 'Lewis Carroll', 'https://covers.openlibrary.org/b/isbn/9784033329034-S.jpg', 'MBA', '不思議の国のアリス', 'ルイス・キャロル', '2025-11-11 13:15:00', 'Disponible', '0040');
UNLOCK TABLES;


LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'miyu@mail.com','[\"ROLE_ADMIN\"]','$2y$13$ErwKm1/GiiEkRXM9oqhrXu.wRi3peHjfXAyXJUMOtNjNYuTO8gICi',NULL,'CHERBAL',NULL,NULL,1),(24,'miyuki.cherbal@gmail.com','[\"ROLE_LIBRARIEN\"]','$2y$13$q4jyv9gIRSTcwsRmEmH6wO.CV/jJwHge6zmbbRxBdExwEJmKkRNxu','Minami','Tanaka','タナカ','ミナミ',1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;