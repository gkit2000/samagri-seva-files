/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 8.4.11 : Database - samagriseva
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`samagriseva` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `samagriseva`;

/*Table structure for table `admin_users` */

DROP TABLE IF EXISTS `admin_users`;

CREATE TABLE `admin_users` (
  `id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_hash` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_admin_users_email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `admin_users` */

insert  into `admin_users`(`id`,`email`,`password_hash`,`name`,`role`,`created_at`) values 
('02304f18-ff31-4e6f-bde6-f7beb7349696','admin@samagriseva.com','$2a$10$o1K0XoweJgQ5l1VKLCyWgu8Sg17PRifQLhMyVaiQ/GBG6XqE5Cayq','Admin','admin','2026-10-11 00:56:28.818534');

/*Table structure for table `blog_post_tags` */

DROP TABLE IF EXISTS `blog_post_tags`;

CREATE TABLE `blog_post_tags` (
  `post_id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idx` int NOT NULL,
  `tag` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`post_id`,`idx`),
  CONSTRAINT `fk_blog_post_tags_post` FOREIGN KEY (`post_id`) REFERENCES `blog_posts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `blog_post_tags` */

/*Table structure for table `blog_posts` */

DROP TABLE IF EXISTS `blog_posts`;

CREATE TABLE `blog_posts` (
  `id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `cover_image` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_alt` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read_minutes` int NOT NULL DEFAULT '1',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `published_at` datetime(6) NOT NULL,
  `seo_title` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` varchar(600) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keywords` varchar(600) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_blog_posts_slug` (`slug`),
  KEY `idx_blog_live` (`published`,`published_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `blog_posts` */

insert  into `blog_posts`(`id`,`slug`,`title`,`excerpt`,`content`,`cover_image`,`cover_alt`,`author`,`read_minutes`,`published`,`published_at`,`seo_title`,`seo_description`,`seo_keywords`,`created_at`,`updated_at`) values 
('0c439b114ed74219a4cc0e2ec766da90','sharad-navratri-2026-9-days-of-maa-durga-puja-vidhi-samagri-list-colours-bhog','Sharad Navratri 2026: 9 Days of Maa Durga, Puja Vidhi, Samagri List, Colours & Bhog','Sharad Navratri is one of the most auspicious Hindu festivals, celebrated with devotion, faith and enthusiasm across India. These nine sacred nights are dedicated to the nine forms of Maa Durga, collectively known as Navdurga. Homes are decorated with flowers and lights, diyas illuminate the mandir, and devotees come together to perform puja, observe vrat and seek the blessings of Maa Durga.','<p><strong>नौ रातें, नौ शक्तियाँ, एक विश्वास — माँ दुर्गा आपके घर सुख, शक्ति और समृद्धि लेकर आएँ।</strong></p><p>Sharad Navratri is one of the most auspicious Hindu festivals, celebrated with devotion, faith and enthusiasm across India. These nine sacred nights are dedicated to the nine forms of Maa Durga, collectively known as Navdurga. Homes are decorated with flowers and lights, diyas illuminate the mandir, and devotees come together to perform puja, observe vrat and seek the blessings of Maa Durga.</p><p>In 2026, <strong>Sharad Navratri begins on Sunday, 11 October, and concludes on Monday, 19 October</strong>, with Vijayadashami (Dussehra) celebrated on <strong>Tuesday, 20 October</strong>. The festival begins with Ghatasthapana or Kalash Sthapana, a sacred ritual marking the beginning of Navratri.</p><p>However, before the first day arrives, one important question comes to every devotee\'s mind: <em>What items are required for Navratri puja?</em></p><p>From Kalash, coconut and mango leaves to roli, kumkum, flowers, diya, dhoop, Mata Chunri and bhog ingredients, preparing your puja samagri in advance helps you celebrate these nine days peacefully and without last-minute stress. This complete guide covers the nine forms of Maa Durga, daily puja preparations, samagri checklist, Navratri colours, bhog and Kanya Pujan essentials.</p><h2>Sharad Navratri 2026: Dates and Significance</h2><p>Sharad Navratri is celebrated during the Hindu lunar month of Ashwin. Each of its nine days is dedicated to a different manifestation of Maa Durga, representing strength, devotion, courage, compassion, wisdom and divine energy. The festival concludes with Vijayadashami, symbolising the victory of good over evil.</p><p>Here is the day-wise schedule for Sharad Navratri 2026:</p><ul><li><p><strong>11 October, Sunday:</strong> Day 1 – Maa Shailputri</p></li><li><p><strong>12 October, Monday:</strong> Day 2 – Maa Brahmacharini</p></li><li><p><strong>13 October, Tuesday:</strong> Day 3 – Maa Chandraghanta</p></li><li><p><strong>14 October, Wednesday:</strong> Day 4 – Maa Kushmanda</p></li><li><p><strong>15 October, Thursday:</strong> Day 5 – Maa Skandamata</p></li><li><p><strong>16 October, Friday:</strong> Day 6 – Maa Katyayani</p></li><li><p><strong>17 October, Saturday:</strong> Day 7 – Maa Kalaratri</p></li><li><p><strong>18 October, Sunday:</strong> Day 8 – Maa Mahagauri</p></li><li><p><strong>19 October, Monday:</strong> Day 9 – Maa Siddhidatri</p></li><li><p><strong>20 October, Tuesday:</strong> Vijayadashami / Dussehra</p></li></ul><p>Ghatasthapana is traditionally performed on the first day during an auspicious muhurat. Since the exact timing depends on the local Panchang and city, devotees should confirm the appropriate muhurat for their location before beginning the ritual.</p><h2>The Nine Forms of Maa Durga Worshipped During Navratri</h2><p>Each day of Navratri has a special spiritual significance. Devotees worship the following nine forms of Maa Durga:</p><p><strong>Day 1 – Maa Shailputri:</strong> The daughter of the Himalayas, Maa Shailputri represents strength, purity and stability. Devotees begin Navratri by seeking her blessings for a strong and peaceful life.</p><p><strong>Day 2 – Maa Brahmacharini:</strong> She symbolises devotion, तपस्या, patience and determination. Her worship inspires devotees to remain disciplined and committed to their goals.</p><p><strong>Day 3 – Maa Chandraghanta:</strong> Known for her powerful yet peaceful form, Maa Chandraghanta represents courage, protection and the removal of fear.</p><p><strong>Day 4 – Maa Kushmanda:</strong> Associated with creation, vitality and cosmic energy, Maa Kushmanda represents positivity and the light that removes darkness.</p><p><strong>Day 5 – Maa Skandamata:</strong> The mother of Lord Kartikeya, she represents motherhood, compassion and protection. Devotees pray for the well-being and happiness of their families.</p><p><strong>Day 6 – Maa Katyayani:</strong> A powerful manifestation of Shakti, Maa Katyayani symbolises courage, confidence and the destruction of negativity.</p><p><strong>Day 7 – Maa Kalaratri:</strong> Her fierce form represents the destruction of darkness, fear and evil. Devotees seek her blessings for strength and protection.</p><p><strong>Day 8 – Maa Mahagauri:</strong> Associated with purity, peace and compassion, Maa Mahagauri is worshipped with special devotion by many families on Ashtami.</p><p><strong>Day 9 – Maa Siddhidatri:</strong> The ninth form represents spiritual fulfilment, wisdom and divine blessings. Her worship marks the completion of the nine days of devotion.</p><p>The message of Navratri is timeless: <strong>शक्ति बाहर नहीं, हमारे भीतर भी है — बस उसे जगाने की जरूरत है।</strong></p><h2>Complete Sharad Navratri Puja Samagri List</h2><p>Arranging puja essentials before Navratri begins makes daily worship easier and more organised. Although requirements vary according to family traditions and regional customs, the following list covers the commonly used items for Navratri puja.</p><h3>1. Ghatasthapana or Kalash Sthapana Samagri</h3><p>For the opening ritual of Navratri, keep these items ready:</p><ul><li><p>Kalash or a suitable sacred pot</p></li><li><p>Clean water</p></li><li><p>Coconut</p></li><li><p>Mango leaves</p></li><li><p>Roli and kumkum</p></li><li><p>Akshat (unbroken rice)</p></li><li><p>Mauli or Kalava</p></li><li><p>Flowers</p></li><li><p>Coins</p></li><li><p>Betel nut (supari)</p></li><li><p>Cloves and cardamom, where traditionally used</p></li><li><p>Sacred soil</p></li><li><p>Jau or barley seeds</p></li><li><p>A suitable plate or container for sowing barley</p></li><li><p>Diya</p></li><li><p>Ghee or oil</p></li><li><p>Cotton wicks</p></li></ul><h3>2. Daily Maa Durga Puja Samagri</h3><p>For everyday worship during the nine days, you may need:</p><ul><li><p>Maa Durga idol or photograph</p></li><li><p>Mata Chunri</p></li><li><p>Roli and kumkum</p></li><li><p>Akshat</p></li><li><p>Fresh flowers and garlands</p></li><li><p>Dhoop and incense sticks</p></li><li><p>Camphor (kapoor)</p></li><li><p>Diya, ghee or oil</p></li><li><p>Cotton wicks</p></li><li><p>Panchamrit ingredients, according to tradition</p></li><li><p>Fruits and sweets</p></li><li><p>Coconut</p></li><li><p>Betel leaves and supari</p></li><li><p>Mauli</p></li><li><p>Mata Shringar items, according to family tradition</p></li><li><p>Aarti thali and bell</p></li><li><p>Clean cloth for the puja area</p></li></ul><h3>3. Ashtami and Navami Puja Samagri</h3><p>Many families perform Kanya Pujan on Ashtami, Navami or another day according to their tradition. Common preparations include:</p><ul><li><p>Halwa</p></li><li><p>Puri</p></li><li><p>Kala chana</p></li><li><p>Fruits</p></li><li><p>Sweets</p></li><li><p>Drinking water</p></li><li><p>Kanya gifts</p></li><li><p>Chunri or other traditional offerings, if customary</p></li></ul><p>These items are suggestions rather than mandatory requirements. Follow your family\'s established puja vidhi and local traditions.</p><h2>Navratri Puja Vidhi: How to Prepare Your Home</h2><p>A peaceful Navratri begins with a clean puja space and thoughtful preparation. You do not need elaborate decorations or expensive arrangements to worship Maa Durga with devotion.</p><p><strong>Step 1: Clean the puja area.</strong> Clean your mandir and the surrounding space before the first day. Arrange a clean cloth and keep the required puja items nearby.</p><p><strong>Step 2: Perform Ghatasthapana.</strong> On the first day, perform Kalash Sthapana according to your family tradition and the prescribed local muhurat. If your ritual includes sowing barley, prepare the soil and container in advance.</p><p><strong>Step 3: Place Maa Durga\'s idol or photograph.</strong> Arrange the idol or picture respectfully in your designated puja area. Decorate it with flowers and Mata Chunri as per your custom.</p><p><strong>Step 4: Perform daily puja.</strong> Offer flowers, roli, kumkum, akshat and other traditional offerings. Light a diya and incense safely, then perform aarti and chant Maa Durga\'s name.</p><p><strong>Step 5: Prepare the daily bhog.</strong> Offer fruits, sweets or other suitable bhog according to your family\'s customs. If you observe a vrat, choose food that follows your fasting practices.</p><p><strong>Step 6: Prepare for Ashtami or Navami.</strong> Keep Kanya Pujan ingredients, if required, ready beforehand so you can focus on the worship rather than shopping at the last minute.</p><h2>Navratri 2026 Colours and Their Spiritual Meaning</h2><p>Navratri is also known for its colourful celebrations, particularly in Gujarat and Maharashtra. Many devotees wear a particular colour each day as part of their celebration. However, the day-wise colour sequence can vary by year and calendar source, so check a reliable 2026 Navratri colour calendar for your location before following a specific list.</p><p>Beyond clothing and decoration, each day can also inspire a positive quality in our lives:</p><ul><li><p><strong>Day 1:</strong> Strength</p></li><li><p><strong>Day 2:</strong> Devotion</p></li><li><p><strong>Day 3:</strong> Courage</p></li><li><p><strong>Day 4:</strong> Energy</p></li><li><p><strong>Day 5:</strong> Compassion</p></li><li><p><strong>Day 6:</strong> Determination</p></li><li><p><strong>Day 7:</strong> Fearlessness</p></li><li><p><strong>Day 8:</strong> Purity</p></li><li><p><strong>Day 9:</strong> Spiritual fulfilment</p></li></ul><p>Navratri is not only about decorating the mandir or wearing festive colours. It is also an opportunity to pause, pray, reflect and bring positivity into our daily lives.</p><p>Light a diya, offer flowers, chant Maa Durga\'s name and spend a few quiet moments in prayer. Sometimes, a simple prayer filled with faith is the most meaningful part of the festival.</p><h2>Navratri Bhog: What Can You Offer Maa Durga?</h2><p>Bhog is an important part of Navratri worship. Offerings vary according to the form of Maa Durga worshipped, regional customs and family traditions.</p><p>Common offerings include fresh fruits, mishri, coconut, milk-based sweets and other traditional preparations. Some families prepare special dishes on Ashtami or Navami, including halwa, puri and kala chana for Kanya Pujan.</p><p>If you are observing Navratri vrat, plan your meals according to your personal fasting tradition. Keep the ingredients you need ready in advance, especially if you are preparing meals for the whole family.</p><p>The most important aspect of bhog is the भावना behind the offering. Simple, freshly prepared offerings made with devotion can be just as meaningful as elaborate preparations.</p><h2>How to Prepare Your Home for a Peaceful Navratri</h2><p>A little planning can make the nine days more enjoyable for the entire family. Start by cleaning your mandir and arranging the essential puja materials together. Keep daily-use items such as roli, kumkum, akshat, flowers, diya, dhoop and camphor in one place.</p><p>Prepare the Kalash materials separately so they are easy to find on the first morning. Arrange Mata Chunri, flowers and decorations before Navratri begins. If you observe vrat, plan your meals and shopping in advance. If your family celebrates Ashtami or Navami with Kanya Pujan, keep the required food and traditional offerings ready ahead of time.</p><p>Children can also participate by helping arrange flowers, decorating the puja area or joining the family aarti. These small moments can turn a festival into a beautiful family memory.</p><p>The real beauty of Navratri is not how expensive the decorations are or how elaborate the puja setup looks. It is the devotion, gratitude and love with which the rituals are performed.</p><h2>Make Your Navratri Preparation Easier with Samagri Seva</h2><p>Navratri preparation should be about devotion, not last-minute stress. Yet, finding every small puja item from different shops can take valuable time, especially when the festival is approaching.</p><p><strong>Samagri Seva – Every Puja Preparation, One Sacred Place</strong> is built around the idea of making puja preparation simpler and more convenient. From Kalash and puja essentials to diya, dhoop, roli, kumkum, Mata Chunri, devotional items and puja kits, the aim is to help devotees organise their festival preparations in one place.</p><p>Whether you are preparing for your first Navratri puja, setting up a home mandir, observing a vrat or continuing your family\'s traditional rituals, preparing your samagri in advance allows you to spend less time searching for essentials and more time in prayer.</p><p>Explore <strong>Samagri Seva</strong> for your puja preparation needs and get ready to welcome the nine sacred nights of Maa Durga with faith, peace and devotion.</p><h3>Sharad Navratri 2026: Your Final Puja Checklist</h3><p>Before Navratri begins on 11 October, review this simple checklist:</p><ul><li><p>Kalash</p></li><li><p>Coconut</p></li><li><p>Mango leaves</p></li><li><p>Roli and kumkum</p></li><li><p>Akshat</p></li><li><p>Mauli or Kalava</p></li><li><p>Jau or barley seeds</p></li><li><p>Flowers and garlands</p></li><li><p>Diya</p></li><li><p>Ghee or oil</p></li><li><p>Cotton wicks</p></li><li><p>Dhoop and incense sticks</p></li><li><p>Camphor</p></li><li><p>Mata Chunri</p></li><li><p>Fruits and bhog ingredients</p></li><li><p>Aarti thali and bell</p></li><li><p>Kanya Pujan items, if applicable</p></li><li><p>Other items required by your family\'s puja tradition</p></li></ul><p>You do not need to buy every item on this list. Choose the samagri required for your family\'s rituals and prepare it before the first day.</p><h2>Conclusion: Celebrate Sharad Navratri with Faith and Devotion</h2><p>Sharad Navratri is a celebration of divine feminine energy, courage, devotion and the victory of good over evil. These nine sacred nights remind us to welcome positivity into our homes, strengthen our faith and spend meaningful time with our loved ones.</p><p>A small diya, a few flowers, a clean mandir and a sincere prayer can make your home feel sacred. Prepare your puja samagri in advance, follow your family\'s traditions and celebrate every day with a peaceful heart.</p><p>This Sharad Navratri, let your preparation be simple, your devotion be strong and your celebrations be filled with happiness.</p><p><strong>Samagri Seva – Every Puja Preparation, One Sacred Place.</strong></p><p>May Maa Shailputri, Maa Brahmacharini, Maa Chandraghanta, Maa Kushmanda, Maa Skandamata, Maa Katyayani, Maa Kalaratri, Maa Mahagauri and Maa Siddhidatri bless every home with strength, peace, prosperity and happiness.</p><p><strong>जय माता दी! ??</strong></p>','https://samagriseva.com/og-image.png','','Samagri Seva',9,1,'2026-10-04 00:00:00.000000','','','','2026-10-04 19:41:12.889626','2026-10-04 19:48:12.286567'),
('1a09d15993a2420088f809627e7cd2f7','puja-samagri-list-complete-guide-in-hindi-for-every-hindu-puja','Puja Samagri List: Complete Guide in Hindi for Every Hindu Puja','Preparing for a Hindu puja is a beautiful way to connect with faith, devotion, and tradition. Whether you are celebrating Navratri, performing Ganesh Puja, organizing a Satyanarayan Katha, observing Teej, or conducting a shop opening ceremony, having the right puja samagri ready makes preparation easier and more organized.','<p>Preparing for a Hindu puja is a beautiful way to connect with faith, devotion, and tradition. Whether you are celebrating Navratri, performing Ganesh Puja, organizing a Satyanarayan Katha, observing Teej, or conducting a shop opening ceremony, having the right puja samagri ready makes preparation easier and more organized.</p><p>But one common question often comes up before every religious occasion: <strong>What items are required for puja?</strong></p><p>This complete <strong>Puja Samagri List</strong> brings together essential puja items in Hindi and English, along with separate checklists for popular Hindu festivals and religious ceremonies. Use this guide to prepare your shopping list in advance and avoid last-minute trips to the market.</p><p>At SamagriSeva, our goal is to make finding and preparing puja essentials more convenient, so you can spend more time focusing on your devotion and less time worrying about forgotten items.</p><h2>What Is Puja Samagri?</h2><p>Puja samagri refers to the sacred items used during Hindu worship, religious rituals, festivals, havans, and special ceremonies. These items may include flowers, fruits, incense, diya, ghee, roli, rice, kalash, sweets, and other offerings.</p><p>The exact requirements depend on the type of puja, family traditions, regional customs, and the instructions of your priest or pandit.</p><h2>1. General Puja Samagri List in Hindi</h2><p>If you are looking for a basic puja samagri list for daily worship or a simple religious ceremony at home, the following checklist is a useful starting point.</p><table style=\"min-width: 50px\"><colgroup><col style=\"min-width: 25px\"><col style=\"min-width: 25px\"></colgroup><tbody><tr><th><p>Puja Samagri in Hindi</p></th><th><p>English Name</p></th></tr><tr><td><p>रोली / कुमकुम</p></td><td><p>Roli / Kumkum</p></td></tr><tr><td><p>हल्दी</p></td><td><p>Turmeric</p></td></tr><tr><td><p>अक्षत (चावल)</p></td><td><p>Unbroken Rice</p></td></tr><tr><td><p>चंदन</p></td><td><p>Sandalwood Paste</p></td></tr><tr><td><p>मौली / कलावा</p></td><td><p>Sacred Red Thread</p></td></tr><tr><td><p>धूपबत्ती / अगरबत्ती</p></td><td><p>Incense Sticks</p></td></tr><tr><td><p>दीपक</p></td><td><p>Diya / Oil Lamp</p></td></tr><tr><td><p>घी या तेल</p></td><td><p>Ghee or Oil</p></td></tr><tr><td><p>रुई की बत्ती</p></td><td><p>Cotton Wicks</p></td></tr><tr><td><p>कपूर</p></td><td><p>Camphor</p></td></tr><tr><td><p>फूल</p></td><td><p>Flowers</p></td></tr><tr><td><p>फूलों की माला</p></td><td><p>Flower Garland</p></td></tr><tr><td><p>पान के पत्ते</p></td><td><p>Betel Leaves</p></td></tr><tr><td><p>सुपारी</p></td><td><p>Betel Nuts</p></td></tr><tr><td><p>नारियल</p></td><td><p>Coconut</p></td></tr><tr><td><p>फल</p></td><td><p>Fruits</p></td></tr><tr><td><p>मिठाई / प्रसाद</p></td><td><p>Sweets / Prasad</p></td></tr><tr><td><p>कलश</p></td><td><p>Ritual Water Pot</p></td></tr><tr><td><p>जल / गंगाजल</p></td><td><p>Water / Gangajal</p></td></tr><tr><td><p>पंचपात्र और चम्मच</p></td><td><p>Ritual Water Vessel and Spoon</p></td></tr><tr><td><p>पूजा की थाली</p></td><td><p>Puja Plate</p></td></tr><tr><td><p>घंटी</p></td><td><p>Puja Bell</p></td></tr></tbody></table><p><strong>Quick tip:</strong> Before buying everything, confirm the ritual requirements with your pandit. Some ceremonies require additional items, while others need only a small selection from this list.</p><h2>2. Navratri Puja Samagri List</h2><p>Navratri is celebrated with devotion to Goddess Durga and her nine forms. Depending on family traditions, devotees may perform Ghatasthapana, daily Devi Puja, fasting rituals, Kanya Puja, or havan.</p><p>Here is a practical <strong>Puja Samagri List for Navratri</strong>.</p><ul><li><p>Maa Durga idol or photograph</p></li><li><p>Kalash and coconut</p></li><li><p>Mango leaves or other prescribed leaves</p></li><li><p>Roli, kumkum, haldi, and akshat</p></li><li><p>Red chunri for the Goddess</p></li><li><p>Flowers and garlands</p></li><li><p>Diya, ghee or oil, and cotton wicks</p></li><li><p>Incense sticks and camphor</p></li><li><p>Gangajal or clean water</p></li><li><p>Fruits and seasonal offerings</p></li><li><p>Mishri, sweets, or other prasad</p></li><li><p>Betel leaves and betel nuts</p></li><li><p>Mauli or kalawa</p></li><li><p>Barley seeds (जौ), soil, and a suitable vessel for sowing, where required</p></li><li><p>Havan samagri, havan kund, and other items if performing a havan</p></li><li><p>Ingredients for Kanya Puja, if observed</p></li></ul><h3>What Is Needed for Navratri Kalash Sthapana?</h3><p>Kalash Sthapana, also known as Ghatasthapana, is an important ritual observed by many devotees on the first day of Navratri.</p><p>Commonly required items include a kalash, water, mango leaves where customary, coconut, red cloth or thread, roli, rice, and other materials specified by your family tradition or priest.</p><p>The auspicious timing and exact procedure should be confirmed for your location and the relevant Navratri date.</p><h2>3. Durga Puja Samagri List</h2><p>Durga Puja is celebrated in different ways across India, particularly in West Bengal and eastern India. The items required can vary significantly between household worship, community celebrations, and traditional priest-led rituals.</p><p>A general <strong>Durga Puja Samagri List</strong> may include:</p><ul><li><p>Maa Durga idol or photograph</p></li><li><p>Flowers and flower garlands</p></li><li><p>Bel leaves, where prescribed</p></li><li><p>Red hibiscus or other suitable flowers</p></li><li><p>Roli, kumkum, haldi, and rice</p></li><li><p>Sandalwood paste</p></li><li><p>Incense sticks, dhuno where customary, and camphor</p></li><li><p>Diya, ghee or oil, and cotton wicks</p></li><li><p>Coconut, fruits, and sweets</p></li><li><p>Betel leaves and betel nuts</p></li><li><p>Kalash and ritual water</p></li><li><p>Red cloth or chunri</p></li><li><p>Naivedya and other prescribed offerings</p></li><li><p>Havan samagri, if required for the ceremony</p></li></ul><p><strong>Important:</strong> Traditional Durga Puja can involve specific offerings and ritual materials that are not included in a general household puja kit. Follow your priest\'s list for elaborate or community pujas.</p><h2>4. Puja Samagri List for Teej</h2><p>Teej is an important festival observed by many women, with customs differing between Hariyali Teej, Hartalika Teej, and regional traditions.</p><p>A general <strong>Puja Samagri List for Teej</strong> may include:</p><ul><li><p>Shiva and Parvati idols or photographs</p></li><li><p>Roli and kumkum</p></li><li><p>Haldi and akshat</p></li><li><p>Flowers and garlands</p></li><li><p>Bel leaves for Shiva worship, where customary</p></li><li><p>Fruits and sweets</p></li><li><p>Seasonal offerings</p></li><li><p>Mehndi</p></li><li><p>Bangles and traditional shringar items</p></li><li><p>Chunri or cloth for the deities</p></li><li><p>Diya, ghee, and cotton wicks</p></li><li><p>Incense sticks and camphor</p></li><li><p>Kalash and water</p></li><li><p>Coconut, betel leaves, and betel nuts, where prescribed</p></li></ul><p>For Hartalika Teej, additional items may be needed for the traditional worship of Lord Shiva and Goddess Parvati. Check your family\'s ritual instructions before shopping.</p><h2>5. Satyanarayan Puja Samagri List</h2><p>Satyanarayan Puja is commonly performed at home on special occasions, during festivals, after important milestones, and to express gratitude and devotion to Lord Vishnu.</p><p>The following <strong>Satyanarayan Puja Samagri List</strong> covers common preparations:</p><ul><li><p>Lord Satyanarayan or Lord Vishnu idol or photograph</p></li><li><p>Puja chowki and clean cloth</p></li><li><p>Kalash and coconut</p></li><li><p>Mango leaves, where customary</p></li><li><p>Roli, kumkum, haldi, and akshat</p></li><li><p>Chandan</p></li><li><p>Flowers and garlands</p></li><li><p>Tulsi leaves for offerings, as prescribed</p></li><li><p>Panchamrit ingredients: milk, curd, ghee, honey, and sugar</p></li><li><p>Fruits and seasonal offerings</p></li><li><p>Banana and other ingredients specified for prasad</p></li><li><p>Ingredients for Satyanarayan prasad or sheera, according to family tradition</p></li><li><p>Betel leaves and betel nuts</p></li><li><p>Diya, ghee, and cotton wicks</p></li><li><p>Incense sticks and camphor</p></li><li><p>Gangajal or clean water</p></li><li><p>Satyanarayan Katha book</p></li><li><p>Panchapatra and spoon</p></li><li><p>Aarti thali</p></li></ul><h3>What Is Panchamrit Made Of?</h3><p>Panchamrit is traditionally prepared using five ingredients: milk, curd, ghee, honey, and sugar. The exact preparation and offerings should follow the instructions used in your household or by your priest.</p><h2>6. Vishwakarma Puja Samagri List in Hindi</h2><p>Vishwakarma Puja is observed by many artisans, mechanics, engineers, factory owners, workshop operators, and businesses to honor Lord Vishwakarma, traditionally associated with craftsmanship and creation.</p><p>Common items for <strong>Vishwakarma Puja Samagri List in Hindi</strong> include:</p><ul><li><p>भगवान विश्वकर्मा की मूर्ति या तस्वीर</p></li><li><p>पूजा की चौकी और साफ कपड़ा</p></li><li><p>रोली, कुमकुम और हल्दी</p></li><li><p>अक्षत (चावल)</p></li><li><p>फूल और फूलों की माला</p></li><li><p>फल और मिठाई</p></li><li><p>नारियल और सुपारी</p></li><li><p>पान के पत्ते</p></li><li><p>कलश और जल</p></li><li><p>दीपक, घी या तेल, और रुई की बत्ती</p></li><li><p>अगरबत्ती और कपूर</p></li><li><p>मौली या कलावा</p></li><li><p>प्रसाद</p></li><li><p>मशीनों, औजारों या कार्यस्थल की पारंपरिक पूजा के लिए आवश्यक सामग्री</p></li></ul><h3>How to Prepare for Vishwakarma Puja</h3><p>Clean the workplace and arrange the tools, machines, or equipment that will be worshipped. Place the deity\'s image in a clean area and keep the required puja items ready.</p><p>Follow your family\'s customs or the priest\'s instructions for the actual ritual. For factories and workshops, plan the ceremony so that worship can be conducted safely without interfering with machinery or workplace safety procedures.</p><h2>7. Ganesh Puja Samagri List</h2><p>Lord Ganesha is worshipped before many auspicious beginnings, including festivals, weddings, housewarmings, business openings, and other ceremonies.</p><p>A general <strong>Ganesh Puja Samagri List</strong> includes:</p><ul><li><p>Lord Ganesha idol or photograph</p></li><li><p>Red or yellow cloth for the puja chowki</p></li><li><p>Roli, kumkum, haldi, and akshat</p></li><li><p>Durva grass, where prescribed</p></li><li><p>Red flowers or other suitable flowers</p></li><li><p>Modak or other traditional sweets</p></li><li><p>Fruits and coconut</p></li><li><p>Betel leaves and betel nuts</p></li><li><p>Kalash and water</p></li><li><p>Diya, ghee, and cotton wicks</p></li><li><p>Incense sticks and camphor</p></li><li><p>Sandalwood paste</p></li><li><p>Mauli or kalawa</p></li><li><p>Puja thali and bell</p></li><li><p>Panchamrit, if required</p></li><li><p>Aarti book or prayer text</p></li></ul><p>Durva grass and modak are commonly associated with Lord Ganesha worship. The exact number and type of offerings can vary by tradition.</p><h2>8. दुकान पूजन सामग्री लिस्ट (Shop Opening Puja)</h2><p>Starting a new shop or office is an important milestone. Many business owners perform Ganesh Puja, Lakshmi Puja, or a local traditional opening ceremony to seek blessings for prosperity and a successful beginning.</p><p>Here is a practical <strong>दुकान पूजन सामग्री लिस्ट</strong>:</p><ul><li><p>गणेश जी की मूर्ति या तस्वीर</p></li><li><p>लक्ष्मी जी की मूर्ति या तस्वीर, यदि पूजा में शामिल हों</p></li><li><p>पूजा की चौकी और साफ कपड़ा</p></li><li><p>रोली, कुमकुम, हल्दी और अक्षत</p></li><li><p>मौली या कलावा</p></li><li><p>फूल और फूलों की माला</p></li><li><p>नारियल और सुपारी</p></li><li><p>पान के पत्ते</p></li><li><p>कलश और जल</p></li><li><p>दीपक, घी या तेल, और रुई की बत्ती</p></li><li><p>अगरबत्ती और कपूर</p></li><li><p>फल, मिठाई और प्रसाद</p></li><li><p>गंगाजल, यदि आवश्यक हो</p></li><li><p>नई बही-खाता या रजिस्टर, यदि परंपरा में शामिल हो</p></li><li><p>दुकान के प्रवेश द्वार के लिए तोरण या सजावट</p></li><li><p>स्वस्तिक बनाने के लिए निर्धारित सामग्री, जैसे रोली या कुमकुम</p></li><li><p>लक्ष्मी पूजन के लिए आवश्यक अतिरिक्त सामग्री, यदि किया जा रहा हो</p></li></ul><h3>Shop Opening Puja Checklist</h3><p>Before the ceremony, clean the shop, arrange the puja area, and keep the account books, tools, or business items ready if they are part of the ritual.</p><p>Ask your pandit whether a separate Lakshmi Puja, Ganesh Puja, or Vastu-related ceremony is planned, because each may require additional items.</p><h2>9. Puja Samagri List PDF: How to Prepare a Printable Checklist</h2><p>If you are searching for a <strong>Puja Samagri List PDF</strong>, a printable checklist can help you organize your shopping before a festival or religious ceremony.</p><p>For best results, prepare separate lists for:</p><ul><li><p>Daily home puja</p></li><li><p>Navratri and Durga Puja</p></li><li><p>Teej</p></li><li><p>Satyanarayan Puja</p></li><li><p>Ganesh Puja</p></li><li><p>Vishwakarma Puja</p></li><li><p>Shop opening or Lakshmi-Ganesh Puja</p></li></ul><p>Keep three columns on your checklist: item name, quantity, and purchased/not purchased. Quantities should be based on the number of participants and the specific ritual instructions.</p><p>You can use the tables in this guide to create your own printable checklist. Confirm the final list with your priest before purchasing specialized or ritual-specific items.</p><h2>10. How to Shop for Puja Samagri Without Last-Minute Stress</h2><p>Preparing puja materials does not have to be complicated. A little planning can make the experience much easier.</p><p><strong>1. Identify the puja first.</strong> Start by confirming the ceremony or festival, because the required items vary.</p><p><strong>2. Prepare a checklist.</strong> Separate the essentials from optional or tradition-specific offerings.</p><p><strong>3. Check what you already have.</strong> Reusable items such as a puja thali, bell, kalash, and diya may already be available at home.</p><p><strong>4. Purchase fresh offerings closer to the puja.</strong> Buy flowers, fruits, and other perishable items according to the ceremony date.</p><p><strong>5. Arrange items in advance.</strong> Keep the samagri organized in one place to reduce last-minute confusion.</p><p><strong>6. Follow local customs.</strong> Your priest or family tradition may specify materials that differ from a general checklist.</p><h3>Find Puja Essentials with SamagriSeva</h3><p>Preparing for a festival or religious ceremony should be about devotion, not the stress of finding every item at the last minute.</p><p>SamagriSeva helps you explore puja essentials and puja kits for different religious occasions. Browse the available products to find items relevant to your ceremony and make your preparations more convenient.</p><p>Visit <a href=\"http://SamagriSeva.com\"><strong>SamagriSeva.com</strong></a> to explore puja samagri and get ready for your next auspicious occasion.</p><h2>Frequently Asked Questions About Puja Samagri</h2><h3>1. What is included in a basic Puja Samagri List?</h3><p>A basic list commonly includes roli, kumkum, haldi, akshat, flowers, incense sticks, a diya, ghee or oil, cotton wicks, camphor, fruits, coconut, a kalash, and prasad. Requirements vary by puja.</p><h3>2. Where can I find a Puja Samagri List in Hindi?</h3><p>This guide includes Hindi and English names for common puja items, along with separate lists for Navratri, Durga Puja, Teej, Satyanarayan Puja, Ganesh Puja, Vishwakarma Puja, and shop opening ceremonies.</p><h3>3. What items are required for Navratri Puja?</h3><p>Common items include a Maa Durga idol or photograph, kalash, coconut, roli, kumkum, rice, flowers, diya, incense, fruits, and prasad. Ghatasthapana, havan, and Kanya Puja may require additional materials.</p><h3>4. What is required for Satyanarayan Puja at home?</h3><p>Common requirements include a Lord Vishnu or Satyanarayan image, kalash, flowers, fruits, tulsi leaves where prescribed, panchamrit ingredients, prasad ingredients, a Katha book, diya, incense, and other traditional offerings.</p><h3>5. What is the difference between Ganesh Puja and Lakshmi Puja samagri?</h3><p>Both may use common items such as flowers, rice, roli, diya, incense, and prasad. Ganesh Puja may include durva grass and modak, while Lakshmi Puja often includes additional offerings and materials associated with Goddess Lakshmi and prosperity.</p><h3>6. Is the same puja samagri list suitable for every Hindu puja?</h3><p>No. Some items are common across many rituals, but festival-specific ceremonies can require different offerings and materials. Regional customs, family traditions, and priestly instructions should guide the final list.</p><h3>7. How can I prepare a puja shopping list?</h3><p>Choose the ceremony, write down the required items, check your existing supplies, note quantities, and purchase fresh offerings closer to the occasion. A printable checklist can help you track what has been arranged.</p><h3>8. Where can I buy puja samagri online?</h3><p>You can visit <a href=\"http://SamagriSeva.com\">SamagriSeva.com</a> to explore available puja essentials and kits. Check individual product listings for the items included, availability, and delivery information before placing an order.</p><h2>Conclusion</h2><p>Every Hindu puja carries its own significance, customs, and traditions. Whether you need a basic puja samagri list for home worship, a detailed Navratri checklist, a Satyanarayan Puja list, or the items required for a new shop opening, planning ahead makes preparation easier.</p><p>Use this guide as your starting point, confirm any ceremony-specific requirements, and organize your samagri before the auspicious day.</p><p><strong>Prepare with devotion. Celebrate with peace of mind. Explore puja essentials at </strong><a href=\"http://SamagriSeva.com\"><strong>SamagriSeva.com</strong></a><strong>.</strong></p>','','','Samagri Seva',10,1,'2026-10-09 00:00:00.000000','','','','2026-10-09 06:54:58.918882','2026-10-09 06:54:58.918898'),
('a3ca774b321c4ebf981417487934e726','hindu-festivals-vrat-from-october-to-december-2026-complete-puja-calendar-puja-samagri-checklist','Hindu Festivals October to December 2026: Complete Puja Calendar & Puja Samagri Checklist','भारत में त्योहार केवल उत्सव का अवसर नहीं होते, बल्कि परिवार, परंपरा, भक्ति और सकारात्मक ऊर्जा से जुड़ा एक महत्वपूर्ण हिस्सा हैं। साल के आखिरी तीन महीने—अक्टूबर, नवंबर और दिसंबर—हिंदू धर्म के दृष्टिकोण से विशेष रूप से महत्वपूर्ण हैं। इस दौरान पितृ पक्ष, नवरात्रि, दशहरा, शरद पूर्णिमा, करवा चौथ, धनतेरस, दीपावली, गोवर्धन पूजा, भाई दूज, छठ पूजा, तुलसी विवाह, देव दीपावली, कालभैरव जयंती, गीता जयंती और दत्तात्रेय जयंती जैसे अनेक पर्व आते हैं।','<p>अक्टूबर से दिसंबर 2026 तक हिंदू व्रत-त्योहार: पूरी पूजा कैलेंडर और पूजा सामग्री चेकलिस्ट</p><p><strong>अक्टूबर से दिसंबर 2026 तक कौन-कौन से व्रत, त्योहार और धार्मिक पर्व हैं? जानिए पूरी तारीख, पूजा की तैयारी और जरूरी पूजा सामग्री की चेकलिस्ट।</strong></p><p>भारत में त्योहार केवल उत्सव का अवसर नहीं होते, बल्कि परिवार, परंपरा, भक्ति और सकारात्मक ऊर्जा से जुड़ा एक महत्वपूर्ण हिस्सा हैं। साल के आखिरी तीन महीने—<strong>अक्टूबर, नवंबर और दिसंबर</strong>—हिंदू धर्म के दृष्टिकोण से विशेष रूप से महत्वपूर्ण हैं। इस दौरान पितृ पक्ष, नवरात्रि, दशहरा, शरद पूर्णिमा, करवा चौथ, धनतेरस, दीपावली, गोवर्धन पूजा, भाई दूज, छठ पूजा, तुलसी विवाह, देव दीपावली, कालभैरव जयंती, गीता जयंती और दत्तात्रेय जयंती जैसे अनेक पर्व आते हैं।</p><p>अगर आप पूरे परिवार के साथ पूजा-पाठ की तैयारी करते हैं, तो पहले से पूजा सामग्री की checklist तैयार करना काफी उपयोगी होता है।</p><p><strong>SamagriSeva</strong> का उद्देश्य भी यही है—आपकी पूजा की तैयारी को आसान बनाना, ताकि जरूरी पूजा सामग्री एक ही जगह से आसानी से मिल सके।</p><blockquote><p><strong>नोट:</strong> हिंदू त्योहारों की तिथियां स्थान, पंचांग और क्षेत्रीय परंपराओं के अनुसार कुछ मामलों में अलग हो सकती हैं। नीचे दी गई प्रमुख तिथियां 2026 के भारतीय पंचांग संदर्भ के आधार पर हैं। किसी विशेष पूजा के मुहूर्त के लिए अपने स्थानीय पंचांग को अवश्य देखें।</p></blockquote><hr><h2>अक्टूबर 2026 के प्रमुख व्रत और त्योहार</h2><p>अक्टूबर 2026 की शुरुआत पितृ पक्ष के महत्वपूर्ण दिनों से होती है और इसके बाद नवरात्रि, दुर्गा अष्टमी, महानवमी और दशहरा जैसे बड़े पर्व आते हैं।</p><h3>7 अक्टूबर – द्वादशी श्राद्ध</h3><p>पितृ पक्ष के दौरान अलग-अलग तिथियों पर पूर्वजों के लिए श्राद्ध और तर्पण किया जाता है। 7 अक्टूबर को द्वादशी श्राद्ध से जुड़े धार्मिक अनुष्ठान किए जाते हैं।</p><h3>8 अक्टूबर – मासिक शिवरात्रि और प्रदोष व्रत</h3><p>भगवान शिव की आराधना के लिए शिवरात्रि और प्रदोष व्रत महत्वपूर्ण माने जाते हैं। भक्त शिवलिंग पर जल, दूध, बेलपत्र, पुष्प और अन्य पूजन सामग्री अर्पित करते हैं।</p><h3>9 अक्टूबर – चतुर्दशी श्राद्ध</h3><p>पितृ पक्ष का एक महत्वपूर्ण दिन, जिस पर निर्धारित तिथि के अनुसार पूर्वजों के लिए श्राद्ध कर्म किए जाते हैं।</p><h3>10 अक्टूबर – सर्वपितृ अमावस्या</h3><p><strong>सर्वपितृ अमावस्या</strong> पितृ पक्ष का अंतिम और अत्यंत महत्वपूर्ण दिन है। जिन पूर्वजों की श्राद्ध तिथि ज्ञात न हो या किसी कारण से छूट गई हो, उनके लिए इस दिन श्राद्ध, तर्पण और दान करने की परंपरा है। 2026 में यह 10 अक्टूबर को है।</p><h3>11 अक्टूबर – शारदीय नवरात्रि प्रारंभ और घटस्थापना</h3><p>11 अक्टूबर 2026 से <strong>शारदीय नवरात्रि</strong> प्रारंभ होगी। इस दिन घटस्थापना के साथ मां दुर्गा की आराधना शुरू की जाती है।</p><h3>12 अक्टूबर – चंद्र दर्शन</h3><p>अमावस्या के बाद चंद्र दर्शन का धार्मिक महत्व माना जाता है।</p><h3>14 अक्टूबर – कपर्दीश चतुर्थी</h3><p>गणेश जी से संबंधित इस व्रत में भगवान गणपति की पूजा की जाती है।</p><h3>15 अक्टूबर – उपांग ललिता व्रत</h3><p>मां ललिता की आराधना से जुड़ा महत्वपूर्ण व्रत।</p><h3>16 अक्टूबर – सरस्वती आवाहन और स्कंद षष्ठी</h3><p>नवरात्रि के दौरान विद्या और ज्ञान की देवी मां सरस्वती की आराधना से जुड़े अनुष्ठान किए जाते हैं।</p><h3>17 अक्टूबर – सरस्वती पूजा</h3><p>विद्यार्थियों, शिक्षकों और ज्ञान-साधना से जुड़े लोगों के लिए विशेष दिन।</p><h3>19 अक्टूबर – दुर्गा अष्टमी और महानवमी</h3><p>नवरात्रि के सबसे महत्वपूर्ण दिनों में से एक। कई परिवारों में कन्या पूजन, हवन और विशेष दुर्गा पूजा की जाती है।</p><h3>20 अक्टूबर – विजयादशमी / दशहरा</h3><p><strong>विजयादशमी</strong> बुराई पर अच्छाई की विजय का प्रतीक है। इस दिन भगवान राम की विजय और मां दुर्गा की महिषासुर पर विजय का स्मरण किया जाता है।</p><h3>22 अक्टूबर – पापांकुशा एकादशी</h3><p>भगवान विष्णु को समर्पित महत्वपूर्ण एकादशी व्रत।</p><h3>25 अक्टूबर – शरद पूर्णिमा और कोजागरा पूजा</h3><p>शरद पूर्णिमा का धार्मिक महत्व बहुत अधिक है। कई क्षेत्रों में इस दिन लक्ष्मी पूजा और कोजागरा पूजा की परंपरा भी है।</p><h3>29 अक्टूबर – करवा चौथ</h3><p>करवा चौथ विशेष रूप से विवाहित महिलाओं द्वारा पति की दीर्घायु और सुख-समृद्धि की कामना के लिए रखा जाने वाला प्रसिद्ध व्रत है।</p><hr><p>नवंबर 2026 के प्रमुख व्रत और त्योहार</p><p>नवंबर 2026 SamagriSeva के लिए विशेष रूप से महत्वपूर्ण महीना है क्योंकि इसी महीने <strong>धनतेरस, दीपावली, लक्ष्मी पूजा, गोवर्धन पूजा, भाई दूज और छठ पूजा</strong> जैसे बड़े पर्व आते हैं।</p><h3>1 नवंबर – अहोई अष्टमी</h3><p>संतान की सुख-समृद्धि और लंबी आयु की कामना के लिए माताएं अहोई अष्टमी का व्रत करती हैं।</p><h3>5 नवंबर – गोवत्स द्वादशी और रमा एकादशी</h3><p>गोवत्स द्वादशी में गौ पूजा की परंपरा है। इसी अवधि में रमा एकादशी भी आती है।</p><h3>6 नवंबर – धनतेरस</h3><p><strong>धनतेरस</strong> दीपावली पर्व की शुरुआत का प्रमुख दिन है। इस दिन धन्वंतरि भगवान, माता लक्ष्मी और कुबेर की पूजा की जाती है।</p><p>घर की सफाई, दीप सजावट और पूजा सामग्री की तैयारी इस दिन से पहले कर लेना बेहतर रहता है।</p><h3>7 नवंबर – छोटी दिवाली / नरक चतुर्दशी से पूर्व की तैयारियां</h3><p>काली चौदस और हनुमान पूजा जैसी परंपराएं कई क्षेत्रों में इस दिन मनाई जाती हैं।</p><h3>8 नवंबर – दीपावली और लक्ष्मी पूजा</h3><p><strong>8 नवंबर 2026 को दीपावली और लक्ष्मी पूजा</strong> का प्रमुख पर्व है। विभिन्न परंपराओं में इस दिन लक्ष्मी-गणेश पूजा, दीप प्रज्वलन, व्यापारिक पूजा, बही-खाता पूजा और अन्य धार्मिक अनुष्ठान किए जाते हैं।</p><h3>दीपावली पूजा के लिए सामान्य सामग्री</h3><ul><li><p>लक्ष्मी-गणेश की प्रतिमा</p></li><li><p>कलश</p></li><li><p>मौली/कलावा</p></li><li><p>रोली और कुमकुम</p></li><li><p>अक्षत</p></li><li><p>फूल और माला</p></li><li><p>पान और सुपारी</p></li><li><p>लौंग और इलायची</p></li><li><p>धूप और अगरबत्ती</p></li><li><p>कपूर</p></li><li><p>घी</p></li><li><p>दीपक</p></li><li><p>रुई की बत्ती</p></li><li><p>पंचामृत सामग्री</p></li><li><p>फल और मिठाई</p></li><li><p>नारियल</p></li><li><p>पूजा थाली</p></li><li><p>गंगाजल</p></li><li><p>सिक्के</p></li><li><p>लक्ष्मी पूजन की विशेष सामग्री</p></li></ul><p>अगर आप अलग-अलग दुकानों से ये सारी चीजें इकट्ठी करने के बजाय पूजा की तैयारी आसान बनाना चाहते हैं, तो <strong>SamagriSeva पर तैयार पूजा किट</strong> एक सुविधाजनक विकल्प हो सकती है।</p><h3>9 नवंबर – गोवर्धन पूजा और अन्नकूट</h3><p>भगवान श्रीकृष्ण द्वारा गोवर्धन पर्वत उठाने की कथा से जुड़ा यह पर्व दीपावली के अगले दिन मनाया जाता है। अन्नकूट और गोवर्धन पूजा की विशेष परंपरा है।</p><h3>10 नवंबर – गुजराती नववर्ष / बाली प्रतिपदा से जुड़े उत्सव</h3><p>कई क्षेत्रों में दीपावली के बाद नए वर्ष की शुरुआत और विशेष पूजा की जाती है।</p><h3>11 नवंबर – भाई दूज और चित्रगुप्त पूजा</h3><p>भाई-बहन के प्रेम और सुरक्षा का प्रतीक <strong>भाई दूज</strong>। कई समुदायों में इसी दिन चित्रगुप्त पूजा भी की जाती है।</p><h3>13–14 नवंबर – लाभ पंचमी से जुड़े पर्व</h3><p>विशेष रूप से गुजरात और कुछ अन्य क्षेत्रों में लाभ पंचमी का धार्मिक और व्यापारिक महत्व है।</p><h3>15 नवंबर – छठ पूजा</h3><p><strong>छठ पूजा</strong> सूर्य देव और छठी मैया को समर्पित प्रमुख पर्व है। बिहार, झारखंड, पूर्वी उत्तर प्रदेश और देश के अन्य हिस्सों में इसकी विशेष परंपरा है।</p><p>छठ पूजा में व्रत, प्रसाद, फल, गन्ना, ठेकुआ, सूप, टोकरी और सूर्य को अर्घ्य देने की सामग्री का विशेष महत्व होता है।</p><h3>16 नवंबर – वृश्चिक संक्रांति</h3><p>सूर्य के वृश्चिक राशि में प्रवेश से संबंधित संक्रांति।</p><h3>17 नवंबर – गोपाष्टमी</h3><p>गौ पूजा और भगवान श्रीकृष्ण से जुड़ा महत्वपूर्ण दिन।</p><h3>18 नवंबर – अक्षय नवमी</h3><p>अक्षय नवमी को कई धार्मिक परंपराओं में विशेष पुण्यकारी दिन माना जाता है।</p><h3>20 नवंबर – देवउठनी एकादशी</h3><p>भगवान विष्णु के योग निद्रा से जागने से जुड़ी <strong>देवउठनी एकादशी</strong> का विशेष महत्व है।</p><h3>21 नवंबर – तुलसी विवाह</h3><p><strong>तुलसी विवाह</strong> हिंदू धार्मिक परंपरा का अत्यंत लोकप्रिय पर्व है। इस दिन तुलसी माता और भगवान विष्णु/शालिग्राम का विवाह कराया जाता है।</p><h3>तुलसी विवाह के लिए सामान्य सामग्री</h3><ul><li><p>तुलसी का पौधा</p></li><li><p>शालिग्राम/विष्णु स्वरूप</p></li><li><p>मंडप सजावट</p></li><li><p>मौली</p></li><li><p>रोली</p></li><li><p>अक्षत</p></li><li><p>फूल</p></li><li><p>माला</p></li><li><p>दीपक</p></li><li><p>धूप</p></li><li><p>फल</p></li><li><p>मिठाई</p></li><li><p>नारियल</p></li><li><p>कलश</p></li><li><p>विवाह संबंधी सजावटी सामग्री</p></li></ul><h3>24 नवंबर – देव दीपावली और कार्तिक पूर्णिमा</h3><p><strong>देव दीपावली</strong> और कार्तिक पूर्णिमा का पर्व दीपों, पूजा और धार्मिक स्नान-दान की परंपराओं से जुड़ा है। कई स्थानों पर मंदिरों और घरों में विशेष दीप सजाए जाते हैं।</p><hr><p>दिसंबर 2026 के प्रमुख व्रत और त्योहार</p><p>साल के अंतिम महीने में भी कई महत्वपूर्ण धार्मिक पर्व आते हैं।</p><h3>1 दिसंबर – कालभैरव जयंती</h3><p>भगवान कालभैरव की आराधना का विशेष दिन। शिव भक्तों के लिए इसका विशेष महत्व है।</p><h3>4 दिसंबर – उत्पन्ना एकादशी</h3><p>भगवान विष्णु और एकादशी माता को समर्पित महत्वपूर्ण व्रत।</p><h3>7 दिसंबर – मासिक शिवरात्रि</h3><p>भगवान शिव की पूजा और व्रत का दिन।</p><h3>8 दिसंबर – मार्गशीर्ष अमावस्या</h3><p>अमावस्या पर स्नान, दान, दीपदान और पितृ स्मरण जैसी धार्मिक परंपराएं निभाई जाती हैं।</p><h3>10 दिसंबर – चंद्र दर्शन</h3><p>अमावस्या के बाद चंद्र दर्शन।</p><h3>14 दिसंबर – विवाह पंचमी</h3><p><strong>विवाह पंचमी</strong> भगवान श्रीराम और माता सीता के विवाह की स्मृति से जुड़ा पर्व है। विशेष रूप से वैष्णव और राम भक्तों के लिए इसका महत्व है।</p><h3>15 दिसंबर – स्कंद षष्ठी</h3><p>भगवान कार्तिकेय/स्कंद की पूजा से संबंधित महत्वपूर्ण व्रत।</p><h3>16 दिसंबर – धनु संक्रांति</h3><p>सूर्य के धनु राशि में प्रवेश से जुड़ी संक्रांति।</p><h3>17 दिसंबर – मासिक दुर्गाष्टमी</h3><p>मां दुर्गा की आराधना के लिए मासिक दुर्गाष्टमी का व्रत किया जाता है।</p><h3>20 दिसंबर – गीता जयंती और मोक्षदा एकादशी</h3><p><strong>गीता जयंती</strong> भगवान श्रीकृष्ण द्वारा कुरुक्षेत्र में श्रीमद्भगवद्गीता का उपदेश दिए जाने की स्मृति में मनाई जाती है। इसी दिन मोक्षदा एकादशी भी है।</p><h3>23 दिसंबर – दत्तात्रेय जयंती और मार्गशीर्ष पूर्णिमा</h3><p>भगवान दत्तात्रेय की पूजा के साथ मार्गशीर्ष पूर्णिमा का भी धार्मिक महत्व है।</p><h3>24 दिसंबर – अन्नपूर्णा जयंती</h3><p>मां अन्नपूर्णा को अन्न, पोषण और समृद्धि की देवी माना जाता है। इस दिन विशेष पूजा की जाती है।</p><h3>26 दिसंबर – संकष्टी चतुर्थी</h3><p>भगवान गणेश को समर्पित संकष्टी चतुर्थी का व्रत। गणेश भक्त इस दिन व्रत और पूजा करते हैं।</p><h3>27 दिसंबर – मंडला पूजा</h3><p>विशेष रूप से दक्षिण भारतीय और सबरीमला परंपरा में मंडला पूजा का महत्व है।</p><h3>30 दिसंबर – कालाष्टमी</h3><p>भगवान कालभैरव की आराधना से संबंधित कालाष्टमी।</p><hr><p>अक्टूबर से दिसंबर 2026: Quick Festival Calendar</p><table style=\"min-width: 50px\"><colgroup><col style=\"min-width: 25px\"><col style=\"min-width: 25px\"></colgroup><tbody><tr><th><p>तारीख</p></th><th><p>प्रमुख पर्व</p></th></tr><tr><td><p>7 अक्टूबर</p></td><td><p>द्वादशी श्राद्ध</p></td></tr><tr><td><p>8 अक्टूबर</p></td><td><p>मासिक शिवरात्रि</p></td></tr><tr><td><p>10 अक्टूबर</p></td><td><p>सर्वपितृ अमावस्या</p></td></tr><tr><td><p>11 अक्टूबर</p></td><td><p>नवरात्रि प्रारंभ, घटस्थापना</p></td></tr><tr><td><p>16 अक्टूबर</p></td><td><p>सरस्वती आवाहन</p></td></tr><tr><td><p>17 अक्टूबर</p></td><td><p>सरस्वती पूजा</p></td></tr><tr><td><p>19 अक्टूबर</p></td><td><p>दुर्गा अष्टमी, महानवमी</p></td></tr><tr><td><p>20 अक्टूबर</p></td><td><p>विजयादशमी, दशहरा</p></td></tr><tr><td><p>22 अक्टूबर</p></td><td><p>पापांकुशा एकादशी</p></td></tr><tr><td><p>25 अक्टूबर</p></td><td><p>शरद पूर्णिमा, कोजागरा पूजा</p></td></tr><tr><td><p>29 अक्टूबर</p></td><td><p>करवा चौथ</p></td></tr><tr><td><p>1 नवंबर</p></td><td><p>अहोई अष्टमी</p></td></tr><tr><td><p>5 नवंबर</p></td><td><p>गोवत्स द्वादशी, रमा एकादशी</p></td></tr><tr><td><p>6 नवंबर</p></td><td><p>धनतेरस</p></td></tr><tr><td><p>7 नवंबर</p></td><td><p>काली चौदस</p></td></tr><tr><td><p>8 नवंबर</p></td><td><p>दीपावली, लक्ष्मी पूजा</p></td></tr><tr><td><p>9 नवंबर</p></td><td><p>गोवर्धन पूजा</p></td></tr><tr><td><p>11 नवंबर</p></td><td><p>भाई दूज, चित्रगुप्त पूजा</p></td></tr><tr><td><p>15 नवंबर</p></td><td><p>छठ पूजा</p></td></tr><tr><td><p>20 नवंबर</p></td><td><p>देवउठनी एकादशी</p></td></tr><tr><td><p>21 नवंबर</p></td><td><p>तुलसी विवाह</p></td></tr><tr><td><p>24 नवंबर</p></td><td><p>देव दीपावली, कार्तिक पूर्णिमा</p></td></tr><tr><td><p>1 दिसंबर</p></td><td><p>कालभैरव जयंती</p></td></tr><tr><td><p>4 दिसंबर</p></td><td><p>उत्पन्ना एकादशी</p></td></tr><tr><td><p>14 दिसंबर</p></td><td><p>विवाह पंचमी</p></td></tr><tr><td><p>15 दिसंबर</p></td><td><p>स्कंद षष्ठी</p></td></tr><tr><td><p>20 दिसंबर</p></td><td><p>गीता जयंती, मोक्षदा एकादशी</p></td></tr><tr><td><p>23 दिसंबर</p></td><td><p>दत्तात्रेय जयंती</p></td></tr><tr><td><p>24 दिसंबर</p></td><td><p>अन्नपूर्णा जयंती</p></td></tr><tr><td><p>26 दिसंबर</p></td><td><p>संकष्टी चतुर्थी</p></td></tr><tr><td><p>30 दिसंबर</p></td><td><p>कालाष्टमी</p></td></tr></tbody></table><hr><p>हर त्योहार से पहले पूजा सामग्री की Checklist</p><p>त्योहार चाहे बड़ा हो या छोटा, पूजा की तैयारी आखिरी समय पर करने से अक्सर कुछ जरूरी चीजें छूट जाती हैं।</p><p>एक सामान्य पूजा सामग्री checklist में आप ये चीजें पहले से रख सकते हैं:</p><h3>पूजा की मूल सामग्री</h3><ul><li><p>पूजा थाली</p></li><li><p>कलश</p></li><li><p>नारियल</p></li><li><p>मौली/कलावा</p></li><li><p>रोली</p></li><li><p>कुमकुम</p></li><li><p>अक्षत</p></li><li><p>हल्दी</p></li><li><p>चंदन</p></li><li><p>गंगाजल</p></li><li><p>सुपारी</p></li><li><p>पान</p></li><li><p>लौंग</p></li><li><p>इलायची</p></li></ul><h3>दीप और धूप सामग्री</h3><ul><li><p>दीपक</p></li><li><p>घी/तेल</p></li><li><p>रुई की बत्ती</p></li><li><p>कपूर</p></li><li><p>अगरबत्ती</p></li><li><p>धूप</p></li></ul><h3>सजावट और प्रसाद</h3><ul><li><p>फूल</p></li><li><p>माला</p></li><li><p>फल</p></li><li><p>मिठाई</p></li><li><p>पंचामृत सामग्री</p></li><li><p>प्रसाद सामग्री</p></li></ul><p>हालांकि अलग-अलग देवी-देवताओं और पर्वों के लिए विशेष सामग्री अलग हो सकती है।</p><hr><p>पूजा सामग्री की Shopping Last Minute पर क्यों छोड़ें?</p><p>त्योहारों के समय बाजारों में भीड़ बढ़ जाती है। कई बार छोटी लेकिन जरूरी चीजें आसानी से उपलब्ध नहीं होतीं।</p><p>इसीलिए बेहतर है कि:</p><p><strong>त्योहार की तारीख देखें → पूजा की सामग्री की checklist बनाएं → जरूरी सामान पहले तैयार करें → पूजा के दिन बिना तनाव के पूजा करें।</strong></p><p>यही काम आसान बनाने के लिए <strong>SamagriSeva</strong> का उद्देश्य है—पूजा से जुड़ी आवश्यक सामग्री को एक convenient online platform पर उपलब्ध कराना।</p><hr><p>SamagriSeva – आपकी पूजा, आसान तरीके से</p><p>चाहे आप <strong>लक्ष्मी पूजा, गणेश पूजा, नवरात्रि, करवा चौथ, सत्यनारायण पूजा, गृह पूजा या किसी अन्य धार्मिक अवसर</strong> की तैयारी कर रहे हों, सही पूजा सामग्री पहले से तैयार होना जरूरी है।</p><p>SamagriSeva पर हमारा प्रयास है कि आपको पूजा की तैयारी में कम समय लगे और आप अपना ध्यान भक्ति और परिवार पर लगा सकें।</p><h3>पूजा की तैयारी अब आसान बनाइए</h3><p><strong>सही सामग्री। आसान तैयारी। शांत मन से पूजा।</strong></p><p>? <a href=\"http://SamagriSeva.com\"><strong>SamagriSeva.com</strong></a> पर अपनी पूजा सामग्री और पूजा किट देखें।</p><hr><h2>निष्कर्ष</h2><p>अक्टूबर से दिसंबर 2026 तक का समय धार्मिक दृष्टि से बेहद महत्वपूर्ण है। पितृ पक्ष से शुरू होकर नवरात्रि, दशहरा, शरद पूर्णिमा, करवा चौथ, धनतेरस, दीपावली, गोवर्धन पूजा, भाई दूज, छठ पूजा, तुलसी विवाह, देव दीपावली, गीता जयंती और दत्तात्रेय जयंती तक कई छोटे-बड़े पर्व इस अवधि में आते हैं।</p><p>इन त्योहारों की तैयारी यदि पहले से कर ली जाए, तो पूजा के दिन अनावश्यक भागदौड़ से बचा जा सकता है।</p><p><strong>इस त्योहार सीजन, पूजा की तैयारी SamagriSeva के साथ आसान बनाइए।</strong></p><p><a href=\"http://SamagriSeva.com\"><strong>SamagriSeva.com</strong></a><strong> — Your Puja, Made Simple.</strong></p>','','','Samagri Seva',9,1,'2026-10-07 00:00:00.000000','','','','2026-10-07 10:51:38.011500','2026-10-07 10:52:42.475897'),
('a5b88e0aefde4316bd8b8818e601b9ea','diwali-2026-lakshmi-puja-exact-muhurat-complete-samagri-list-puja-preparation-checklist','Diwali 2026 Lakshmi Puja: Exact Muhurat, Complete Samagri List & Puja Preparation Checklist','Diwali is not just about decorating the home, lighting diyas and exchanging sweets. For millions of families, it is a time to pause, pray and welcome Maa Lakshmi and Lord Ganesha with devotion, cleanliness and gratitude.','<p><strong>Diwali 2026 is coming — is your Lakshmi Puja preparation complete?</strong></p><p>Diwali is not just about decorating the home, lighting diyas and exchanging sweets. For millions of families, it is a time to pause, pray and welcome Maa Lakshmi and Lord Ganesha with devotion, cleanliness and gratitude.</p><p>If you are planning your Lakshmi Puja this year, one question always comes up:</p><p><strong>“Lakshmi Puja ke liye kya-kya samagri chahiye?”</strong></p><p>And the second one:</p><p><strong>“Lakshmi Puja ka shubh muhurat kya hai?”</strong></p><p>We have put together a simple 2026 guide so you can prepare everything in advance and celebrate Diwali without last-minute stress.</p><hr><h2>? When is Diwali 2026?</h2><p><strong>Diwali / Deepawali 2026 will be celebrated on Sunday, November 8, 2026.</strong></p><p>Diwali is traditionally associated with the victory of light over darkness, good over evil and knowledge over ignorance. Lakshmi Puja is one of the central rituals of the festival, with devotees worshipping Goddess Lakshmi for prosperity and Lord Ganesha for wisdom and auspicious beginnings.</p><hr><h2>? Lakshmi Puja Muhurat 2026</h2><p>For <strong>New Delhi</strong>, the listed Lakshmi Puja Muhurat on Diwali 2026 is:</p><h3><strong>5:54 PM to 7:50 PM</strong></h3><p>The Pradosh Kaal is listed as <strong>5:31 PM to 8:09 PM</strong>, while the Vrishabha Kaal overlaps with the Lakshmi Puja Muhurat.</p><blockquote><p><strong>Important:</strong> Puja timings can vary by city, so always check the local Panchang for your location before performing the ritual.</p></blockquote><hr><p>? Complete Lakshmi Puja Samagri Checklist</p><p>One of the biggest Diwali problems is realizing at the last minute that something important is missing.</p><p>Here is a practical checklist to help you prepare.</p><h3>Basic Puja Essentials</h3><ul><li><p>Goddess Lakshmi idol or image</p></li><li><p>Lord Ganesha idol or image</p></li><li><p>Puja chowki</p></li><li><p>Red or yellow cloth</p></li><li><p>Kalash</p></li><li><p>Coconut</p></li><li><p>Mango leaves</p></li><li><p>Diya</p></li><li><p>Cotton wicks</p></li><li><p>Ghee or oil</p></li><li><p>Incense sticks</p></li><li><p>Camphor</p></li><li><p>Roli / Kumkum</p></li><li><p>Haldi</p></li><li><p>Akshat (rice)</p></li><li><p>Flowers</p></li><li><p>Garland</p></li><li><p>Fresh fruits</p></li><li><p>Sweets / Bhog</p></li><li><p>Panchamrit ingredients</p></li><li><p>Sacred thread / Mauli</p></li><li><p>Coins</p></li><li><p>Betel leaves</p></li><li><p>Supari</p></li><li><p>Paan</p></li><li><p>Cloves</p></li><li><p>Cardamom</p></li><li><p>Dry fruits</p></li></ul><h3>? Don\'t Forget the Decorative Essentials</h3><p>A beautiful and devotional puja setup can include:</p><ul><li><p>Marigold flowers</p></li><li><p>Rangoli</p></li><li><p>Diyas around the entrance</p></li><li><p>Lakshmi footprints</p></li><li><p>Clean red/yellow puja cloth</p></li><li><p>Decorative thali</p></li><li><p>Fresh flowers and petals</p></li></ul><hr><p>✨ How to Prepare Your Home for Lakshmi Puja</p><h3>1. Clean the Home</h3><p>Traditionally, families clean and decorate their homes before Diwali. The idea is to create a clean and welcoming environment for the festival and puja.</p><h3>2. Prepare the Puja Area</h3><p>Choose a clean and peaceful area of your home. Place a chowki and cover it with a clean cloth.</p><h3>3. Arrange Lakshmi and Ganesha</h3><p>Keep the idols or images in the puja area and arrange the required offerings neatly.</p><h3>4. Prepare the Kalash</h3><p>Set up the kalash with the required traditional items according to your family tradition and local puja practice.</p><h3>5. Keep Everything Ready Before Muhurat</h3><p>This is one of the most useful tips:</p><p><strong>Don\'t spend your Lakshmi Puja Muhurat searching for puja samagri.</strong></p><p>Keep your flowers, diyas, incense, roli, kumkum, rice, fruits, sweets and other essentials ready beforehand.</p><hr><p>? Why a Complete Puja Kit Can Make Diwali Easier</p><p>Modern life is busy.</p><p>Between work, family, shopping, cleaning and Diwali celebrations, finding every individual puja item can become stressful.</p><p>That\'s where a thoughtfully prepared <strong>Lakshmi Puja Kit</strong> can make things easier.</p><p>Instead of remembering dozens of individual items, you can choose a convenient puja kit and prepare your puja setup in advance.</p><h3>With Samagri Seva, Your Puja Becomes Simpler</h3><p><strong>Samagri Seva</strong> brings puja samagri and puja kits together in one convenient online destination.</p><p>Whether you are preparing for Diwali Lakshmi Puja or another important religious occasion, the goal is simple:</p><p><strong>Less searching. Less last-minute stress. More time for devotion.</strong></p><hr><p>? Your Diwali 2026 Preparation Checklist</p><p>Save this list before Diwali:</p><p>☐ Clean the home<br>☐ Prepare the puja area<br>☐ Arrange Lakshmi &amp; Ganesha<br>☐ Prepare the kalash<br>☐ Keep diyas and wicks ready<br>☐ Arrange flowers and decorations<br>☐ Keep fruits and sweets ready<br>☐ Prepare your puja thali<br>☐ Arrange all puja samagri<br>☐ Check your local Lakshmi Puja Muhurat<br>☐ Keep everything ready before the puja begins</p><p><strong>Screenshot this checklist and share it with your family. ❤️</strong></p><hr><p>? Don\'t Wait Until the Last Day</p><p>The easiest way to make Diwali peaceful is to prepare early.</p><p>Instead of rushing from shop to shop looking for individual puja items, plan your requirements in advance.</p><p>? <strong>Your faith deserves your attention — not last-minute shopping.</strong></p><p>Explore the <strong>Lakshmi Puja Kit by Samagri Seva</strong> and make your Diwali preparation simpler:</p><p>? <a href=\"https://samagriseva.com/kits/lakshmi-puja-kit\"><strong>https://samagriseva.com/kits/lakshmi-puja-kit</strong></a></p><p>Explore more puja essentials:</p><p>? <a href=\"https://samagriseva.com/\"><strong>https://samagriseva.com/</strong></a></p><hr><h2>?️ This Diwali, Bring Home More Than Just Light</h2><p>May this Diwali bring peace to your home, prosperity to your family and happiness to everyone you love.</p><p><strong>Shubh Deepawali! ?✨</strong></p><p><strong>Samagri Seva — Your Puja, Made Simple.</strong></p><hr><h3>Share This With Someone Preparing for Diwali ❤️</h3><p><strong>Diwali 2026 is on November 8. Save this Lakshmi Puja checklist now so you don\'t have to search for everything at the last minute.</strong></p><p>#Diwali2026 #LakshmiPuja #LakshmiPuja2026 #DiwaliPuja #PujaSamagri #LakshmiPujaKit #DiwaliShopping #DiwaliPreparation #MaaLakshmi #PujaKit #SamagriSeva #ShubhDiwali</p>','','','Samagri Seva',4,1,'2026-10-07 00:00:00.000000','','','','2026-10-07 06:18:06.090772','2026-10-07 06:18:06.090788'),
('b933bb39f6454711b0dbf9cd5b07d3a3','chhath-puja-2026-chhath-puja-date-bihar-chhath-puja-chhath-puja-samagri-nahay-khay-kharna-sandhya-ar','Chhath Puja 2026 | Chhath Puja Date | Bihar Chhath Puja | Chhath Puja Samagri | Nahay Khay | Kharna | Sandhya Arghya | Usha Arghya','छठ पूजा बिहार की पहचान, आस्था और लोक-संस्कृति से जुड़ा एक अत्यंत पवित्र पर्व है। यह केवल सूर्य देव की पूजा नहीं, बल्कि प्रकृति, जल, सूर्य, परिवार और शुद्धता के प्रति आभार व्यक्त करने की एक अनूठी परंपरा है।','<p>? छठ पूजा 2026: बिहार के महापर्व की पूरी जानकारी, तारीख, पूजा विधि और संपूर्ण पूजा सामग्री सूची</p><p><strong>Chhath Puja 2026 | Chhath Puja Date | Bihar Chhath Puja | Chhath Puja Samagri | Nahay Khay | Kharna | Sandhya Arghya | Usha Arghya</strong></p><p>छठ पूजा बिहार की पहचान, आस्था और लोक-संस्कृति से जुड़ा एक अत्यंत पवित्र पर्व है। यह केवल सूर्य देव की पूजा नहीं, बल्कि <strong>प्रकृति, जल, सूर्य, परिवार और शुद्धता के प्रति आभार व्यक्त करने की एक अनूठी परंपरा</strong> है।</p><p>बिहार के गांवों से लेकर पटना के गंगा घाटों तक, छठ के दिनों में पूरा वातावरण श्रद्धा, लोकगीतों और भक्ति से भर जाता है। इस पर्व की सबसे खास बात यह है कि इसमें <strong>डूबते सूर्य और उगते सूर्य दोनों को अर्घ्य</strong> दिया जाता है। बिहार पर्यटन विभाग भी इसे छठ की विशिष्ट विशेषता के रूप में बताता है।</p><hr><h2>? छठ पूजा 2026 कब है?</h2><p><strong>छठ पूजा 2026, 13 नवंबर से 16 नवंबर 2026 तक मनाई जाएगी।</strong></p><table style=\"min-width: 75px\"><colgroup><col style=\"min-width: 25px\"><col style=\"min-width: 25px\"><col style=\"min-width: 25px\"></colgroup><tbody><tr><th><p>दिन</p></th><th><p>तारीख</p></th><th><p>प्रमुख अनुष्ठान</p></th></tr><tr><td><p>पहला दिन</p></td><td><p><strong>13 नवंबर 2026, शुक्रवार</strong></p></td><td><p>नहाय-खाय</p></td></tr><tr><td><p>दूसरा दिन</p></td><td><p><strong>14 नवंबर 2026, शनिवार</strong></p></td><td><p>खरना</p></td></tr><tr><td><p>तीसरा दिन</p></td><td><p><strong>15 नवंबर 2026, रविवार</strong></p></td><td><p>संध्या अर्घ्य</p></td></tr><tr><td><p>चौथा दिन</p></td><td><p><strong>16 नवंबर 2026, सोमवार</strong></p></td><td><p>उषा अर्घ्य और पारण</p></td></tr></tbody></table><p>पटना के स्थानीय पंचांग के अनुसार 15 नवंबर को सूर्यास्त लगभग <strong>5:01 PM</strong> और 16 नवंबर को सूर्योदय लगभग <strong>6:07 AM</strong> है। हालांकि अर्घ्य का सही समय स्थान और स्थानीय पंचांग के अनुसार देखना चाहिए।</p><hr><p>? छठ पूजा क्या है?</p><p><strong>छठ पूजा क्या है?</strong></p><p>छठ पूजा एक चार दिवसीय धार्मिक पर्व है जिसमें मुख्य रूप से <strong>सूर्य देव और छठी मैया</strong> की उपासना की जाती है। इसे <strong>सूर्य षष्ठी, छठ, छठी, डाला छठ और डाला पूजा</strong> जैसे नामों से भी जाना जाता है।</p><p>इस पर्व में व्रती कठिन नियमों का पालन करते हुए पूजा करते हैं और परिवार की सुख-समृद्धि, स्वास्थ्य तथा संतान के कल्याण की कामना करते हैं।</p><p>छठ पूजा की सबसे अनोखी परंपरा है—<strong>डूबते सूर्य को संध्या अर्घ्य और अगले दिन उगते सूर्य को उषा अर्घ्य देना।</strong></p><hr><p>? बिहार में छठ पूजा इतनी खास क्यों है?</p><p>अगर कोई पूछे <strong>“छठ पूजा बिहार का सबसे प्रसिद्ध पर्व क्यों माना जाता है?”</strong>, तो इसका जवाब केवल धार्मिक परंपरा में नहीं, बल्कि बिहार की संस्कृति में भी मिलता है।</p><p>छठ बिहार के सामाजिक जीवन से गहराई से जुड़ा हुआ है। गांवों, कस्बों और शहरों में परिवार मिलकर पूजा की तैयारी करते हैं। घरों की सफाई, प्रसाद की तैयारी, घाटों की सजावट और छठ गीतों की परंपरा इस पर्व को एक सामूहिक उत्सव बना देती है।</p><p>बिहार पर्यटन विभाग के अनुसार, छठ बिहार और पूर्वी उत्तर प्रदेश में प्रमुख रूप से मनाया जाता है और इसकी चार-दिवसीय प्रक्रिया में शुद्धता, उपवास और सूर्य उपासना का विशेष महत्व है।</p><hr><p>? छठ पूजा के चार दिन – पूरी जानकारी</p><h2>1. नहाय-खाय – 13 नवंबर 2026</h2><p>छठ पूजा की शुरुआत <strong>नहाय-खाय</strong> से होती है।</p><p>इस दिन व्रती स्नान करके शुद्धता के साथ पूजा की तैयारी शुरू करते हैं। घर की सफाई की जाती है और सात्विक भोजन तैयार किया जाता है।</p><p>परंपरा में इस दिन पवित्र जल में स्नान और घर की शुद्धि का विशेष महत्व बताया जाता है।</p><p><strong>इस दिन की भावना:</strong><br>शरीर, मन और घर की शुद्धि के साथ छठ पर्व की शुरुआत।</p><hr><h2>2. खरना – 14 नवंबर 2026</h2><p>दूसरा दिन <strong>खरना</strong> कहलाता है।</p><p>व्रती दिनभर उपवास रखते हैं और शाम को पूजा के बाद प्रसाद ग्रहण करते हैं। खरना के प्रसाद में पारंपरिक रूप से <strong>गुड़ की खीर और फल</strong> का विशेष महत्व है।</p><p>खरना के बाद कठिन <strong>निर्जला व्रत</strong> का चरण शुरू होता है, जो अगले दिन संध्या अर्घ्य और फिर उषा अर्घ्य तक चलता है।</p><hr><p>? 3. संध्या अर्घ्य – 15 नवंबर 2026</p><p>छठ पूजा का सबसे भावनात्मक दृश्य <strong>संध्या अर्घ्य</strong> होता है।</p><p>इस दिन व्रती परिवार के साथ पूजा की सामग्री लेकर नदी, तालाब या अन्य जलाशय के किनारे पहुंचते हैं और <strong>डूबते सूर्य को अर्घ्य</strong> देते हैं।</p><p>पटना में 15 नवंबर 2026 को सूर्यास्त लगभग <strong>5:01 PM</strong> है।</p><p>घाटों पर:</p><ul><li><p>छठ गीत</p></li><li><p>दीप</p></li><li><p>सूप</p></li><li><p>फल</p></li><li><p>गन्ना</p></li><li><p>ठेकुआ</p></li><li><p>पूजा सामग्री</p></li></ul><p>के साथ पूरा वातावरण भक्तिमय हो जाता है।</p><p>बिहार पर्यटन के अनुसार, संध्या अर्घ्य के अवसर पर नदी किनारे बड़ी संख्या में श्रद्धालु एकत्र होते हैं और छठ की लोक-संस्कृति लोकगीतों के माध्यम से दिखाई देती है।</p><hr><p>? 4. उषा अर्घ्य – 16 नवंबर 2026</p><p>छठ पूजा का अंतिम और सबसे महत्वपूर्ण चरण है <strong>उषा अर्घ्य</strong>।</p><p>इस दिन व्रती सूर्योदय से पहले घाट पर पहुंचते हैं और <strong>उगते सूर्य को अर्घ्य</strong> देते हैं।</p><p>पटना में 16 नवंबर 2026 को सूर्योदय लगभग <strong>6:07 AM</strong> है।</p><p>उषा अर्घ्य के बाद व्रत का पारण किया जाता है और प्रसाद परिवार तथा प्रियजनों में बांटा जाता है।</p><hr><p>? छठ पूजा में कौन-कौन सी सामग्री चाहिए?</p><p>छठ पूजा की तैयारी में सामग्री की सूची पहले से बनाना बहुत जरूरी है।</p><h3>प्रमुख छठ पूजा सामग्री Checklist</h3><ul><li><p>? बांस का सूप</p></li><li><p>? डाला</p></li><li><p>? केले</p></li><li><p>? नारियल</p></li><li><p>? गन्ना</p></li><li><p>? मौसमी फल</p></li><li><p>? गुड़</p></li><li><p>? गेहूं का आटा</p></li><li><p>? घी</p></li><li><p>? चावल</p></li><li><p>? दूध</p></li><li><p>? पान</p></li><li><p>? सुपारी</p></li><li><p>? दीपक</p></li><li><p>?️ रूई</p></li><li><p>? फूल</p></li><li><p>? पत्ते</p></li><li><p>? सिंदूर</p></li><li><p>? प्रसाद की सामग्री</p></li><li><p>? ठेकुआ बनाने की सामग्री</p></li><li><p>? खरना की खीर की सामग्री</p></li></ul><p>बिहार सरकार के एक आधिकारिक प्रकाशन में भी छठ के पारंपरिक प्रसादों में <strong>ठेकुआ, खरना की खीर, रसिया-पुरी, चावल के लड्डू, कसर और मौसमी फलों</strong> का उल्लेख मिलता है।</p><hr><p>? छठ पूजा में ठेकुआ का क्या महत्व है?</p><p><strong>ठेकुआ छठ पूजा का सबसे प्रसिद्ध प्रसाद माना जाता है।</strong></p><p>बिहार पर्यटन के अनुसार, ठेकुआ गेहूं के आटे, घी और गुड़ से तैयार किया जाने वाला पारंपरिक बिहारी व्यंजन है और इसे छठ पूजा में प्रसाद के रूप में चढ़ाया जाता है।</p><p>ठेकुआ केवल एक मिठाई नहीं है—यह बिहार की <strong>लोक परंपरा और छठ की पहचान</strong> का हिस्सा बन चुका है।</p><hr><p>? छठ पूजा की तैयारी कैसे करें?</p><p>अगर आप इस साल घर पर छठ पूजा कर रहे हैं, तो तैयारी को चार हिस्सों में बांट सकते हैं:</p><h3>Step 1: पूजा की तारीख नोट करें</h3><p>2026 में छठ पूजा <strong>13–16 नवंबर</strong> है।</p><h3>Step 2: घर और पूजा स्थान की सफाई करें</h3><p>छठ में शुद्धता और स्वच्छता का विशेष महत्व है।</p><h3>Step 3: पूजा सामग्री की Checklist बनाएं</h3><p>सूप, फल, नारियल, गन्ना, ठेकुआ की सामग्री, दीपक और अन्य आवश्यक सामग्री पहले से तैयार रखें।</p><h3>Step 4: प्रसाद की तैयारी करें</h3><p>खरना की खीर और ठेकुआ जैसे पारंपरिक प्रसाद की तैयारी समय से करें।</p><h3>Step 5: अर्घ्य की तैयारी रखें</h3><p>संध्या और उषा अर्घ्य के लिए सभी सामग्री पहले से डाला/सूप में व्यवस्थित कर लें।</p><hr><p>? बिहार में छठ पूजा कहां प्रसिद्ध है?</p><p>छठ के दौरान बिहार के अलग-अलग शहरों और क्षेत्रों में घाटों पर विशेष धार्मिक वातावरण देखने को मिलता है।</p><p>विशेष रूप से:</p><p><strong>पटना</strong> – गंगा घाटों पर छठ का भव्य आयोजन<br><strong>गया</strong> – धार्मिक महत्व के कारण विशेष वातावरण<br><strong>भागलपुर</strong> – गंगा तट पर छठ की परंपरा<br><strong>मुजफ्फरपुर</strong> – स्थानीय लोक परंपराओं के साथ छठ<br><strong>दरभंगा</strong> – मिथिला संस्कृति के साथ छठ<br><strong>आरा और भोजपुर क्षेत्र</strong> – पारंपरिक भोजपुरी छठ गीतों और पूजा की विशेष पहचान</p><p>पटना में गंगा तट स्थित घाट छठ के दौरान विशेष रूप से महत्वपूर्ण हो जाते हैं।</p><hr><p>❤️ छठ पूजा सिर्फ एक पर्व नहीं, एक भावना है</p><p>छठ में परिवार के कई सदस्य मिलकर तैयारी करते हैं।</p><p>कोई फल लाता है।<br>कोई प्रसाद बनाता है।<br>कोई घाट की तैयारी करता है।<br>कोई सूप सजाता है।<br>और कोई छठ के पारंपरिक गीत गाता है।</p><p>यही सामूहिक भावना छठ को बाकी त्योहारों से अलग बनाती है।</p><p><strong>छठ हमें प्रकृति, सूर्य, जल और परिवार के प्रति कृतज्ञता का संदेश देता है।</strong></p><hr><p>❓ Chhath Puja 2026 – Frequently Asked Questions</p><h3>छठ पूजा 2026 कब से शुरू होगी?</h3><p>छठ पूजा 2026 की शुरुआत <strong>13 नवंबर 2026 को नहाय-खाय</strong> से होगी और 16 नवंबर को उषा अर्घ्य एवं पारण के साथ पर्व पूरा होगा।</p><h3>छठ पूजा 2026 में संध्या अर्घ्य कब है?</h3><p><strong>15 नवंबर 2026</strong> को संध्या अर्घ्य दिया जाएगा। पटना में सूर्यास्त लगभग <strong>5:01 PM</strong> है।</p><h3>छठ पूजा 2026 में उषा अर्घ्य कब है?</h3><p><strong>16 नवंबर 2026</strong> को उषा अर्घ्य दिया जाएगा। पटना में सूर्योदय लगभग <strong>6:07 AM</strong> है।</p><h3>छठ पूजा कितने दिनों की होती है?</h3><p>छठ पूजा <strong>चार दिनों</strong> का पर्व है—नहाय-खाय, खरना, संध्या अर्घ्य और उषा अर्घ्य।</p><h3>छठ पूजा में किस भगवान की पूजा होती है?</h3><p>छठ में मुख्य रूप से <strong>सूर्य देव</strong> की उपासना की जाती है। छठी मैया की पूजा की परंपरा भी इस पर्व से जुड़ी हुई है।</p><h3>छठ पूजा में डूबते सूर्य को अर्घ्य क्यों दिया जाता है?</h3><p>छठ की विशिष्ट परंपरा में <strong>डूबते सूर्य और उगते सूर्य दोनों</strong> को अर्घ्य दिया जाता है। यही इस पर्व की सबसे अलग पहचान है।</p><h3>छठ पूजा का सबसे प्रसिद्ध प्रसाद कौन सा है?</h3><p><strong>ठेकुआ</strong> छठ पूजा का प्रमुख पारंपरिक प्रसाद है।</p><h3>क्या छठ पूजा केवल बिहार में मनाई जाती है?</h3><p>नहीं। छठ की प्रमुख परंपरा बिहार और पूर्वी उत्तर प्रदेश से जुड़ी है, लेकिन आज यह भारत के अनेक हिस्सों और विदेशों में भी मनाई जाती है।</p><hr><p>? छठ पूजा की तैयारी करें Samagri Seva के साथ</p><p>छठ जैसे पवित्र पर्व में सबसे बड़ी चिंता होती है—<strong>“पूजा की सारी सामग्री समय पर कैसे जुटाएं?”</strong></p><p>यहीं <strong>Samagri Seva</strong> आपकी मदद कर सकता है।</p><p>एक ही जगह से अपनी पूजा की आवश्यक सामग्री और पूजा किट खोजें और छठ की तैयारी को आसान बनाएं।</p><h3>? Samagri Seva – Your Puja, Made Simple</h3><p>? <a href=\"https://samagriseva.com/\"><strong>https://samagriseva.com/</strong></a></p><p><strong>छठ की तैयारी हो या कोई और पूजा—सामग्री की तैयारी पहले करें, ताकि पूजा के दिन आपका ध्यान सिर्फ भक्ति पर रहे।</strong></p><hr><h2>? इस छठ एक संकल्प</h2><p><strong>सूर्य को प्रणाम करें।<br>प्रकृति का सम्मान करें।<br>परिवार के साथ त्योहार मनाएं।<br>और अपनी परंपरा को अगली पीढ़ी तक पहुंचाएं।</strong></p><h3>छठी मैया सबके जीवन में सुख, शांति और समृद्धि लाएं। ??</h3><p><strong>जय छठी मैया!<br>ॐ सूर्याय नमः!</strong></p>','','','Samagri Seva',7,1,'2026-10-08 00:00:00.000000','','','','2026-10-08 17:24:49.912516','2026-10-08 17:24:49.912523'),
('e2ea948de3e447afa4e2a8c3f14afee0','2026','? दिवाली 2026 लक्ष्मी पूजा: शुभ मुहूर्त, संपूर्ण सामग्री सूची और पूजा की तैयारी की पूरी जानकारी','दिवाली सिर्फ घर सजाने, दीप जलाने और मिठाइयाँ बांटने का त्योहार नहीं है। यह वह पावन अवसर है जब परिवार एक साथ मिलकर माँ लक्ष्मी और भगवान गणेश की पूजा करते हैं और सुख, समृद्धि, शांति एवं शुभता की प्रार्थना करते हैं।','<p><strong>क्या आपने दिवाली 2026 की लक्ष्मी पूजा की तैयारी शुरू कर दी है?</strong></p><p>दिवाली सिर्फ घर सजाने, दीप जलाने और मिठाइयाँ बांटने का त्योहार नहीं है। यह वह पावन अवसर है जब परिवार एक साथ मिलकर <strong>माँ लक्ष्मी और भगवान गणेश की पूजा</strong> करते हैं और सुख, समृद्धि, शांति एवं शुभता की प्रार्थना करते हैं।</p><p>लेकिन हर साल दिवाली से पहले एक सवाल जरूर आता है:</p><h3><strong>“लक्ष्मी पूजा के लिए कौन-कौन सी सामग्री चाहिए?”</strong></h3><p>और दूसरा सबसे जरूरी सवाल:</p><h3><strong>“लक्ष्मी पूजा का शुभ मुहूर्त क्या है?”</strong></h3><p>इसलिए हमने आपके लिए तैयार की है <strong>दिवाली 2026 लक्ष्मी पूजा की पूरी गाइड</strong>, ताकि आप पहले से तैयारी कर सकें और पूजा के समय किसी भी जरूरी सामग्री की कमी न हो।</p><hr><p>? दिवाली 2026 कब है?</p><p><strong>दिवाली 2026 रविवार, 8 नवंबर 2026 को मनाई जाएगी।</strong></p><p>दिवाली को अंधकार पर प्रकाश, असत्य पर सत्य और अज्ञान पर ज्ञान की विजय का प्रतीक माना जाता है।</p><p>इस दिन विशेष रूप से <strong>माँ लक्ष्मी की पूजा</strong> धन, समृद्धि और सुख-शांति के लिए तथा <strong>भगवान गणेश की पूजा</strong> बुद्धि और शुभ आरंभ के लिए की जाती है।</p><hr><p>? लक्ष्मी पूजा 2026 का शुभ मुहूर्त</p><p><strong>नई दिल्ली के लिए लक्ष्मी पूजा का शुभ मुहूर्त:</strong></p><h3>?️ शाम 5:54 बजे से शाम 7:50 बजे तक</h3><p>प्रदोष काल लगभग <strong>शाम 5:31 बजे से रात 8:09 बजे तक</strong> बताया गया है।</p><blockquote><p><strong>ध्यान दें:</strong> पूजा का मुहूर्त स्थान के अनुसार अलग हो सकता है। इसलिए अपने शहर के स्थानीय पंचांग के अनुसार अंतिम समय जरूर जांचें।</p></blockquote><hr><p>? लक्ष्मी पूजा के लिए संपूर्ण सामग्री सूची</p><p>दिवाली के दिन सबसे ज्यादा परेशानी तब होती है जब पूजा शुरू होने से ठीक पहले पता चलता है कि कोई जरूरी सामग्री घर में नहीं है।</p><p>इसलिए पहले से यह चेकलिस्ट सेव कर लें। ?</p><h2>? पूजा की मुख्य सामग्री</h2><ul><li><p>माँ लक्ष्मी की मूर्ति या तस्वीर</p></li><li><p>भगवान गणेश की मूर्ति या तस्वीर</p></li><li><p>पूजा की चौकी</p></li><li><p>लाल या पीला कपड़ा</p></li><li><p>कलश</p></li><li><p>नारियल</p></li><li><p>आम के पत्ते</p></li><li><p>दीपक</p></li><li><p>रूई की बत्तियां</p></li><li><p>घी या तेल</p></li><li><p>अगरबत्ती</p></li><li><p>धूप</p></li><li><p>कपूर</p></li><li><p>रोली / कुमकुम</p></li><li><p>हल्दी</p></li><li><p>अक्षत / चावल</p></li><li><p>फूल</p></li><li><p>फूलों की माला</p></li><li><p>फल</p></li><li><p>मिठाई / भोग</p></li><li><p>पंचामृत की सामग्री</p></li><li><p>मौली / कलावा</p></li><li><p>सिक्के</p></li><li><p>पान</p></li><li><p>सुपारी</p></li><li><p>लौंग</p></li><li><p>इलायची</p></li><li><p>सूखे मेवे</p></li></ul><hr><p>? पूजा की सजावट के लिए क्या रखें?</p><p>लक्ष्मी पूजा के अवसर पर पूजा स्थल को सुंदर और पवित्र बनाने के लिए आप इन चीजों का उपयोग कर सकते हैं:</p><p>✨ गेंदे के फूल<br>✨ रंगोली<br>✨ घर के मुख्य द्वार पर दीपक<br>✨ लक्ष्मी जी के चरण चिन्ह<br>✨ लाल या पीला पूजा वस्त्र<br>✨ सुंदर पूजा थाली<br>✨ फूल और फूलों की पंखुड़ियां</p><hr><p>? लक्ष्मी पूजा से पहले घर की तैयारी कैसे करें?</p><h2>1. सबसे पहले घर की सफाई करें</h2><p>दिवाली से पहले घर की साफ-सफाई करना भारतीय परंपरा का महत्वपूर्ण हिस्सा है। स्वच्छ और सुंदर वातावरण में पूजा करने से त्योहार की सकारात्मक भावना और भी बढ़ जाती है।</p><h2>2. पूजा स्थल तैयार करें</h2><p>घर में एक साफ और शांत स्थान चुनें। वहां पूजा की चौकी रखें और उसे साफ कपड़े से सजाएं।</p><h2>3. माँ लक्ष्मी और भगवान गणेश की स्थापना करें</h2><p>मूर्ति या तस्वीर को पूजा स्थल पर उचित स्थान पर रखें और आसपास पूजा की सभी सामग्री व्यवस्थित करें।</p><h2>4. कलश तैयार रखें</h2><p>अपने परिवार और परंपरा के अनुसार कलश की स्थापना के लिए आवश्यक सामग्री पहले से तैयार रखें।</p><h2>5. पूजा के समय से पहले सारी सामग्री व्यवस्थित करें</h2><p>यह सबसे जरूरी टिप है।</p><p><strong>पूजा के शुभ मुहूर्त में सामग्री ढूंढने के बजाय, सारी सामग्री पहले ही तैयार रखें।</strong></p><p>दीपक, फूल, रोली, कुमकुम, चावल, फल, मिठाई, अगरबत्ती और अन्य पूजा सामग्री को एक जगह व्यवस्थित कर लें।</p><hr><p>? पूरी पूजा किट आपके लिए क्यों उपयोगी हो सकती है?</p><p>आज की भागदौड़ भरी जिंदगी में काम, परिवार, घर की सफाई, सजावट और दिवाली की खरीदारी के बीच हर एक पूजा सामग्री अलग-अलग ढूंढना काफी समय लेने वाला हो सकता है।</p><p>ऐसे में एक <strong>सुव्यवस्थित लक्ष्मी पूजा किट</strong> आपकी तैयारी को आसान बना सकती है।</p><p>एक-एक सामान अलग-अलग जगह से ढूंढने के बजाय, आप अपनी पूजा की आवश्यकताओं के अनुसार एक सुविधाजनक पूजा किट चुन सकते हैं।</p><h3>? Samagri Seva के साथ पूजा की तैयारी बने आसान</h3><p><strong>Samagri Seva</strong> पर आपको पूजा सामग्री और पूजा किट एक ही ऑनलाइन स्थान पर मिलती हैं।</p><p>चाहे आप दिवाली की लक्ष्मी पूजा की तैयारी कर रहे हों या किसी अन्य शुभ अवसर की, हमारा उद्देश्य सरल है:</p><h3><strong>कम भागदौड़। कम चिंता। ज्यादा समय भक्ति के लिए।</strong></h3><hr><p>? दिवाली 2026 पूजा तैयारी की पूरी Checklist</p><p>इस चेकलिस्ट को अभी <strong>Save</strong> कर लें। ?</p><p>☐ घर की साफ-सफाई करें<br>☐ पूजा स्थल तैयार करें<br>☐ माँ लक्ष्मी और भगवान गणेश की स्थापना करें<br>☐ कलश तैयार करें<br>☐ दीपक और बत्तियां तैयार रखें<br>☐ फूल और सजावट की सामग्री रखें<br>☐ फल और मिठाई तैयार रखें<br>☐ पूजा की थाली तैयार करें<br>☐ सभी पूजा सामग्री चेक करें<br>☐ अपने शहर का लक्ष्मी पूजा मुहूर्त देखें<br>☐ पूजा शुरू होने से पहले सारी सामग्री तैयार रखें</p><h3>❤️ इस Checklist को अपने परिवार के साथ जरूर शेयर करें।</h3><hr><p>? आखिरी दिन की भागदौड़ से बचें</p><p>दिवाली की तैयारी जितनी पहले शुरू करेंगे, त्योहार उतना ही शांत और आनंदमय रहेगा।</p><p>आखिरी समय पर अलग-अलग दुकानों पर पूजा सामग्री ढूंढने की बजाय अपनी जरूरत की सामग्री पहले से तैयार रखें।</p><h3>? आपकी भक्ति का समय खरीदारी में नहीं, पूजा में बीते।</h3><p><strong>Samagri Seva की लक्ष्मी पूजा किट देखें और अपनी दिवाली की तैयारी को आसान बनाएं:</strong></p><p>? <a href=\"https://samagriseva.com/kits/lakshmi-puja-kit\">https://samagriseva.com/kits/lakshmi-puja-kit</a></p><p><strong>और भी पूजा सामग्री एवं पूजा किट के लिए:</strong></p><p>? <a href=\"https://samagriseva.com/\">https://samagriseva.com/</a></p><hr><p>?️ इस दिवाली घर में सिर्फ रोशनी नहीं, खुशियां भी लाएं</p><p>माँ लक्ष्मी और भगवान गणेश की कृपा से आपके घर में सुख, शांति, समृद्धि और खुशियां बनी रहें।</p><p>आपके और आपके पूरे परिवार को <strong>शुभ दीपावली! ?✨</strong></p><h3><strong>Samagri Seva — आपकी पूजा, अब आसान।</strong></h3><hr><h2>❤️ इसे अभी Save और Share करें</h2><p><strong>दिवाली 2026 — 8 नवंबर</strong></p><p>लक्ष्मी पूजा की तैयारी आखिरी समय तक न छोड़ें। इस पूरी सामग्री सूची को अभी सेव करें और अपने परिवार के साथ शेयर करें, ताकि पूजा के समय कोई जरूरी सामग्री न छूटे।</p><h3>? SEO Keywords</h3><p><strong>दिवाली 2026, लक्ष्मी पूजा 2026, लक्ष्मी पूजा मुहूर्त 2026, दिवाली पूजा सामग्री, लक्ष्मी पूजा सामग्री लिस्ट, लक्ष्मी पूजा की सामग्री, दिवाली पूजा कैसे करें, लक्ष्मी पूजा किट, दिवाली पूजा किट, पूजा सामग्री ऑनलाइन, लक्ष्मी पूजा ऑनलाइन सामग्री, Samagri Seva, दिवाली की तैयारी, माँ लक्ष्मी पूजा, दीपावली 2026</strong></p><p>#Diwali2026 #दिवाली2026 #LakshmiPuja #लक्ष्मीपूजा #DiwaliPuja #दिवालीपूजा #PujaSamagri #पूजासामग्री #LakshmiPujaKit #लक्ष्मीपूजाकिट #MaaLakshmi #माँलक्ष्मी #SamagriSeva #ShubhDeepawali</p>','','','Samagri Seva',5,1,'2026-10-07 00:00:00.000000','','','','2026-10-07 06:20:08.081193','2026-10-07 06:20:08.081198'),
('f93f720247d848b5807d4ab760acb947','puja-items-pooja-samagri-list-100-names-in-english-hindi','Puja Items & Pooja Samagri List: 100+ पूजा सामग्री Names in English & Hindi','Looking for a complete pooja samagri list?\nWhether you are doing daily पूजा at home, preparing for Diwali, Navratri, Ganesh Puja, Lakshmi Puja, Satyanarayan Puja, Griha Pravesh or any other Hindu ritual, having the right puja items ready makes the entire पूजा preparation easier.','<p><strong>Looking for a complete pooja samagri list?</strong><br>Whether you are doing daily पूजा at home, preparing for Diwali, Navratri, Ganesh Puja, Lakshmi Puja, Satyanarayan Puja, Griha Pravesh or any other Hindu ritual, having the right <strong>puja items</strong> ready makes the entire पूजा preparation easier.</p><p>In India, we use different words for the same things — <strong>Puja Items, Pooja Items, Pooja Samagri, Puja Samagri, Pooja Things, Pooja Saman</strong> and <strong>Pooja Materials</strong>.</p><p>So if you have ever searched Google for:</p><ul><li><p>What are the basic puja items?</p></li><li><p>What is included in a pooja samagri list?</p></li><li><p>What are the pooja items names in English?</p></li><li><p>Where can I buy pooja items online?</p></li><li><p>What are the essential pooja samagri items for home?</p></li><li><p>What is the list of puja samagri?</p></li><li><p>Where can I find a good pooja samagri shop?</p></li></ul><p><strong>You are at the right place.</strong></p><p>This guide brings together a practical <strong>Puja Items List + Pooja Samagri List in Hindi and English</strong>, along with their common uses and tips for buying and organising them.</p><hr><p>? What Is Puja Samagri?</p><p><strong>Puja Samagri means the collection of items used for performing पूजा or religious worship.</strong></p><p>In simple Hindi:</p><p><strong>पूजा के दौरान भगवान को अर्पित करने, दीप जलाने, पूजा स्थल सजाने और विभिन्न धार्मिक विधियों को पूरा करने के लिए जिन वस्तुओं की आवश्यकता होती है, उन्हें पूजा सामग्री या </strong><a href=\"https://samagriseva.com/category/puja-samagri\"><strong>Pooja Samagri</strong></a><strong> कहा जाता है।</strong></p><p>Puja samagri can be different depending on:</p><ul><li><p>The deity being worshipped</p></li><li><p>The type of puja</p></li><li><p>The festival</p></li><li><p>Regional traditions</p></li><li><p>Family customs</p></li><li><p>Instructions given by a priest or pandit</p></li></ul><p>That means there is no single universal list that is compulsory for every पूजा.</p><p>However, there are some <strong>basic pooja items</strong> that are commonly used in many Hindu households.</p><hr><p>? Complete Pooja Items List</p><p>If you are setting up a home mandir or preparing for regular पूजा, the following is a useful starting checklist.</p><h2>Basic Puja Items</h2><table style=\"min-width: 50px\"><colgroup><col style=\"min-width: 25px\"><col style=\"min-width: 25px\"></colgroup><tbody><tr><th><p>English Name</p></th><th><p>Hindi Name</p></th></tr><tr><td><p>Diya / Lamp</p></td><td><p>दीपक / दीया</p></td></tr><tr><td><p>Cotton Wicks</p></td><td><p>रुई की बत्ती</p></td></tr><tr><td><p>Ghee</p></td><td><p>घी</p></td></tr><tr><td><p>Oil</p></td><td><p>तेल</p></td></tr><tr><td><p>Incense Sticks</p></td><td><p>अगरबत्ती</p></td></tr><tr><td><p>Dhoop</p></td><td><p>धूप</p></td></tr><tr><td><p>Camphor</p></td><td><p>कपूर</p></td></tr><tr><td><p>Roli</p></td><td><p>रोली</p></td></tr><tr><td><p>Kumkum</p></td><td><p>कुमकुम</p></td></tr><tr><td><p>Haldi</p></td><td><p>हल्दी</p></td></tr><tr><td><p>Chandan</p></td><td><p>चंदन</p></td></tr><tr><td><p>Akshat / Rice</p></td><td><p>अक्षत / चावल</p></td></tr><tr><td><p>Moli / Kalava</p></td><td><p>मौली / कलावा</p></td></tr><tr><td><p>Flowers</p></td><td><p>फूल</p></td></tr><tr><td><p>Flower Garland</p></td><td><p>फूलों की माला</p></td></tr><tr><td><p>Coconut</p></td><td><p>नारियल</p></td></tr><tr><td><p>Betel Nut</p></td><td><p>सुपारी</p></td></tr><tr><td><p>Betel Leaves</p></td><td><p>पान के पत्ते</p></td></tr><tr><td><p>Fruits</p></td><td><p>फल</p></td></tr><tr><td><p>Sweets</p></td><td><p>मिठाई</p></td></tr><tr><td><p>Gangajal</p></td><td><p>गंगाजल</p></td></tr><tr><td><p>Kalash</p></td><td><p>कलश</p></td></tr><tr><td><p>Mango Leaves</p></td><td><p>आम के पत्ते</p></td></tr><tr><td><p>Panchamrit</p></td><td><p>पंचामृत</p></td></tr><tr><td><p>Aarti Thali</p></td><td><p>आरती की थाली</p></td></tr><tr><td><p>Bell</p></td><td><p>घंटी</p></td></tr><tr><td><p>Shankh</p></td><td><p>शंख</p></td></tr><tr><td><p>Puja Cloth</p></td><td><p>पूजा का कपड़ा</p></td></tr><tr><td><p>Matchbox / Lighter</p></td><td><p>माचिस / लाइटर</p></td></tr></tbody></table><p><strong>Quick answer:</strong> If you only need the most basic daily पूजा setup, start with <strong>diya, cotton wick, ghee/oil, agarbatti, dhoop, camphor, roli, kumkum, haldi, chandan, akshat, flowers, water, fruits/sweets and a clean puja thali.</strong></p><hr><p>? Pooja Samagri List — Category Wise</p><p>Instead of keeping everything mixed together, it is easier to organise your <strong>pooja items list</strong> into categories.</p><h2>1. Puja Essentials</h2><p>These are the everyday items that are useful for regular home पूजा:</p><ul><li><p>Roli</p></li><li><p>Kumkum</p></li><li><p>Haldi</p></li><li><p>Chandan</p></li><li><p>Akshat</p></li><li><p>Moli / Kalava</p></li><li><p>Diya</p></li><li><p>Cotton wicks</p></li><li><p>Ghee</p></li><li><p>Puja oil</p></li><li><p>Agarbatti</p></li><li><p>Dhoop</p></li><li><p>Camphor</p></li><li><p>Flowers</p></li><li><p>Garland</p></li><li><p>Gangajal</p></li><li><p>Coconut</p></li><li><p>Supari</p></li><li><p>Betel leaves</p></li></ul><hr><h2>2. Puja Utensils and Accessories</h2><p>A well-organised puja thali may include:</p><ul><li><p>Puja Thali</p></li><li><p>Small bowls / Katoris</p></li><li><p>Panchpatra</p></li><li><p>Udarini / spoon</p></li><li><p>Kalash</p></li><li><p>Bell</p></li><li><p>Shankh</p></li><li><p>Aarti lamp</p></li><li><p>Diya stand</p></li><li><p>Incense holder</p></li><li><p>Camphor holder</p></li><li><p>Roli container</p></li><li><p>Kumkum container</p></li><li><p>Chandan container</p></li><li><p>Puja chowki</p></li><li><p>Asana</p></li></ul><p>These items are particularly useful for people who perform regular पूजा at home.</p><hr><p>? 3. Natural Puja Samagri</p><p>Many पूजा rituals also use natural offerings and sacred materials.</p><p>Common examples include:</p><ul><li><p>Flowers</p></li><li><p>Mango leaves</p></li><li><p>Tulsi leaves</p></li><li><p>Durva</p></li><li><p>Bilva leaves</p></li><li><p>Coconut</p></li><li><p>Fruits</p></li><li><p>Betel leaves</p></li><li><p>Supari</p></li><li><p>Rice</p></li><li><p>Barley / Jau</p></li><li><p>Seasonal leaves and offerings according to the ritual</p></li></ul><p><strong>Important:</strong> Not every item is required for every puja. For example, some leaves and offerings are specifically associated with particular deities or rituals.</p><hr><p>? 4. Bhog and Prasad Items</p><p>Puja is often followed by offering <strong>Bhog or Naivedya</strong>.</p><p>Common items include:</p><ul><li><p>Fruits</p></li><li><p>Mishri</p></li><li><p>Coconut</p></li><li><p>Dry fruits</p></li><li><p>Sweets</p></li><li><p>Milk</p></li><li><p>Curd</p></li><li><p>Ghee</p></li><li><p>Honey</p></li><li><p>Sugar</p></li><li><p>Panchamrit ingredients</p></li><li><p>Homemade prasad</p></li><li><p>Festival-specific bhog</p></li></ul><p>The exact bhog depends on the deity, festival and family tradition.</p><hr><p>? 5. Havan Samagri</p><p>If your puja includes a havan, you may need a separate set of <strong>Havan Samagri</strong>.</p><p>Commonly used items can include:</p><ul><li><p>Havan Samagri</p></li><li><p>Havan Kund</p></li><li><p>Samidha / sacred wood</p></li><li><p>Ghee</p></li><li><p>Camphor</p></li><li><p>Kapoor</p></li><li><p>Barley</p></li><li><p>Sesame seeds</p></li><li><p>Rice</p></li><li><p>Dried coconut</p></li><li><p>Herbs and other traditional ingredients</p></li></ul><p><strong>Puja Samagri and Havan Samagri are related but not exactly the same.</strong> Puja samagri is a broad category for worship, while havan samagri is specifically used during offerings into the sacred fire.</p><hr><p>?? Pooja Samagri in English — Complete Names</p><p>If you are looking for <strong>pooja samagri in English</strong> or <strong>puja samagri in English</strong>, this section can help.</p><table style=\"min-width: 50px\"><colgroup><col style=\"min-width: 25px\"><col style=\"min-width: 25px\"></colgroup><tbody><tr><th><p>Hindi</p></th><th><p>English</p></th></tr><tr><td><p>रोली</p></td><td><p>Roli</p></td></tr><tr><td><p>कुमकुम</p></td><td><p>Kumkum / Vermilion</p></td></tr><tr><td><p>हल्दी</p></td><td><p>Turmeric</p></td></tr><tr><td><p>चंदन</p></td><td><p>Sandalwood / Sandal Paste</p></td></tr><tr><td><p>अक्षत</p></td><td><p>Unbroken Rice</p></td></tr><tr><td><p>मौली / कलावा</p></td><td><p>Sacred Red-Yellow Thread</p></td></tr><tr><td><p>कपूर</p></td><td><p>Camphor</p></td></tr><tr><td><p>धूप</p></td><td><p>Dhoop / Incense</p></td></tr><tr><td><p>अगरबत्ती</p></td><td><p>Incense Sticks</p></td></tr><tr><td><p>दीपक</p></td><td><p>Oil Lamp / Diya</p></td></tr><tr><td><p>घी</p></td><td><p>Clarified Butter / Ghee</p></td></tr><tr><td><p>बत्ती</p></td><td><p>Cotton Wick</p></td></tr><tr><td><p>कलश</p></td><td><p>Sacred Pot / Kalash</p></td></tr><tr><td><p>नारियल</p></td><td><p>Coconut</p></td></tr><tr><td><p>सुपारी</p></td><td><p>Betel Nut / Areca Nut</p></td></tr><tr><td><p>पान</p></td><td><p>Betel Leaf</p></td></tr><tr><td><p>गंगाजल</p></td><td><p>Holy Ganga Water</p></td></tr><tr><td><p>फूल</p></td><td><p>Flowers</p></td></tr><tr><td><p>माला</p></td><td><p>Flower Garland</p></td></tr><tr><td><p>जौ</p></td><td><p>Barley</p></td></tr><tr><td><p>दूर्वा</p></td><td><p>Sacred Durva Grass</p></td></tr><tr><td><p>तुलसी</p></td><td><p>Holy Basil</p></td></tr><tr><td><p>आम के पत्ते</p></td><td><p>Mango Leaves</p></td></tr><tr><td><p>शंख</p></td><td><p>Conch Shell</p></td></tr><tr><td><p>घंटी</p></td><td><p>Bell</p></td></tr><tr><td><p>आरती थाली</p></td><td><p>Aarti Plate</p></td></tr><tr><td><p>पंचामृत</p></td><td><p>Panchamrit</p></td></tr><tr><td><p>प्रसाद</p></td><td><p>Prasad</p></td></tr><tr><td><p>भोग</p></td><td><p>Food Offering</p></td></tr></tbody></table><h3>Why is this list useful?</h3><p>If you live outside India, are shopping from an English-language website or are trying to explain Indian पूजा requirements to someone unfamiliar with Hindi terms, the <strong>English names of puja samagri</strong> can make shopping much easier.</p><hr><p>? Daily Pooja Items for Home</p><p>For a simple daily home mandir, you do not need a huge collection of products.</p><p>A practical daily <strong>pooja items list</strong> can include:</p><h3>Daily Puja Essentials Checklist</h3><p>☐ Diya<br>☐ Cotton wicks<br>☐ Ghee or oil<br>☐ Agarbatti<br>☐ Dhoop<br>☐ Camphor<br>☐ Roli<br>☐ Kumkum<br>☐ Haldi<br>☐ Chandan<br>☐ Akshat<br>☐ Flowers<br>☐ Water<br>☐ Gangajal, if used in your tradition<br>☐ Moli / Kalava<br>☐ Fruits or prasad<br>☐ Puja thali<br>☐ Bell</p><p>This is enough for many simple daily worship routines, while additional items can be added according to the specific पूजा.</p><hr><p>? Festival-Wise Pooja Samagri</p><p>Different festivals require different पूजा materials.</p><p>For example:</p><h3>Navratri Puja</h3><p>Common items include:</p><ul><li><p>Kalash</p></li><li><p>Coconut</p></li><li><p>Mango leaves</p></li><li><p>Jau / Barley</p></li><li><p>Roli</p></li><li><p>Kumkum</p></li><li><p>Akshat</p></li><li><p>Mata Chunri</p></li><li><p>Flowers</p></li><li><p>Diya</p></li><li><p>Dhoop</p></li><li><p>Camphor</p></li><li><p>Fruits</p></li><li><p>Bhog ingredients</p></li><li><p>Kanya Pujan items, where applicable</p></li></ul><h3>Diwali Lakshmi Puja</h3><p>Common items may include:</p><ul><li><p>Lakshmi-Ganesh idols</p></li><li><p>Kalash</p></li><li><p>Roli</p></li><li><p>Kumkum</p></li><li><p>Akshat</p></li><li><p>Flowers</p></li><li><p>Garland</p></li><li><p>Diya</p></li><li><p>Ghee/oil</p></li><li><p>Cotton wicks</p></li><li><p>Dhoop</p></li><li><p>Camphor</p></li><li><p>Coins</p></li><li><p>Fruits</p></li><li><p>Sweets</p></li><li><p>Dry fruits</p></li><li><p>Traditional offerings</p></li></ul><h3>Ganesh Puja</h3><p>Depending on tradition:</p><ul><li><p>Lord Ganesha idol</p></li><li><p>Durva</p></li><li><p>Flowers</p></li><li><p>Modak</p></li><li><p>Coconut</p></li><li><p>Roli</p></li><li><p>Kumkum</p></li><li><p>Akshat</p></li><li><p>Chandan</p></li><li><p>Diya</p></li><li><p>Dhoop</p></li><li><p>Camphor</p></li><li><p>Fruits</p></li><li><p>Moli</p></li></ul><h3>Satyanarayan Puja</h3><p>The samagri can include:</p><ul><li><p>Kalash</p></li><li><p>Coconut</p></li><li><p>Mango leaves</p></li><li><p>Panchamrit ingredients</p></li><li><p>Fruits</p></li><li><p>Flowers</p></li><li><p>Tulsi leaves</p></li><li><p>Roli</p></li><li><p>Kumkum</p></li><li><p>Akshat</p></li><li><p>Chandan</p></li><li><p>Diya</p></li><li><p>Incense</p></li><li><p>Prasad ingredients</p></li><li><p>Satyanarayan Katha book</p></li></ul><p><strong>Always follow the specific list given by your pandit or your family\'s tradition when performing a detailed ritual.</strong></p><hr><p>?️ Where Can You Buy Puja Items Online?</p><p>If you need only one or two products, visiting a local <strong>puja shop</strong> or <strong>pooja store</strong> can be convenient.</p><p>But when you need a complete <strong>pooja samagri list</strong>, buying everything individually from different shops can become time-consuming.</p><p>This is why many families prefer to search for:</p><p><strong>“pooja items online”</strong><br><strong>“puja items online”</strong><br><strong>“pooja samagri online”</strong><br><strong>“pooja samagri shop”</strong><br><strong>“pooja samagri store”</strong></p><p>Online shopping can be especially useful before festivals because you can prepare your list first and then purchase the required items together.</p><h3>What should you check before buying pooja items online?</h3><p>Before placing an order, check:</p><ol><li><p><strong>Product name and quantity</strong></p></li><li><p><strong>Ingredients, especially for samagri mixtures</strong></p></li><li><p><strong>Pack size</strong></p></li><li><p><strong>Delivery time</strong></p></li><li><p><strong>Seller information</strong></p></li><li><p><strong>Return/replacement policy where applicable</strong></p></li><li><p><strong>Whether the product is suitable for your intended puja</strong></p></li><li><p><strong>Whether you actually need the item according to your family tradition</strong></p></li></ol><p>Don\'t buy a large bundle simply because it is called a “complete puja kit.” Your actual requirements may be different.</p><hr><p>? Pooja Store vs Pooja Shop vs Online Pooja Store</p><p>People use different search terms when looking for पूजा products.</p><h3>Pooja Store</h3><p>A <strong>pooja store</strong> generally sells पूजा-related products such as:</p><ul><li><p>Puja samagri</p></li><li><p>Diyas</p></li><li><p>Incense</p></li><li><p>Idols</p></li><li><p>Puja utensils</p></li><li><p>Religious accessories</p></li><li><p>Festival kits</p></li></ul><h3>Puja Shop</h3><p>A <strong>puja shop</strong> can refer to a physical or online shop where devotees purchase पूजा materials.</p><h3>Pooja Samagri Store</h3><p>A <strong>pooja samagri store</strong> focuses more specifically on पूजा ingredients and ritual materials.</p><h3>Pooja Items Online</h3><p>This usually refers to online shopping for individual पूजा products, accessories, kits and samagri.</p><p>For customers, all of these searches have one common goal:</p><p><strong>“Mujhe पूजा के लिए सही सामान आसानी से चाहिए.”</strong></p><p>And that is exactly where an organised online puja store can make preparation easier.</p><hr><p>? What Are the Most Important Puja Items?</p><p>If you are a beginner and wondering, <strong>“What pooja things do I really need?”</strong>, start with these essentials:</p><p><strong>Diya + cotton wick + ghee/oil + roli + kumkum + haldi + akshat + flowers + incense + camphor + water + prasad.</strong></p><p>Then add:</p><p><strong>Kalash + coconut + mango leaves + moli + chandan + betel leaves + supari</strong></p><p>when your particular ritual requires them.</p><p>You don\'t need to purchase everything available in a pooja shop.</p><p><strong>The correct samagri is the samagri required for your specific पूजा.</strong></p><hr><p>? Printable Pooja Items List</p><p>Save or screenshot this checklist before going shopping.</p><h2>Basic Puja Checklist</h2><p>☐ Diya<br>☐ Cotton Wicks<br>☐ Ghee<br>☐ Puja Oil<br>☐ Roli<br>☐ Kumkum<br>☐ Haldi<br>☐ Chandan<br>☐ Akshat / Rice<br>☐ Moli / Kalava<br>☐ Agarbatti<br>☐ Dhoop<br>☐ Camphor<br>☐ Flowers<br>☐ Garland<br>☐ Coconut<br>☐ Betel Leaves<br>☐ Supari<br>☐ Gangajal<br>☐ Kalash<br>☐ Mango Leaves<br>☐ Fruits<br>☐ Sweets / Prasad<br>☐ Puja Thali<br>☐ Bell<br>☐ Shankh<br>☐ Panchamrit Ingredients<br>☐ Puja Cloth<br>☐ Aarti Lamp</p><h3>Festival-Specific Checklist</h3><p>☐ Festival-specific idol/photo<br>☐ Special flowers/leaves<br>☐ Special bhog<br>☐ Havan Samagri, if required<br>☐ Vrat ingredients, if applicable<br>☐ Kanya Pujan items, if applicable<br>☐ Festival decoration items</p><hr><p>? Frequently Asked Questions About Puja Items</p><h2>What are the basic puja items needed at home?</h2><p>The basic puja items commonly used at home include a diya, cotton wicks, ghee or oil, incense, camphor, roli, kumkum, haldi, chandan, akshat, flowers, water and prasad. Additional items depend on the specific puja.</p><h2>What is included in a pooja samagri list?</h2><p>A typical pooja samagri list can include puja powders such as roli, kumkum, haldi and chandan; offerings such as flowers, fruits, coconut and sweets; lighting items such as diya, ghee, oil and cotton wicks; and ritual items such as kalash, moli, betel leaves and supari.</p><h2>What is the difference between Puja Samagri and Havan Samagri?</h2><p><strong>Puja Samagri</strong> is the broader collection of materials used during worship. <strong>Havan Samagri</strong> refers specifically to ingredients used as offerings in a havan or sacred fire ritual.</p><h2>What are pooja samagri names in English?</h2><p>Common names include Roli – ritual vermilion, Kumkum – vermilion, Akshat – unbroken rice, Moli – sacred thread, Diya – oil lamp, Kapoor – camphor, Agarbatti – incense sticks, Kalash – sacred pot, Supari – betel nut and Gangajal – holy Ganga water.</p><h2>Can I buy pooja items online?</h2><p>Yes. You can buy individual <strong>pooja items online</strong>, complete puja kits, festival-specific samagri and daily worship essentials. Before ordering, check quantities, ingredients, delivery time and whether the items match your specific ritual.</p><h2>Where can I find a pooja samagri shop?</h2><p>You can find puja products at local religious markets, dedicated <strong>pooja shops</strong>, traditional stores and online <strong>pooja samagri stores</strong>. Online stores can be particularly convenient when you need several items at once.</p><h2>Do I need every item in a complete pooja samagri list?</h2><p>No. There is no need to buy every item simply because it appears on a generic list. Puja requirements differ according to the ritual, deity, region and family tradition.</p><h2>What pooja items should a beginner buy?</h2><p>A beginner can start with basic items such as diya, cotton wicks, ghee/oil, roli, kumkum, haldi, chandan, akshat, flowers, incense, camphor, water and prasad. Add ritual-specific items when needed.</p><hr><p>? One Place for Your Puja Preparation — Samagri Seva</p><p>Finding one missing puja item at the last minute can turn a peaceful पूजा preparation into a stressful shopping trip.</p><p>You may have the flowers but no camphor.</p><p>You may have the diya but no cotton wicks.</p><p>You may have the kalash but forget the coconut.</p><p>And when a major festival is approaching, visiting multiple shops for every small item can take even more time.</p><p>That\'s why <strong>Samagri Seva</strong> is built around a simple idea:</p><h2><strong>Every Puja Preparation, One Sacred Place.</strong></h2><p>Whether you are looking for:</p><ul><li><p>Puja Items</p></li><li><p>Pooja Items</p></li><li><p>Pooja Samagri</p></li><li><p>Daily Puja Essentials</p></li><li><p>Festival Puja Samagri</p></li><li><p>Puja Kits</p></li><li><p>Diya and Cotton Wicks</p></li><li><p>Roli and Kumkum</p></li><li><p>Dhoop and Incense</p></li><li><p>Camphor</p></li><li><p>Mata Chunri</p></li><li><p>Havan Samagri</p></li><li><p>Puja Accessories</p></li><li><p>Devotional Products</p></li></ul><p>the goal is to make your पूजा preparation simpler and more organised.</p><h3>Prepare your list.</h3><h3>Check your samagri.</h3><h3>Order what you need.</h3><h3>And spend more time in devotion.</h3><hr><p>❤️ Puja Is About More Than the Items</p><p>A complete <strong>pooja items list</strong> is useful, but पूजा is not about collecting the maximum number of things.</p><p>A small diya can be enough to begin.</p><p>A few flowers can be enough to offer.</p><p>A sincere prayer can be enough to bring peace.</p><p>The samagri supports the ritual, but <strong>श्रद्धा gives the ritual its meaning.</strong></p><p>So before every puja, prepare not only your shopping list but also your heart.</p><p><strong>कम सामान हो सकता है, लेकिन श्रद्धा कम नहीं होनी चाहिए।</strong></p><hr><p>? Final Pooja Samagri Checklist</p><p>Before starting your next puja, ask yourself:</p><p><strong>✔ Do I have my basic puja items?</strong><br><strong>✔ Do I have the special items required for this particular puja?</strong><br><strong>✔ Do I have flowers, fruits and bhog?</strong><br><strong>✔ Do I have diya, ghee/oil and cotton wicks?</strong><br><strong>✔ Do I have roli, kumkum, haldi, chandan and akshat?</strong><br><strong>✔ Do I need a kalash, coconut or mango leaves?</strong><br><strong>✔ Do I need havan samagri?</strong><br><strong>✔ Do I need any festival-specific items?</strong><br><strong>✔ Have I checked my family\'s traditional requirements?</strong></p><p>If the answer is yes, you are ready.</p><hr><p>? Conclusion</p><p>Whether you call them <strong>Puja Items, Pooja Items, Pooja Samagri, Puja Samagri, Pooja Things or Pooja Saman</strong>, the purpose remains the same — to help us prepare for worship with devotion and respect.</p><p>From a simple daily diya to a complete festival puja, the right preparation can make your spiritual routine easier and more peaceful.</p><p>And when you don\'t have to run from shop to shop searching for every small item, you get something even more valuable:</p><p><strong>Time to pray.<br>Time to connect.<br>Time to celebrate.</strong></p><h3>Samagri Seva</h3><p><strong>Every Puja Preparation, One Sacred Place.</strong></p><p><strong>Prepare with devotion. Prepare with convenience. Prepare with Samagri Seva.</strong></p><p><strong>जय माता दी। ??</strong></p>','https://samagriseva.com/og-image.png','','Samagri Seva',10,1,'2026-10-06 00:00:00.000000','','','','2026-10-06 13:48:16.313270','2026-10-06 13:48:16.313280');

/*Table structure for table `bulk_inquiries` */

DROP TABLE IF EXISTS `bulk_inquiries`;

CREATE TABLE `bulk_inquiries` (
  `id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `organisation` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inquiry_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `bulk_inquiries` */

insert  into `bulk_inquiries`(`id`,`name`,`organisation`,`phone`,`email`,`inquiry_type`,`message`,`created_at`) values 
('392d5928-4024-43ab-95bb-06350681cb16','Raman','','09899278212',NULL,'temple','test','2026-10-05 17:43:52.523504');

/*Table structure for table `categories` */

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tagline` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `sort_order` int NOT NULL DEFAULT '0',
  `seo_title` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keywords` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_categories_slug` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `categories` */

insert  into `categories`(`id`,`slug`,`name`,`tagline`,`image`,`active`,`sort_order`,`seo_title`,`seo_description`,`seo_keywords`,`created_at`,`updated_at`) values 
('26e2bfeb08a14effa6d5ab02e754bd20','diyas-lamps','Diyas & Lamps','Clay Diyas • Brass Diyas • Puja Lamps','https://images.unsplash.com/photo-1761295908075-065ac2db0f5c?crop=entropy&cs=srgb&fm=jpg&q=85&w=900',1,4,'','','','2026-10-04 04:00:48.097436','2026-10-04 04:00:48.097436'),
('5bbefaed8b4b4f42a92acee7c5d6afe5','idols-murtis','Idols & Murtis','Ganesh • Shiv • Lakshmi • Hanuman • Krishna','https://images.unsplash.com/photo-1631446416793-edfbeade1692?crop=entropy&cs=srgb&fm=jpg&q=85&w=900',1,6,'','','','2026-10-04 04:00:48.101100','2026-10-04 04:00:48.101100'),
('5fb00a87c7f2474193ae314b20a2598b','brass-copper','Brass & Copper','Kalash • Bell • Diya • Thali • Puja Accessories','https://images.unsplash.com/photo-1605764803170-c20b43be4d00?crop=entropy&cs=srgb&fm=jpg&q=85&w=900',1,5,'','','','2026-10-04 04:00:48.099781','2026-10-04 04:00:48.099781'),
('6c12daa11f2b48e2bf762c8202e85e22','incense-dhoop','Incense & Dhoop','Agarbatti • Dhoop • Premium Incense','https://images.unsplash.com/photo-1541795083-1b160cf4f3d7?crop=entropy&cs=srgb&fm=jpg&q=85&w=900',1,3,'','','','2026-10-04 04:00:48.095577','2026-10-04 04:00:48.095577'),
('959e5be92ba54deabe8d341d2bcb79a1','spiritual-products','Spiritual Products','Mala • Yantra • Spiritual Decor • Accessories','https://images.unsplash.com/photo-1512917860049-18d416baa831?crop=entropy&cs=srgb&fm=jpg&q=85&w=900',1,7,'','','','2026-10-04 04:00:48.102282','2026-10-04 04:00:48.102282'),
('9bd93c6179644fbbb3ac2f27dce9ea90','havan-samagri','Havan Samagri','Havan Mix • Havan Cups • Samidha • Special Havan Kits','https://images.unsplash.com/photo-1666694051761-cd972857da30?crop=entropy&cs=srgb&fm=jpg&q=85&w=900',1,2,'','','','2026-10-04 04:00:48.093914','2026-10-04 04:00:48.093914'),
('ff31ba950e3f4182866031794972ce13','puja-samagri','Puja Samagri','Roli • Kumkum • Chandan • Kapoor • Kalawa • Batti','https://images.unsplash.com/photo-1667670651830-2d5bcd0e4f8f?crop=entropy&cs=srgb&fm=jpg&q=85&w=900',1,1,'','','','2026-10-04 04:00:48.092742','2026-10-04 04:00:48.092742');

/*Table structure for table `custom_items` */

DROP TABLE IF EXISTS `custom_items`;

CREATE TABLE `custom_items` (
  `id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_custom_items_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `custom_items` */

insert  into `custom_items`(`id`,`name`,`price`) values 
('0bbb8f85-3d10-42fd-9c16-9e5ddd863929','Bhimseni Camphor 100g',199),
('1465429a-4f4c-4e64-a84a-01562234469e','Hand-rolled Dhoop (40)',149),
('2b2a89b0-a518-4f34-bac7-2e6d54e75628','Desi Cow Ghee 250ml',349),
('3f481833-722c-4502-adb7-d53fc44c51b8','Rudraksha Mala',499),
('664461fb-2ea1-476f-a02a-f3ef52778a43','Varanasi Kumkum 50g',79),
('8d19726e-d0ce-435f-a5e7-3ee9fe824136','Gangajal 250ml',99),
('9e695a05-2177-45f3-911f-611117425024','Puja Vidhi Booklet',129),
('dfebc0c2-1ad2-461b-9c96-46b12971fcff','Brass Diya (pair)',599),
('e78b15fe-0afc-47a8-a021-f41262235f68','Copper Kalash',699),
('ef75819e-0f0a-46ad-9d96-28babd20815f','Mysore Chandan Tilak',149);

/*Table structure for table `customer_addresses` */

DROP TABLE IF EXISTS `customer_addresses`;

CREATE TABLE `customer_addresses` (
  `id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_customer_addresses_customer` (`customer_id`),
  CONSTRAINT `fk_customer_addresses_customer` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `customer_addresses` */

/*Table structure for table `customers` */

DROP TABLE IF EXISTS `customers`;

CREATE TABLE `customers` (
  `id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_hash` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_customers_email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `customers` */

insert  into `customers`(`id`,`name`,`email`,`phone`,`password_hash`,`created_at`,`updated_at`) values 
('d6d1dc1e-dd9c-4153-a928-cb19f33fa0cc','Raman','manraman@gmail.com','9198992782','$2b$12$7Fja44X9GiEz4GhCQZoEUOW1pMdmVeWMf6FIww2JXWiQNBPyGQ4pC','2026-10-03 11:23:21.399511','2026-10-03 11:23:21.399545');

/*Table structure for table `flyway_schema_history` */

DROP TABLE IF EXISTS `flyway_schema_history`;

CREATE TABLE `flyway_schema_history` (
  `installed_rank` int NOT NULL,
  `version` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `script` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checksum` int DEFAULT NULL,
  `installed_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `installed_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `execution_time` int NOT NULL,
  `success` tinyint(1) NOT NULL,
  PRIMARY KEY (`installed_rank`),
  KEY `flyway_schema_history_s_idx` (`success`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `flyway_schema_history` */

insert  into `flyway_schema_history`(`installed_rank`,`version`,`description`,`type`,`script`,`checksum`,`installed_by`,`installed_on`,`execution_time`,`success`) values 
(1,'1','schema','SQL','V1__schema.sql',-331648069,'samagriseva','2026-10-11 00:56:21',442,1);

/*Table structure for table `kit_images` */

DROP TABLE IF EXISTS `kit_images`;

CREATE TABLE `kit_images` (
  `kit_id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idx` int NOT NULL,
  `url` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`kit_id`,`idx`),
  CONSTRAINT `fk_kit_images_kit` FOREIGN KEY (`kit_id`) REFERENCES `kits` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `kit_images` */

insert  into `kit_images`(`kit_id`,`idx`,`url`) values 
('34c7ed4e3a9844d2853fcf5880fc1726',0,'https://images.unsplash.com/photo-1627419375575-6cb2faa849b3?crop=entropy&cs=srgb&fm=jpg&q=85&w=900'),
('470ed2e30c5541eca4caf33ed55f9a0b',0,'https://images.unsplash.com/photo-1605292356183-a77d0a9c9d1d?crop=entropy&cs=srgb&fm=jpg&q=85&w=900'),
('4901926183f84b5f87596a728f2e2aad',0,'https://images.unsplash.com/photo-1760857195921-2275a064bca8?crop=entropy&cs=srgb&fm=jpg&q=85&w=900'),
('745a4dd157e44f56919447342643ce53',0,'https://images.unsplash.com/photo-1667670651830-2d5bcd0e4f8f?crop=entropy&cs=srgb&fm=jpg&q=85&w=900'),
('7b38c386f61a4dcc93b789da6a6c95ae',0,'https://images.unsplash.com/photo-1699764681875-dd04ce36b1c3?crop=entropy&cs=srgb&fm=jpg&q=85&w=900'),
('90d469df9f7c4561bba0c3db2e3d0672',0,'https://images.unsplash.com/photo-1630764883473-e8c2056f0589?crop=entropy&cs=srgb&fm=jpg&q=85&w=900'),
('be242963a9d346ecafa7385b619477d5',0,'https://images.unsplash.com/photo-1552017830-4c76378f4e49?crop=entropy&cs=srgb&fm=jpg&q=85&w=900'),
('c0fb1923df364a5c89a47c2803a23ebc',0,'https://images.unsplash.com/photo-1616377009507-c8111f07aced?crop=entropy&cs=srgb&fm=jpg&q=85&w=900');

/*Table structure for table `kit_included_items` */

DROP TABLE IF EXISTS `kit_included_items`;

CREATE TABLE `kit_included_items` (
  `kit_id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idx` int NOT NULL,
  `item` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`kit_id`,`idx`),
  CONSTRAINT `fk_kit_included_items_kit` FOREIGN KEY (`kit_id`) REFERENCES `kits` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `kit_included_items` */

insert  into `kit_included_items`(`kit_id`,`idx`,`item`) values 
('34c7ed4e3a9844d2853fcf5880fc1726',0,'Roli'),
('34c7ed4e3a9844d2853fcf5880fc1726',1,'Kumkum (Varanasi)'),
('34c7ed4e3a9844d2853fcf5880fc1726',2,'Haldi'),
('34c7ed4e3a9844d2853fcf5880fc1726',3,'Mysore Chandan'),
('34c7ed4e3a9844d2853fcf5880fc1726',4,'Akshat Rice'),
('34c7ed4e3a9844d2853fcf5880fc1726',5,'Kalawa Moli'),
('34c7ed4e3a9844d2853fcf5880fc1726',6,'Bhimseni Camphor'),
('34c7ed4e3a9844d2853fcf5880fc1726',7,'Cotton Wicks'),
('34c7ed4e3a9844d2853fcf5880fc1726',8,'Desi Cow Ghee'),
('34c7ed4e3a9844d2853fcf5880fc1726',9,'Gangajal'),
('34c7ed4e3a9844d2853fcf5880fc1726',10,'Incense Sticks'),
('34c7ed4e3a9844d2853fcf5880fc1726',11,'Puja Vidhi Booklet'),
('34c7ed4e3a9844d2853fcf5880fc1726',12,'Havan Kund'),
('34c7ed4e3a9844d2853fcf5880fc1726',13,'Mangalsutra Thread'),
('34c7ed4e3a9844d2853fcf5880fc1726',14,'Laja (Puffed Rice)'),
('34c7ed4e3a9844d2853fcf5880fc1726',15,'Kanyadaan Set'),
('34c7ed4e3a9844d2853fcf5880fc1726',16,'Sindoor Dani'),
('470ed2e30c5541eca4caf33ed55f9a0b',0,'Roli'),
('470ed2e30c5541eca4caf33ed55f9a0b',1,'Kumkum (Varanasi)'),
('470ed2e30c5541eca4caf33ed55f9a0b',2,'Haldi'),
('470ed2e30c5541eca4caf33ed55f9a0b',3,'Mysore Chandan'),
('470ed2e30c5541eca4caf33ed55f9a0b',4,'Akshat Rice'),
('470ed2e30c5541eca4caf33ed55f9a0b',5,'Kalawa Moli'),
('470ed2e30c5541eca4caf33ed55f9a0b',6,'Bhimseni Camphor'),
('470ed2e30c5541eca4caf33ed55f9a0b',7,'Cotton Wicks'),
('470ed2e30c5541eca4caf33ed55f9a0b',8,'Desi Cow Ghee'),
('470ed2e30c5541eca4caf33ed55f9a0b',9,'Gangajal'),
('470ed2e30c5541eca4caf33ed55f9a0b',10,'Incense Sticks'),
('470ed2e30c5541eca4caf33ed55f9a0b',11,'Puja Vidhi Booklet'),
('470ed2e30c5541eca4caf33ed55f9a0b',12,'Lotus Seeds'),
('470ed2e30c5541eca4caf33ed55f9a0b',13,'Kamalgatta'),
('470ed2e30c5541eca4caf33ed55f9a0b',14,'Gomti Chakra'),
('470ed2e30c5541eca4caf33ed55f9a0b',15,'Silver Coin'),
('470ed2e30c5541eca4caf33ed55f9a0b',16,'Kesar'),
('4901926183f84b5f87596a728f2e2aad',0,'Roli'),
('4901926183f84b5f87596a728f2e2aad',1,'Kumkum (Varanasi)'),
('4901926183f84b5f87596a728f2e2aad',2,'Haldi'),
('4901926183f84b5f87596a728f2e2aad',3,'Mysore Chandan'),
('4901926183f84b5f87596a728f2e2aad',4,'Akshat Rice'),
('4901926183f84b5f87596a728f2e2aad',5,'Kalawa Moli'),
('4901926183f84b5f87596a728f2e2aad',6,'Bhimseni Camphor'),
('4901926183f84b5f87596a728f2e2aad',7,'Cotton Wicks'),
('4901926183f84b5f87596a728f2e2aad',8,'Desi Cow Ghee'),
('4901926183f84b5f87596a728f2e2aad',9,'Gangajal'),
('4901926183f84b5f87596a728f2e2aad',10,'Incense Sticks'),
('4901926183f84b5f87596a728f2e2aad',11,'Puja Vidhi Booklet'),
('4901926183f84b5f87596a728f2e2aad',12,'Bel Patra'),
('4901926183f84b5f87596a728f2e2aad',13,'Panchamrit Set'),
('4901926183f84b5f87596a728f2e2aad',14,'Dhatura'),
('4901926183f84b5f87596a728f2e2aad',15,'Rudraksha Mala'),
('4901926183f84b5f87596a728f2e2aad',16,'Bhasma'),
('745a4dd157e44f56919447342643ce53',0,'Roli'),
('745a4dd157e44f56919447342643ce53',1,'Kumkum (Varanasi)'),
('745a4dd157e44f56919447342643ce53',2,'Haldi'),
('745a4dd157e44f56919447342643ce53',3,'Mysore Chandan'),
('745a4dd157e44f56919447342643ce53',4,'Akshat Rice'),
('745a4dd157e44f56919447342643ce53',5,'Kalawa Moli'),
('745a4dd157e44f56919447342643ce53',6,'Bhimseni Camphor'),
('745a4dd157e44f56919447342643ce53',7,'Cotton Wicks'),
('745a4dd157e44f56919447342643ce53',8,'Desi Cow Ghee'),
('745a4dd157e44f56919447342643ce53',9,'Gangajal'),
('745a4dd157e44f56919447342643ce53',10,'Incense Sticks'),
('745a4dd157e44f56919447342643ce53',11,'Puja Vidhi Booklet'),
('745a4dd157e44f56919447342643ce53',12,'Copper Kalash'),
('745a4dd157e44f56919447342643ce53',13,'Coconut'),
('745a4dd157e44f56919447342643ce53',14,'Mango Leaves'),
('745a4dd157e44f56919447342643ce53',15,'Navagraha Samagri'),
('745a4dd157e44f56919447342643ce53',16,'Vastu Yantra'),
('745a4dd157e44f56919447342643ce53',17,'Toran'),
('7b38c386f61a4dcc93b789da6a6c95ae',0,'Roli'),
('7b38c386f61a4dcc93b789da6a6c95ae',1,'Kumkum (Varanasi)'),
('7b38c386f61a4dcc93b789da6a6c95ae',2,'Haldi'),
('7b38c386f61a4dcc93b789da6a6c95ae',3,'Mysore Chandan'),
('7b38c386f61a4dcc93b789da6a6c95ae',4,'Akshat Rice'),
('7b38c386f61a4dcc93b789da6a6c95ae',5,'Kalawa Moli'),
('7b38c386f61a4dcc93b789da6a6c95ae',6,'Bhimseni Camphor'),
('7b38c386f61a4dcc93b789da6a6c95ae',7,'Cotton Wicks'),
('7b38c386f61a4dcc93b789da6a6c95ae',8,'Desi Cow Ghee'),
('7b38c386f61a4dcc93b789da6a6c95ae',9,'Gangajal'),
('7b38c386f61a4dcc93b789da6a6c95ae',10,'Incense Sticks'),
('7b38c386f61a4dcc93b789da6a6c95ae',11,'Puja Vidhi Booklet'),
('7b38c386f61a4dcc93b789da6a6c95ae',12,'Akhand Jyot Diya'),
('7b38c386f61a4dcc93b789da6a6c95ae',13,'Chunri'),
('7b38c386f61a4dcc93b789da6a6c95ae',14,'Mata Ki Chowki Cloth'),
('7b38c386f61a4dcc93b789da6a6c95ae',15,'Kanya Bhoj Set'),
('7b38c386f61a4dcc93b789da6a6c95ae',16,'Barley Seeds'),
('90d469df9f7c4561bba0c3db2e3d0672',0,'Roli'),
('90d469df9f7c4561bba0c3db2e3d0672',1,'Kumkum (Varanasi)'),
('90d469df9f7c4561bba0c3db2e3d0672',2,'Haldi'),
('90d469df9f7c4561bba0c3db2e3d0672',3,'Mysore Chandan'),
('90d469df9f7c4561bba0c3db2e3d0672',4,'Akshat Rice'),
('90d469df9f7c4561bba0c3db2e3d0672',5,'Kalawa Moli'),
('90d469df9f7c4561bba0c3db2e3d0672',6,'Bhimseni Camphor'),
('90d469df9f7c4561bba0c3db2e3d0672',7,'Cotton Wicks'),
('90d469df9f7c4561bba0c3db2e3d0672',8,'Desi Cow Ghee'),
('90d469df9f7c4561bba0c3db2e3d0672',9,'Gangajal'),
('90d469df9f7c4561bba0c3db2e3d0672',10,'Incense Sticks'),
('90d469df9f7c4561bba0c3db2e3d0672',11,'Puja Vidhi Booklet'),
('90d469df9f7c4561bba0c3db2e3d0672',12,'Havan Mix (108 herbs)'),
('90d469df9f7c4561bba0c3db2e3d0672',13,'Mango Samidha'),
('90d469df9f7c4561bba0c3db2e3d0672',14,'Havan Cups'),
('90d469df9f7c4561bba0c3db2e3d0672',15,'Aahuti Ghee'),
('90d469df9f7c4561bba0c3db2e3d0672',16,'Camphor Slabs'),
('be242963a9d346ecafa7385b619477d5',0,'Roli'),
('be242963a9d346ecafa7385b619477d5',1,'Kumkum (Varanasi)'),
('be242963a9d346ecafa7385b619477d5',2,'Haldi'),
('be242963a9d346ecafa7385b619477d5',3,'Mysore Chandan'),
('be242963a9d346ecafa7385b619477d5',4,'Akshat Rice'),
('be242963a9d346ecafa7385b619477d5',5,'Kalawa Moli'),
('be242963a9d346ecafa7385b619477d5',6,'Bhimseni Camphor'),
('be242963a9d346ecafa7385b619477d5',7,'Cotton Wicks'),
('be242963a9d346ecafa7385b619477d5',8,'Desi Cow Ghee'),
('be242963a9d346ecafa7385b619477d5',9,'Gangajal'),
('be242963a9d346ecafa7385b619477d5',10,'Incense Sticks'),
('be242963a9d346ecafa7385b619477d5',11,'Puja Vidhi Booklet'),
('be242963a9d346ecafa7385b619477d5',12,'Katha Book'),
('be242963a9d346ecafa7385b619477d5',13,'Panchamrit Vessel'),
('be242963a9d346ecafa7385b619477d5',14,'Banana Leaves'),
('be242963a9d346ecafa7385b619477d5',15,'Prasad Ingredients'),
('be242963a9d346ecafa7385b619477d5',16,'Supari'),
('c0fb1923df364a5c89a47c2803a23ebc',0,'Roli'),
('c0fb1923df364a5c89a47c2803a23ebc',1,'Kumkum (Varanasi)'),
('c0fb1923df364a5c89a47c2803a23ebc',2,'Haldi'),
('c0fb1923df364a5c89a47c2803a23ebc',3,'Mysore Chandan'),
('c0fb1923df364a5c89a47c2803a23ebc',4,'Akshat Rice'),
('c0fb1923df364a5c89a47c2803a23ebc',5,'Kalawa Moli'),
('c0fb1923df364a5c89a47c2803a23ebc',6,'Bhimseni Camphor'),
('c0fb1923df364a5c89a47c2803a23ebc',7,'Cotton Wicks'),
('c0fb1923df364a5c89a47c2803a23ebc',8,'Desi Cow Ghee'),
('c0fb1923df364a5c89a47c2803a23ebc',9,'Gangajal'),
('c0fb1923df364a5c89a47c2803a23ebc',10,'Incense Sticks'),
('c0fb1923df364a5c89a47c2803a23ebc',11,'Puja Vidhi Booklet'),
('c0fb1923df364a5c89a47c2803a23ebc',12,'Durva Grass'),
('c0fb1923df364a5c89a47c2803a23ebc',13,'Modak Bhog Mix'),
('c0fb1923df364a5c89a47c2803a23ebc',14,'Red Flowers'),
('c0fb1923df364a5c89a47c2803a23ebc',15,'Shodashopachara Guide');

/*Table structure for table `kit_tiers` */

DROP TABLE IF EXISTS `kit_tiers`;

CREATE TABLE `kit_tiers` (
  `kit_id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idx` int NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int NOT NULL DEFAULT '0',
  `items` int NOT NULL DEFAULT '0',
  `tagline` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`kit_id`,`idx`),
  CONSTRAINT `fk_kit_tiers_kit` FOREIGN KEY (`kit_id`) REFERENCES `kits` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `kit_tiers` */

insert  into `kit_tiers`(`kit_id`,`idx`,`name`,`price`,`items`,`tagline`) values 
('34c7ed4e3a9844d2853fcf5880fc1726',0,'Basic',1499,32,'Essential samagri for a simple puja'),
('34c7ed4e3a9844d2853fcf5880fc1726',1,'Complete',2299,48,'Everything the vidhi calls for'),
('34c7ed4e3a9844d2853fcf5880fc1726',2,'Premium',3499,64,'Brass shringar, flowers & prasad set'),
('470ed2e30c5541eca4caf33ed55f9a0b',0,'Basic',699,22,'Essential samagri for a simple puja'),
('470ed2e30c5541eca4caf33ed55f9a0b',1,'Complete',1099,36,'Everything the vidhi calls for'),
('470ed2e30c5541eca4caf33ed55f9a0b',2,'Premium',1649,52,'Brass shringar, flowers & prasad set'),
('4901926183f84b5f87596a728f2e2aad',0,'Basic',599,20,'Essential samagri for a simple puja'),
('4901926183f84b5f87596a728f2e2aad',1,'Complete',949,34,'Everything the vidhi calls for'),
('4901926183f84b5f87596a728f2e2aad',2,'Premium',1449,50,'Brass shringar, flowers & prasad set'),
('745a4dd157e44f56919447342643ce53',0,'Basic',999,28,'Essential samagri for a simple puja'),
('745a4dd157e44f56919447342643ce53',1,'Complete',1599,42,'Everything the vidhi calls for'),
('745a4dd157e44f56919447342643ce53',2,'Premium',2399,58,'Brass shringar, flowers & prasad set'),
('7b38c386f61a4dcc93b789da6a6c95ae',0,'Basic',899,26,'Essential samagri for a simple puja'),
('7b38c386f61a4dcc93b789da6a6c95ae',1,'Complete',1399,40,'Everything the vidhi calls for'),
('7b38c386f61a4dcc93b789da6a6c95ae',2,'Premium',2099,56,'Brass shringar, flowers & prasad set'),
('90d469df9f7c4561bba0c3db2e3d0672',0,'Basic',799,22,'Essential samagri for a simple puja'),
('90d469df9f7c4561bba0c3db2e3d0672',1,'Complete',1249,36,'Everything the vidhi calls for'),
('90d469df9f7c4561bba0c3db2e3d0672',2,'Premium',1899,52,'Brass shringar, flowers & prasad set'),
('be242963a9d346ecafa7385b619477d5',0,'Basic',799,24,'Essential samagri for a simple puja'),
('be242963a9d346ecafa7385b619477d5',1,'Complete',1249,38,'Everything the vidhi calls for'),
('be242963a9d346ecafa7385b619477d5',2,'Premium',1899,54,'Brass shringar, flowers & prasad set'),
('c0fb1923df364a5c89a47c2803a23ebc',0,'Basic',499,18,'Essential samagri for a simple puja'),
('c0fb1923df364a5c89a47c2803a23ebc',1,'Complete',799,32,'Everything the vidhi calls for'),
('c0fb1923df364a5c89a47c2803a23ebc',2,'Premium',1199,48,'Brass shringar, flowers & prasad set');

/*Table structure for table `kits` */

DROP TABLE IF EXISTS `kits`;

CREATE TABLE `kits` (
  `id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deity` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tagline` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `base_price` int NOT NULL,
  `compare_at_price` int DEFAULT NULL,
  `puja_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock_quantity` int NOT NULL DEFAULT '100',
  `stock_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'in_stock',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `seo_title` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keywords` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_order` int NOT NULL DEFAULT '0',
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_kits_slug` (`slug`),
  KEY `idx_kits_active_sort` (`active`,`sort_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `kits` */

insert  into `kits`(`id`,`slug`,`name`,`deity`,`tagline`,`description`,`base_price`,`compare_at_price`,`puja_type`,`stock_quantity`,`stock_status`,`featured`,`active`,`seo_title`,`seo_description`,`seo_keywords`,`sort_order`,`created_at`,`updated_at`) values 
('34c7ed4e3a9844d2853fcf5880fc1726','vivah-puja-kit','Vivah Puja Kit','Marriage Puja','Sacred wedding ritual samagri set','Havan kund, laja, kanyadaan set and the full wedding ritual base — curated with pandits for the big day.',1499,1899,'Marriage Puja',100,'in_stock',0,1,'Vivah Puja Kit — Complete Samagri Kit | Samagri Seva','Sacred wedding ritual samagri set','',8,'2026-10-04 04:00:48.091565','2026-10-04 04:00:48.091565'),
('470ed2e30c5541eca4caf33ed55f9a0b','lakshmi-puja-kit','Lakshmi Puja Kit','Lakshmi Puja','Prepare your home for Maha Lakshmi Puja','Welcome Maa Lakshmi with kamalgatta, gomti chakra, kesar and the complete Diwali puja base — every item the vidhi calls for.',699,899,'Lakshmi Puja',100,'in_stock',1,1,'Lakshmi Puja Kit — Complete Samagri Kit | Samagri Seva','Prepare your home for Maha Lakshmi Puja','',3,'2026-10-04 04:00:48.085431','2026-10-04 04:00:48.085431'),
('4901926183f84b5f87596a728f2e2aad','shiv-puja-kit','Shiv Puja Kit','Shiv Puja','Everything for Shiv Abhishek & Shivratri','Complete Shiv abhishek samagri: bel patra, panchamrit set, dhatura, bhasma and rudraksha — ready for Shivratri or somvar puja.',599,749,'Shiv Puja',100,'in_stock',1,1,'Shiv Puja Kit — Complete Samagri Kit | Samagri Seva','Everything for Shiv Abhishek & Shivratri','',2,'2026-10-04 04:00:48.084173','2026-10-04 04:00:48.084173'),
('745a4dd157e44f56919447342643ce53','griha-pravesh-kit','Griha Pravesh Kit','Griha Pravesh','Your new home deserves a complete kit','Copper kalash, navagraha samagri, vastu yantra, toran and the complete base set — everything for stepping into your new home auspiciously.',999,1299,'Griha Pravesh',100,'in_stock',1,1,'Griha Pravesh Kit — Complete Samagri Kit | Samagri Seva','Your new home deserves a complete kit','',5,'2026-10-04 04:00:48.087835','2026-10-04 04:00:48.087835'),
('7b38c386f61a4dcc93b789da6a6c95ae','navratri-puja-kit','Navratri Puja Kit','Navratri','Nine nights of Devi worship, fully covered','Akhand jyot diya, chunri, chowki cloth and kanya bhoj set — complete Devi samagri for all nine nights.',899,1149,'Navratri',100,'in_stock',0,1,'Navratri Puja Kit — Complete Samagri Kit | Samagri Seva','Nine nights of Devi worship, fully covered','',7,'2026-10-04 04:00:48.090379','2026-10-04 04:00:48.090379'),
('90d469df9f7c4561bba0c3db2e3d0672','havan-samagri-kit','Havan Samagri Kit','Havan','Complete havan samagri with pure herbs','108-herb havan mix, mango samidha, havan cups and aahuti ghee — a complete, pure havan in one box.',799,999,'Havan',100,'in_stock',1,1,'Havan Samagri Kit — Complete Samagri Kit | Samagri Seva','Complete havan samagri with pure herbs','',6,'2026-10-04 04:00:48.089036','2026-10-04 04:00:48.089036'),
('be242963a9d346ecafa7385b619477d5','satyanarayan-puja-kit','Satyanarayan Puja Kit','Satyanarayan Puja','Complete katha & puja samagri','The full Satyanarayan set with katha book, panchamrit vessel, banana leaves and prasad ingredients — start the katha without a market run.',799,999,'Satyanarayan Puja',100,'in_stock',1,1,'Satyanarayan Puja Kit — Complete Samagri Kit | Samagri Seva','Complete katha & puja samagri','',4,'2026-10-04 04:00:48.086589','2026-10-04 04:00:48.086589'),
('c0fb1923df364a5c89a47c2803a23ebc','ganesh-puja-kit','Ganesh Puja Kit1','Ganesh Puja','Complete samagri for Ganesh Puja & Chaturthi','Everything for Ganesh puja and Chaturthi — durva, modak bhog, red flowers and the complete shodashopachara base, pandit-checked before packing.',499,649,'Ganesh Puja',100,'in_stock',1,1,'Ganesh Puja Kit — Complete Samagri Kit | Samagri Seva','Complete samagri for Ganesh Puja & Chaturthi','',1,'2026-10-04 04:00:48.082783','2026-10-04 04:11:22.181807');

/*Table structure for table `leads` */

DROP TABLE IF EXISTS `leads`;

CREATE TABLE `leads` (
  `id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lead_type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `leads` */

insert  into `leads`(`id`,`lead_type`,`name`,`phone`,`email`,`created_at`) values 
('0694656c-c84c-492c-8a0a-b02ab27019ef','checklist',NULL,'9899278212',NULL,'2026-10-05 14:05:04.585816'),
('ff820f32-0a99-43dd-9bd4-bc996a426ae5','newsletter',NULL,'9899278212',NULL,'2026-10-08 12:08:36.104339');

/*Table structure for table `login_attempts` */

DROP TABLE IF EXISTS `login_attempts`;

CREATE TABLE `login_attempts` (
  `identifier` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fail_count` int NOT NULL DEFAULT '0',
  `last_failed_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `login_attempts` */

/*Table structure for table `order_counter` */

DROP TABLE IF EXISTS `order_counter`;

CREATE TABLE `order_counter` (
  `id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seq` bigint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `order_counter` */

insert  into `order_counter`(`id`,`seq`) values 
('orders',7);

/*Table structure for table `order_items` */

DROP TABLE IF EXISTS `order_items`;

CREATE TABLE `order_items` (
  `order_id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idx` int NOT NULL,
  `product_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variant` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int NOT NULL,
  `qty` int NOT NULL,
  `line_total` int DEFAULT NULL,
  `sku` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`order_id`,`idx`),
  CONSTRAINT `fk_order_items_order` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `order_items` */

insert  into `order_items`(`order_id`,`idx`,`product_id`,`name`,`variant`,`price`,`qty`,`line_total`,`sku`) values 
('06daf35d-3c75-49ca-8d2b-32e11efbba2d',0,'ganesh-puja-kit-basic','Ganesh Puja Kit1','Basic · 18 items',499,1,499,NULL),
('23ef0a06-aed7-447f-9475-7a6a8c00c21b',0,'ganesh-puja-kit-box','Ganesh Puja Kit (Basic)',NULL,499,1,499,'SS-P-003'),
('2a14e354-56d9-49ec-addc-eb2c06f757ad',0,'lakshmi-puja-kit-basic','Lakshmi Puja Kit','Basic · 22 items',699,1,699,NULL),
('3316f3ae-350a-4634-b624-ebc43628c65f',0,'organic-dhoop','Organic Guggal Dhoop — 40 sticks',NULL,149,1,149,'SS-P-007'),
('37478742-ccf4-4bd4-bd24-50a27fa0bc4d',0,'puja-thali-set','Complete Brass Puja Thali Set',NULL,899,1,899,'SS-P-008'),
('73621217-eb6f-49ee-8c09-44d97185e3a1',0,'puja-thali-set','Complete Brass Puja Thali Set',NULL,899,1,899,'SS-P-008'),
('be9df455-4443-4605-a761-61b7d527c5ff',0,'shiv-puja-kit-premium','Shiv Puja Kit','Premium · 50 items',1449,1,1449,NULL);

/*Table structure for table `order_status_history` */

DROP TABLE IF EXISTS `order_status_history`;

CREATE TABLE `order_status_history` (
  `id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kind` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'order',
  `from_status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `actor` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_order_history_order` (`order_id`,`created_at`),
  CONSTRAINT `fk_order_history_order` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `order_status_history` */

insert  into `order_status_history`(`id`,`order_id`,`kind`,`from_status`,`to_status`,`note`,`actor`,`created_at`) values 
('03be79e0-d2d9-4e76-a598-7be03c14cb61','37478742-ccf4-4bd4-bd24-50a27fa0bc4d','order','confirmed','processing','','admin@samagriseva.com','2026-10-04 14:02:41.376587'),
('3d7c11c1-48a8-4f13-9c1a-0f8657a45633','37478742-ccf4-4bd4-bd24-50a27fa0bc4d','order','processing','cancelled','','admin@samagriseva.com','2026-10-04 14:02:58.071410'),
('49f8ff71-c1ba-4fd8-b1da-ec7b4d240917','37478742-ccf4-4bd4-bd24-50a27fa0bc4d','payment','pending','refunded','','admin@samagriseva.com','2026-10-04 14:03:17.500810');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_no` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lookup_token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` varchar(700) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_line1` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_line2` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_city` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_state` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_pincode` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_country` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'confirmed',
  `subtotal` int NOT NULL,
  `discount` int NOT NULL DEFAULT '0',
  `shipping` int NOT NULL DEFAULT '0',
  `total` int NOT NULL,
  `coupon` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `razorpay_order_id` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `razorpay_payment_id` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_at` datetime(6) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_orders_order_no` (`order_no`),
  UNIQUE KEY `uk_orders_lookup_token` (`lookup_token`),
  KEY `idx_orders_customer_created` (`customer_id`,`created_at`),
  KEY `idx_orders_status` (`status`),
  KEY `idx_orders_payment_status` (`payment_status`),
  KEY `idx_orders_created` (`created_at`),
  KEY `idx_orders_customer_email` (`customer_email`),
  KEY `idx_orders_razorpay_order` (`razorpay_order_id`),
  CONSTRAINT `fk_orders_customer` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `orders` */

insert  into `orders`(`id`,`order_no`,`lookup_token`,`customer_id`,`customer_name`,`customer_phone`,`customer_email`,`customer_address`,`payment_method`,`ship_line1`,`ship_line2`,`ship_city`,`ship_state`,`ship_pincode`,`ship_country`,`payment_status`,`status`,`subtotal`,`discount`,`shipping`,`total`,`coupon`,`razorpay_order_id`,`razorpay_payment_id`,`paid_at`,`created_at`,`updated_at`) values 
('06daf35d-3c75-49ca-8d2b-32e11efbba2d','SS-1003','NgI37mqWvikFUa2m2TWwgzRj9YhMNlqUUW0BtXyKcYc',NULL,'manish raman','9899278212','manishramanjha@gmail.com','Upvan , Delhi , Delhi 110042, India','cod','Upvan ','','Delhi ','Delhi','110042','India','pending','confirmed',499,0,79,578,NULL,NULL,NULL,NULL,'2026-10-04 05:43:22.673315','2026-10-04 05:43:22.672376'),
('23ef0a06-aed7-447f-9475-7a6a8c00c21b','SS-1007','vFRP2qlibPPw3htnmRStAl3-MmsoVjA26I7z8fRgiyw',NULL,'ghanshyam kumar','9643109892','ghanshyam.cusat2006@gmail.com','Sobha Dream Acres Oasis Phase 27 Wing 55 Flat No-55022, Varthur Off Outer Ring Rd,Balagere, Bangalore Rural, Karnataka 560087, India','cod','Sobha Dream Acres Oasis Phase 27 Wing 55 Flat No-55022','Varthur Off Outer Ring Rd,Balagere','Bangalore Rural','Karnataka','560087','India','pending','confirmed',499,0,79,578,NULL,NULL,NULL,NULL,'2026-10-11 05:36:34.111751','2026-10-11 05:36:34.294324'),
('2a14e354-56d9-49ec-addc-eb2c06f757ad','SS-1001','ZvSr2JIFJ9VYDgNkde6UZTy7h3dYJdovEELw5hG9e0k','d6d1dc1e-dd9c-4153-a928-cb19f33fa0cc','Raman','9198992782','manraman@gmail.com','Upvan Apartment, Rohini Sector 28, Delhi, Delhi 110042, India','cod','Upvan Apartment, Rohini Sector 28','','Delhi','Delhi','110042','India','pending','confirmed',699,0,79,778,NULL,NULL,NULL,NULL,'2026-10-04 04:12:22.840243','2026-10-04 04:12:22.840154'),
('3316f3ae-350a-4634-b624-ebc43628c65f','SS-1006','Mp9o_PQM6wvcLkQ6QEhxv49MuuC-bOoMoIHQTnGxZ3A','d6d1dc1e-dd9c-4153-a928-cb19f33fa0cc','Raman','9198992782','manraman@gmail.com','Upvan Apartment, Rohini Sector 28, Delhi, Delhi 110042, India','cod','Upvan Apartment, Rohini Sector 28','','Delhi','Delhi','110042','India','pending','confirmed',149,0,79,228,NULL,NULL,NULL,NULL,'2026-10-04 13:24:37.701831','2026-10-04 13:24:37.701742'),
('37478742-ccf4-4bd4-bd24-50a27fa0bc4d','SS-1005','JVjGIGexwso-xAtBg8LEPeF_dEsO6BwV81yaYsu6pGc','d6d1dc1e-dd9c-4153-a928-cb19f33fa0cc','Raman','9198992782','manraman@gmail.com','Upvan Apartment, Rohini Sector 28, Delhi, Delhi 110042, India','cod','Upvan Apartment, Rohini Sector 28','','Delhi','Delhi','110042','India','refunded','cancelled',899,0,79,978,NULL,NULL,NULL,NULL,'2026-10-04 12:49:20.283433','2026-10-04 14:03:17.499601'),
('73621217-eb6f-49ee-8c09-44d97185e3a1','SS-1004','NoSi3kqLZAK54eV1peuBpppXg8n1V1HvhYygzO1qnc8','d6d1dc1e-dd9c-4153-a928-cb19f33fa0cc','Raman','9198992782','manraman@gmail.com','Upvan Apartment, Rohini Sector 28, Delhi, Delhi 110042, India','upi','Upvan Apartment, Rohini Sector 28','','Delhi','Delhi','110042','India','pending','confirmed',899,0,79,978,NULL,NULL,NULL,NULL,'2026-10-04 12:48:25.397975','2026-10-04 12:48:25.397862'),
('be9df455-4443-4605-a761-61b7d527c5ff','SS-1002','zEcalxVF2eWgaN_Zwg5VhTF5rCgn37oNC0h1YmMVuPk','d6d1dc1e-dd9c-4153-a928-cb19f33fa0cc','Raman','9198992782','manraman@gmail.com','Sitamarhi koat bazar 14, Delhi, Delhi 110042, India','cod','Sitamarhi koat bazar 14','','Delhi','Delhi','110042','India','pending','confirmed',1449,0,0,1449,NULL,NULL,NULL,NULL,'2026-10-04 05:07:30.344826','2026-10-04 05:07:30.344747');

/*Table structure for table `product_images` */

DROP TABLE IF EXISTS `product_images`;

CREATE TABLE `product_images` (
  `product_id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idx` int NOT NULL,
  `url` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`product_id`,`idx`),
  CONSTRAINT `fk_product_images_product` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `product_images` */

insert  into `product_images`(`product_id`,`idx`,`url`) values 
('05f5c084030b42b399b87cbc007ab38a',0,'https://images.unsplash.com/photo-1631446416793-edfbeade1692?crop=entropy&cs=srgb&fm=jpg&q=85&w=900'),
('0edecef0b40d428eae13a598d467d617',0,'https://images.unsplash.com/photo-1667670651830-2d5bcd0e4f8f?crop=entropy&cs=srgb&fm=jpg&q=85&w=900'),
('1a58df4ab1144c89a3eb992fe4143aae',0,'https://images.unsplash.com/photo-1667670651830-2d5bcd0e4f8f?crop=entropy&cs=srgb&fm=jpg&q=85&w=900'),
('2fdee21f5c5d42ef8cedeb6fb995a245',0,'https://images.unsplash.com/photo-1605455021703-13b57dcb9efa?crop=entropy&cs=srgb&fm=jpg&q=85&w=900'),
('44465f799b4e4fd1b229efc92d7bfea9',0,'https://images.unsplash.com/photo-1666694051761-cd972857da30?crop=entropy&cs=srgb&fm=jpg&q=85&w=900'),
('51fd68282453462e8dc15552584638ff',0,'https://images.unsplash.com/photo-1761295908075-065ac2db0f5c?crop=entropy&cs=srgb&fm=jpg&q=85&w=900'),
('934e7fa1a348435096f1055daf71da30',0,'https://images.unsplash.com/photo-1605764803170-c20b43be4d00?crop=entropy&cs=srgb&fm=jpg&q=85&w=900'),
('c49f8534fcd64d2794ad6bc6ab049ff8',0,'https://images.unsplash.com/photo-1541795083-1b160cf4f3d7?crop=entropy&cs=srgb&fm=jpg&q=85&w=900');

/*Table structure for table `product_puja_types` */

DROP TABLE IF EXISTS `product_puja_types`;

CREATE TABLE `product_puja_types` (
  `product_id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idx` int NOT NULL,
  `puja_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`product_id`,`idx`),
  KEY `idx_product_puja_types_type` (`puja_type`),
  CONSTRAINT `fk_product_puja_types_product` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `product_puja_types` */

insert  into `product_puja_types`(`product_id`,`idx`,`puja_type`) values 
('1a58df4ab1144c89a3eb992fe4143aae',0,'Daily Puja'),
('2fdee21f5c5d42ef8cedeb6fb995a245',0,'Daily Puja'),
('51fd68282453462e8dc15552584638ff',1,'Daily Puja'),
('c49f8534fcd64d2794ad6bc6ab049ff8',0,'Daily Puja'),
('0edecef0b40d428eae13a598d467d617',0,'Diwali'),
('2fdee21f5c5d42ef8cedeb6fb995a245',1,'Diwali'),
('51fd68282453462e8dc15552584638ff',0,'Diwali'),
('05f5c084030b42b399b87cbc007ab38a',0,'Ganesh Puja'),
('44465f799b4e4fd1b229efc92d7bfea9',1,'Griha Pravesh'),
('934e7fa1a348435096f1055daf71da30',0,'Griha Pravesh'),
('44465f799b4e4fd1b229efc92d7bfea9',0,'Havan'),
('2fdee21f5c5d42ef8cedeb6fb995a245',2,'Lakshmi Puja'),
('0edecef0b40d428eae13a598d467d617',1,'Marriage Puja'),
('934e7fa1a348435096f1055daf71da30',2,'Navratri'),
('934e7fa1a348435096f1055daf71da30',1,'Satyanarayan Puja');

/*Table structure for table `product_tags` */

DROP TABLE IF EXISTS `product_tags`;

CREATE TABLE `product_tags` (
  `product_id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idx` int NOT NULL,
  `tag` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`product_id`,`idx`),
  CONSTRAINT `fk_product_tags_product` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `product_tags` */

insert  into `product_tags`(`product_id`,`idx`,`tag`) values 
('05f5c084030b42b399b87cbc007ab38a',0,'ganesh'),
('05f5c084030b42b399b87cbc007ab38a',1,'kit'),
('05f5c084030b42b399b87cbc007ab38a',2,'chaturthi'),
('0edecef0b40d428eae13a598d467d617',0,'thali'),
('0edecef0b40d428eae13a598d467d617',1,'brass'),
('0edecef0b40d428eae13a598d467d617',2,'set'),
('1a58df4ab1144c89a3eb992fe4143aae',0,'daily puja'),
('1a58df4ab1144c89a3eb992fe4143aae',1,'nitya puja'),
('1a58df4ab1144c89a3eb992fe4143aae',2,'kit'),
('2fdee21f5c5d42ef8cedeb6fb995a245',0,'camphor'),
('2fdee21f5c5d42ef8cedeb6fb995a245',1,'kapur'),
('2fdee21f5c5d42ef8cedeb6fb995a245',2,'bhimseni'),
('2fdee21f5c5d42ef8cedeb6fb995a245',3,'aarti'),
('44465f799b4e4fd1b229efc92d7bfea9',0,'havan'),
('44465f799b4e4fd1b229efc92d7bfea9',1,'samagri'),
('44465f799b4e4fd1b229efc92d7bfea9',2,'herbs'),
('51fd68282453462e8dc15552584638ff',0,'diya'),
('51fd68282453462e8dc15552584638ff',1,'brass'),
('51fd68282453462e8dc15552584638ff',2,'lamp'),
('934e7fa1a348435096f1055daf71da30',0,'kalash'),
('934e7fa1a348435096f1055daf71da30',1,'copper'),
('934e7fa1a348435096f1055daf71da30',2,'sthapana'),
('c49f8534fcd64d2794ad6bc6ab049ff8',0,'dhoop'),
('c49f8534fcd64d2794ad6bc6ab049ff8',1,'incense'),
('c49f8534fcd64d2794ad6bc6ab049ff8',2,'guggal');

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `price` int NOT NULL,
  `compare_at_price` int DEFAULT NULL,
  `category` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subcategory` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock_quantity` int NOT NULL DEFAULT '100',
  `stock_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'in_stock',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `bestseller` tinyint(1) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `weight` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keywords` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` double NOT NULL DEFAULT '4.8',
  `reviews_count` int NOT NULL DEFAULT '0',
  `badge` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_order` int NOT NULL DEFAULT '0',
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_products_slug` (`slug`),
  KEY `idx_products_active_sort` (`active`,`sort_order`),
  KEY `idx_products_category` (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `products` */

insert  into `products`(`id`,`slug`,`name`,`short_description`,`description`,`price`,`compare_at_price`,`category`,`subcategory`,`sku`,`stock_quantity`,`stock_status`,`featured`,`bestseller`,`active`,`weight`,`seo_title`,`seo_description`,`seo_keywords`,`rating`,`reviews_count`,`badge`,`sort_order`,`created_at`,`updated_at`) values 
('05f5c084030b42b399b87cbc007ab38a','ganesh-puja-kit-box','Ganesh Puja Kit (Basic)','18-item starter kit for Ganesh puja at home.','The 18 essentials for a simple, complete Ganesh puja — durva, red flowers, modak bhog mix and the full shodashopachara base set.',499,649,'Puja Kits',NULL,'SS-P-003',100,'in_stock',0,1,1,NULL,'Ganesh Puja Kit (Basic) — Buy Online | Samagri Seva','18-item starter kit for Ganesh puja at home.','',4.9,1542,NULL,3,'2026-10-04 04:00:48.069420','2026-10-04 04:00:48.069420'),
('0edecef0b40d428eae13a598d467d617','puja-thali-set','Complete Brass Puja Thali Set','7-piece brass thali set with diya, bell and katori.','A complete 7-piece brass puja thali: thali, diya, ghanti, katori, kalash, spoon and incense stand — a full shringar for your altar.',899,1199,'Brass & Copper',NULL,'SS-P-008',100,'in_stock',0,0,1,NULL,'Complete Brass Puja Thali Set — Buy Online | Samagri Seva','7-piece brass thali set with diya, bell and katori.','',4.9,743,'Premium',8,'2026-10-04 04:00:48.079778','2026-10-04 04:00:48.079778'),
('1a58df4ab1144c89a3eb992fe4143aae','daily-puja-kit','Complete Daily Puja Kit','15 everyday essentials for your morning nitya puja.','A ready daily puja set: roli, kumkum, chandan, ghee, wicks, camphor, dhoop and more — everything for your morning ritual in one box.',299,399,'Puja Kits',NULL,'SS-P-002',100,'in_stock',0,1,1,NULL,'Complete Daily Puja Kit — Buy Online | Samagri Seva','15 everyday essentials for your morning nitya puja.','',4.8,1876,'Most Loved',2,'2026-10-04 04:00:48.067745','2026-10-04 04:00:48.067745'),
('2fdee21f5c5d42ef8cedeb6fb995a245','bhimseni-camphor','Premium Bhimseni Camphor — 100g','Pure Bhimseni kapur that burns clean with no residue.','100% pure Bhimseni camphor for aarti and havan. Burns completely with no black residue or synthetic smell — the mark of genuine kapur.',199,249,'Puja Samagri',NULL,'SS-P-001',100,'in_stock',1,1,1,'100g','Premium Bhimseni Camphor — 100g — Buy Online | Samagri Seva','Pure Bhimseni kapur that burns clean with no residue.','',4.9,2314,'Bestseller',1,'2026-10-04 04:00:48.043244','2026-10-04 04:00:48.043244'),
('44465f799b4e4fd1b229efc92d7bfea9','havan-samagri-premium','Premium Havan Samagri — 1kg','108 sacred herbs, sun-dried and hand-blended.','A 1kg blend of 108 havan herbs, roots and aromatic woods, sun-dried and hand-blended. Enough for a full family havan.',349,449,'Havan Samagri',NULL,'SS-P-004',100,'in_stock',0,1,1,'1kg','Premium Havan Samagri — 1kg — Buy Online | Samagri Seva','108 sacred herbs, sun-dried and hand-blended.','',4.8,987,NULL,4,'2026-10-04 04:00:48.070955','2026-10-04 04:00:48.070955'),
('51fd68282453462e8dc15552584638ff','brass-diya-set','Handcrafted Brass Diya Set (Pair)','Heirloom brass diyas cast by Moradabad artisans.','A pair of solid brass diyas, hand-cast and polished by Moradabad artisans. Weighted base, perfect flame cup, heirloom finish.',599,799,'Brass & Copper',NULL,'SS-P-005',100,'in_stock',1,1,1,NULL,'Handcrafted Brass Diya Set (Pair) — Buy Online | Samagri Seva','Heirloom brass diyas cast by Moradabad artisans.','',4.9,1210,'Handcrafted',5,'2026-10-04 04:00:48.072626','2026-10-04 04:00:48.072626'),
('934e7fa1a348435096f1055daf71da30','copper-kalash','Pure Copper Kalash with Coconut','Lab-tested pure copper kalash for sthapana.','Lab-tested pure copper kalash with fresh coconut and mango-leaf ready mouth — sized for Griha Pravesh and Satyanarayan sthapana.',699,899,'Brass & Copper',NULL,'SS-P-006',100,'in_stock',0,1,1,NULL,'Pure Copper Kalash with Coconut — Buy Online | Samagri Seva','Lab-tested pure copper kalash for sthapana.','',4.8,864,NULL,6,'2026-10-04 04:00:48.074735','2026-10-04 04:00:48.074735'),
('c49f8534fcd64d2794ad6bc6ab049ff8','organic-dhoop','Organic Guggal Dhoop — 40 sticks','Charcoal-free guggal dhoop rolled by hand.','Charcoal-free, hand-rolled guggal dhoop sticks. Slow, clean burn with the classic temple fragrance.',149,199,'Incense & Dhoop',NULL,'SS-P-007',100,'in_stock',0,0,1,'40 sticks','Organic Guggal Dhoop — 40 sticks — Buy Online | Samagri Seva','Charcoal-free guggal dhoop rolled by hand.','',4.7,1503,NULL,7,'2026-10-04 04:00:48.076989','2026-10-04 04:00:48.076989');

/*Table structure for table `puja_faqs` */

DROP TABLE IF EXISTS `puja_faqs`;

CREATE TABLE `puja_faqs` (
  `puja_id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idx` int NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`puja_id`,`idx`),
  CONSTRAINT `fk_puja_faqs_puja` FOREIGN KEY (`puja_id`) REFERENCES `pujas` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `puja_faqs` */

insert  into `puja_faqs`(`puja_id`,`idx`,`question`,`answer`) values 
('2f4e810b29ac4fe3a67e14b76f36cc3c',0,'How much havan samagri do I need?','For a home havan of 30–45 minutes, about 1kg of havan mix with 250ml ghee is usually sufficient.'),
('2f4e810b29ac4fe3a67e14b76f36cc3c',1,'Is the havan mix pure?','Yes — the blend uses sun-dried herbs, roots and aromatic woods with no chemical fragrance.'),
('2f4e810b29ac4fe3a67e14b76f36cc3c',2,'Do I get a havan kund?','The Premium tier includes a havan kund; otherwise havan cups are a tidy alternative for apartments.'),
('401dff9358eb4ce18c2e8bf28fab63f3',0,'What samagri do I need for a simple Ganesh puja at home?','The essentials are roli, kumkum, chandan, akshat, durva grass, red flowers, a diya, camphor, incense, kalawa and a bhog offering such as modak. The Ganesh Puja Kit packs all of these together.'),
('401dff9358eb4ce18c2e8bf28fab63f3',1,'Which kit tier should I choose?','Basic covers a simple home puja, Complete adds everything the full vidhi lists, and Premium includes brass shringar items and a prasad set for larger gatherings.'),
('401dff9358eb4ce18c2e8bf28fab63f3',2,'Can I get everything delivered before Chaturthi?','Yes — orders are dispatched within 48 hours across India. Order a few days before the festival to be relaxed on the day.'),
('68d729f5dd424c648b4f909dc74d590c',0,'What is the difference between the Diwali and Lakshmi kits?','The Lakshmi Puja Kit focuses on the puja itself; for Diwali many families add diyas, toran and home shringar from the Brass & Copper and Diyas collections.'),
('68d729f5dd424c648b4f909dc74d590c',1,'When should I order for Diwali?','Diwali is our busiest season — order at least a week ahead for relaxed delivery.'),
('68d729f5dd424c648b4f909dc74d590c',2,'Are the diyas safe for apartments?','Yes — brass diyas with pure ghee wicks burn steadily indoors with normal care.'),
('7969d7960f344a05813754777f01c6b4',0,'Can I use the Navratri kit for Durga Puja?','Yes — the Navratri Puja Kit covers Devi worship essentials; add dhuno and extra flowers from the samagri collection as needed.'),
('7969d7960f344a05813754777f01c6b4',1,'Do you supply community pujas?','Yes — housing societies and puja committees can request bulk kits via the bulk quote form.'),
('7969d7960f344a05813754777f01c6b4',2,'Is sindoor included?','Pure sindoor is part of the Complete and Premium Devi kits.'),
('a4ded87e4e3b4b94a1bf021d16694221',0,'Is the Vivah kit enough for the full ceremony?','The Premium tier covers the standard vidhi list most pandits use; share your pandit\'s list and we can customise with Build Your Own Kit.'),
('a4ded87e4e3b4b94a1bf021d16694221',1,'Can I order for multiple events together?','Yes — bulk and wedding orders are supported with scheduled delivery; use the bulk quote form.'),
('a4ded87e4e3b4b94a1bf021d16694221',2,'How early should we order?','Two weeks before the wedding is comfortable; express dispatch is available in most cities.'),
('adab8f6062ed47c088edec09bbc35731',0,'What is included in the Shiv Puja Kit?','Bel patra, panchamrit set, dhatura, bhasma, rudraksha mala and the complete base samagri — roli, chandan, akshat, diya, wicks, ghee and more.'),
('adab8f6062ed47c088edec09bbc35731',1,'Do I need anything extra for Shivratri?','The Complete tier adds the full abhishek set used for Shivratri night pujas; you only need to arrange fresh milk, curd and fruits locally.'),
('adab8f6062ed47c088edec09bbc35731',2,'Is the samagri suitable for abhishek?','Yes — the kit is assembled for abhishek-based worship with pure, pandit-checked ingredients.'),
('b3cb2584410645c593a0bdc63b79b9f8',0,'Which kit is right for a flat vs an independent house?','The Complete tier suits most flats; for a full havan with many guests, Premium adds the larger havan set and shringar items.'),
('b3cb2584410645c593a0bdc63b79b9f8',1,'Does the kit include havan samagri?','Yes — havan mix, samidha, havan cups and aahuti ghee are included in the Complete and Premium tiers.'),
('b3cb2584410645c593a0bdc63b79b9f8',2,'Can I add items my pandit specifically asked for?','Absolutely — use the Build Your Own Kit option to add any specific items to your order.'),
('cb79ebdfea4e4c09b8e080eff11e3c24',0,'Does the kit include the katha book?','Yes — the Satyanarayan Puja Kit includes the katha book along with the complete puja samagri.'),
('cb79ebdfea4e4c09b8e080eff11e3c24',1,'What do I need to arrange fresh?','Milk, curd and fruits for panchamrit and prasad are best bought fresh; everything dry and durable is in the kit.'),
('cb79ebdfea4e4c09b8e080eff11e3c24',2,'How long does the puja take?','A home katha typically takes one and a half to two hours including aarti.'),
('f4c6e5a1c09d4d85a6e7faf9a2bd0056',0,'What is special in a Lakshmi Puja Kit?','Alongside the base samagri it carries kamalgatta, gomti chakra, lotus seeds, kesar and a silver coin — the items families traditionally include for Lakshmi puja.'),
('f4c6e5a1c09d4d85a6e7faf9a2bd0056',1,'When is the best time for Diwali Lakshmi puja?','Most families follow the evening pradosh kaal muhurat published for their city — check your local panchang and have the kit ready beforehand.'),
('f4c6e5a1c09d4d85a6e7faf9a2bd0056',2,'Can I use this kit for Friday puja?','Yes, the Basic tier covers a simple Friday Lakshmi puja at home.'),
('fc3a9aae755b42938e239a1503bbd73a',0,'What does an akhand jyot need?','A steady brass or clay diya, enough ghee for nine days, and long cotton wicks — all covered in the Navratri kit.'),
('fc3a9aae755b42938e239a1503bbd73a',1,'When should I order for Navratri?','Dispatch is within 48 hours; ordering a week before Navratri begins keeps everything relaxed.'),
('fc3a9aae755b42938e239a1503bbd73a',2,'Is kanya bhoj samagri included?','The Complete and Premium tiers include the kanya bhoj set.');

/*Table structure for table `puja_samagri` */

DROP TABLE IF EXISTS `puja_samagri`;

CREATE TABLE `puja_samagri` (
  `puja_id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idx` int NOT NULL,
  `item` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`puja_id`,`idx`),
  CONSTRAINT `fk_puja_samagri_puja` FOREIGN KEY (`puja_id`) REFERENCES `pujas` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `puja_samagri` */

insert  into `puja_samagri`(`puja_id`,`idx`,`item`) values 
('2f4e810b29ac4fe3a67e14b76f36cc3c',0,'Havan samagri (108 herbs)'),
('2f4e810b29ac4fe3a67e14b76f36cc3c',1,'Mango samidha (wood)'),
('2f4e810b29ac4fe3a67e14b76f36cc3c',2,'Havan kund or cups'),
('2f4e810b29ac4fe3a67e14b76f36cc3c',3,'Aahuti ghee'),
('2f4e810b29ac4fe3a67e14b76f36cc3c',4,'Camphor'),
('2f4e810b29ac4fe3a67e14b76f36cc3c',5,'Roli & chandan'),
('2f4e810b29ac4fe3a67e14b76f36cc3c',6,'Kalash'),
('2f4e810b29ac4fe3a67e14b76f36cc3c',7,'Spoon for aahuti'),
('2f4e810b29ac4fe3a67e14b76f36cc3c',8,'Kalawa'),
('2f4e810b29ac4fe3a67e14b76f36cc3c',9,'Incense'),
('401dff9358eb4ce18c2e8bf28fab63f3',0,'Ganesh idol or picture'),
('401dff9358eb4ce18c2e8bf28fab63f3',1,'Durva grass'),
('401dff9358eb4ce18c2e8bf28fab63f3',2,'Red flowers'),
('401dff9358eb4ce18c2e8bf28fab63f3',3,'Roli & kumkum'),
('401dff9358eb4ce18c2e8bf28fab63f3',4,'Chandan'),
('401dff9358eb4ce18c2e8bf28fab63f3',5,'Modak or ladoo for bhog'),
('401dff9358eb4ce18c2e8bf28fab63f3',6,'Kalash with water'),
('401dff9358eb4ce18c2e8bf28fab63f3',7,'Diya & camphor'),
('401dff9358eb4ce18c2e8bf28fab63f3',8,'Incense sticks'),
('401dff9358eb4ce18c2e8bf28fab63f3',9,'Kalawa moli'),
('68d729f5dd424c648b4f909dc74d590c',0,'Diyas (clay & brass)'),
('68d729f5dd424c648b4f909dc74d590c',1,'Lakshmi-Ganesh idols'),
('68d729f5dd424c648b4f909dc74d590c',2,'Roli, kumkum, chandan'),
('68d729f5dd424c648b4f909dc74d590c',3,'Kamalgatta & gomti chakra'),
('68d729f5dd424c648b4f909dc74d590c',4,'Toran & rangoli colors'),
('68d729f5dd424c648b4f909dc74d590c',5,'Sweets & dry fruits'),
('68d729f5dd424c648b4f909dc74d590c',6,'Camphor & wicks'),
('68d729f5dd424c648b4f909dc74d590c',7,'Ghee'),
('68d729f5dd424c648b4f909dc74d590c',8,'Incense & dhoop'),
('68d729f5dd424c648b4f909dc74d590c',9,'New clothes for idols'),
('7969d7960f344a05813754777f01c6b4',0,'Durga idol or picture'),
('7969d7960f344a05813754777f01c6b4',1,'Chunri & saree for the deity'),
('7969d7960f344a05813754777f01c6b4',2,'108 lotus or flowers'),
('7969d7960f344a05813754777f01c6b4',3,'Bel patra'),
('7969d7960f344a05813754777f01c6b4',4,'Sindoor'),
('7969d7960f344a05813754777f01c6b4',5,'Dhuno (incense resin)'),
('7969d7960f344a05813754777f01c6b4',6,'Panchamrit'),
('7969d7960f344a05813754777f01c6b4',7,'Diya & camphor'),
('7969d7960f344a05813754777f01c6b4',8,'Kalash'),
('7969d7960f344a05813754777f01c6b4',9,'Fruits & sweets'),
('a4ded87e4e3b4b94a1bf021d16694221',0,'Havan kund & samagri'),
('a4ded87e4e3b4b94a1bf021d16694221',1,'Laja (puffed rice)'),
('a4ded87e4e3b4b94a1bf021d16694221',2,'Kanyadaan set'),
('a4ded87e4e3b4b94a1bf021d16694221',3,'Mangalsutra thread'),
('a4ded87e4e3b4b94a1bf021d16694221',4,'Sindoor dani'),
('a4ded87e4e3b4b94a1bf021d16694221',5,'Kalash pair'),
('a4ded87e4e3b4b94a1bf021d16694221',6,'Roli, chandan, akshat'),
('a4ded87e4e3b4b94a1bf021d16694221',7,'Janeu'),
('a4ded87e4e3b4b94a1bf021d16694221',8,'Garlands & flowers'),
('a4ded87e4e3b4b94a1bf021d16694221',9,'Diya & camphor'),
('adab8f6062ed47c088edec09bbc35731',0,'Bel patra'),
('adab8f6062ed47c088edec09bbc35731',1,'Panchamrit (milk, curd, ghee, honey, sugar)'),
('adab8f6062ed47c088edec09bbc35731',2,'Dhatura & bhasma'),
('adab8f6062ed47c088edec09bbc35731',3,'Rudraksha mala'),
('adab8f6062ed47c088edec09bbc35731',4,'Gangajal'),
('adab8f6062ed47c088edec09bbc35731',5,'Roli & chandan'),
('adab8f6062ed47c088edec09bbc35731',6,'Diya & camphor'),
('adab8f6062ed47c088edec09bbc35731',7,'Incense'),
('adab8f6062ed47c088edec09bbc35731',8,'Seasonal fruits'),
('b3cb2584410645c593a0bdc63b79b9f8',0,'Copper kalash & coconut'),
('b3cb2584410645c593a0bdc63b79b9f8',1,'Mango leaves & toran'),
('b3cb2584410645c593a0bdc63b79b9f8',2,'Navagraha samagri'),
('b3cb2584410645c593a0bdc63b79b9f8',3,'Vastu yantra'),
('b3cb2584410645c593a0bdc63b79b9f8',4,'Havan kund & samagri'),
('b3cb2584410645c593a0bdc63b79b9f8',5,'Ghee & camphor'),
('b3cb2584410645c593a0bdc63b79b9f8',6,'Roli, kumkum, chandan, akshat'),
('b3cb2584410645c593a0bdc63b79b9f8',7,'Kalawa moli & janeu'),
('b3cb2584410645c593a0bdc63b79b9f8',8,'Diya'),
('b3cb2584410645c593a0bdc63b79b9f8',9,'Sweets for distribution'),
('cb79ebdfea4e4c09b8e080eff11e3c24',0,'Satyanarayan katha book'),
('cb79ebdfea4e4c09b8e080eff11e3c24',1,'Panchamrit vessel'),
('cb79ebdfea4e4c09b8e080eff11e3c24',2,'Banana leaves'),
('cb79ebdfea4e4c09b8e080eff11e3c24',3,'Prasad ingredients (rava, ghee, sugar)'),
('cb79ebdfea4e4c09b8e080eff11e3c24',4,'Supari & paan'),
('cb79ebdfea4e4c09b8e080eff11e3c24',5,'Kalash with coconut'),
('cb79ebdfea4e4c09b8e080eff11e3c24',6,'Roli, chandan, akshat'),
('cb79ebdfea4e4c09b8e080eff11e3c24',7,'Flowers & tulsi'),
('cb79ebdfea4e4c09b8e080eff11e3c24',8,'Diya & camphor'),
('cb79ebdfea4e4c09b8e080eff11e3c24',9,'Incense'),
('f4c6e5a1c09d4d85a6e7faf9a2bd0056',0,'Lakshmi & Ganesh idols or picture'),
('f4c6e5a1c09d4d85a6e7faf9a2bd0056',1,'Lotus seeds (makhana) & kamalgatta'),
('f4c6e5a1c09d4d85a6e7faf9a2bd0056',2,'Gomti chakra'),
('f4c6e5a1c09d4d85a6e7faf9a2bd0056',3,'Kesar'),
('f4c6e5a1c09d4d85a6e7faf9a2bd0056',4,'Silver coin'),
('f4c6e5a1c09d4d85a6e7faf9a2bd0056',5,'Diyas & ghee'),
('f4c6e5a1c09d4d85a6e7faf9a2bd0056',6,'Roli, kumkum, chandan'),
('f4c6e5a1c09d4d85a6e7faf9a2bd0056',7,'Sweets for bhog'),
('f4c6e5a1c09d4d85a6e7faf9a2bd0056',8,'New account book (optional)'),
('f4c6e5a1c09d4d85a6e7faf9a2bd0056',9,'Kalash'),
('fc3a9aae755b42938e239a1503bbd73a',0,'Akhand jyot diya'),
('fc3a9aae755b42938e239a1503bbd73a',1,'Chunri'),
('fc3a9aae755b42938e239a1503bbd73a',2,'Mata ki chowki cloth'),
('fc3a9aae755b42938e239a1503bbd73a',3,'Barley seeds for sowing'),
('fc3a9aae755b42938e239a1503bbd73a',4,'Kanya bhoj set'),
('fc3a9aae755b42938e239a1503bbd73a',5,'Kalash with coconut'),
('fc3a9aae755b42938e239a1503bbd73a',6,'Roli, kumkum, chandan'),
('fc3a9aae755b42938e239a1503bbd73a',7,'Ghee & wicks'),
('fc3a9aae755b42938e239a1503bbd73a',8,'Incense & dhoop'),
('fc3a9aae755b42938e239a1503bbd73a',9,'Flowers');

/*Table structure for table `pujas` */

DROP TABLE IF EXISTS `pujas`;

CREATE TABLE `pujas` (
  `id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro` text COLLATE utf8mb4_unicode_ci,
  `when_performed` text COLLATE utf8mb4_unicode_ci,
  `seo_title` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keywords` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `sort_order` int NOT NULL DEFAULT '0',
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_pujas_slug` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `pujas` */

insert  into `pujas`(`id`,`slug`,`name`,`description`,`image`,`intro`,`when_performed`,`seo_title`,`seo_description`,`seo_keywords`,`active`,`sort_order`,`created_at`,`updated_at`) values 
('2f4e810b29ac4fe3a67e14b76f36cc3c','havan','Havan','Sacred fire ritual with pure herbs and samidha.','https://images.unsplash.com/photo-1630764883473-e8c2056f0589?crop=entropy&cs=srgb&fm=jpg&q=85&w=900','Havan is the fire ritual performed at inaugurations, festivals and family ceremonies, where offerings of herbs and ghee are made into the sacred fire with mantras.','Griha pravesh, Navratri, weddings, mundan, birthdays and business inaugurations.','','','',1,6,'2026-10-04 04:00:48.111281','2026-10-04 04:00:48.111281'),
('401dff9358eb4ce18c2e8bf28fab63f3','ganesh-puja','Ganesh Puja','Vighnaharta — beginnings, wisdom and prosperity.','https://images.unsplash.com/photo-1616377009507-c8111f07aced?crop=entropy&cs=srgb&fm=jpg&q=85&w=900','Ganesh puja is traditionally performed before new beginnings — a home, a business, a journey or a festival. Families keep the ritual simple at home with a small altar, an idol or picture, and the classic offerings of durva grass and modak.','Ganesh Chaturthi, Sankashti Chaturthi each month, and at the start of weddings, housewarmings and new ventures.','','','',1,1,'2026-10-04 04:00:48.103963','2026-10-04 04:00:48.103963'),
('68d729f5dd424c648b4f909dc74d590c','diwali-puja','Diwali','The festival of lights — Maha Lakshmi puja and home shringar.','https://images.unsplash.com/photo-1577083753695-e010191bacb5?crop=entropy&cs=srgb&fm=jpg&q=85&w=900','Diwali brings together home cleaning and decoration, rows of diyas, sweets, and the evening Lakshmi-Ganesh puja — a night many families consider the most auspicious of the year.','The five days from Dhanteras to Bhai Dooj, with Lakshmi puja on Amavasya night.','','','',1,9,'2026-10-04 04:00:48.122280','2026-10-04 04:00:48.122280'),
('7969d7960f344a05813754777f01c6b4','durga-puja','Durga Puja','Shakti worship essentials for Durga Puja and Navratri.','https://images.unsplash.com/photo-1699764681875-dd04ce36b1c3?crop=entropy&cs=srgb&fm=jpg&q=85&w=900','Durga puja honours the Divine Mother — from shashti to dashami, families and communities gather for pushpanjali, aarti and sindoor khela.','Sharad Navratri (Durga Puja), especially Shashti through Dashami.','','','',1,10,'2026-10-04 04:00:48.125474','2026-10-04 04:00:48.125474'),
('a4ded87e4e3b4b94a1bf021d16694221','marriage-puja','Marriage Puja','Vivah sanskar ritual samagri, pandit-curated.','https://images.unsplash.com/photo-1627419375575-6cb2faa849b3?crop=entropy&cs=srgb&fm=jpg&q=85&w=900','A Hindu wedding weaves together many small rituals — from ganesh sthapana to kanyadaan and the saptapadi around the sacred fire. Having every item ready lets the family stay present in the moment.','Engagement, haldi, mehndi and the wedding day itself, on the muhurat chosen by the family.','','','',1,8,'2026-10-04 04:00:48.118061','2026-10-04 04:00:48.118061'),
('adab8f6062ed47c088edec09bbc35731','shiv-puja','Shiv Puja','Abhishek and Shivratri essentials for Mahadev.','https://images.unsplash.com/photo-1760857195921-2275a064bca8?crop=entropy&cs=srgb&fm=jpg&q=85&w=900','Shiv puja centres on abhishek — gently bathing the Shivling with water, milk and panchamrit — along with bel patra and simple offerings. Many families observe it on Mondays and on Maha Shivratri.','Mondays (Somvar), the month of Shravan, Pradosh, and Maha Shivratri.','','','',1,2,'2026-10-04 04:00:48.105203','2026-10-04 04:00:48.105203'),
('b3cb2584410645c593a0bdc63b79b9f8','griha-pravesh','Griha Pravesh','Auspicious entry puja for a new home.','https://images.unsplash.com/photo-1667670651830-2d5bcd0e4f8f?crop=entropy&cs=srgb&fm=jpg&q=85&w=900','Griha pravesh marks the first auspicious entry into a new home. Families usually combine a small havan with kalash sthapana and a meal for loved ones.','Before moving into a new or renovated home, on a muhurat chosen with your family pandit.','','','',1,5,'2026-10-04 04:00:48.108952','2026-10-04 04:00:48.108952'),
('cb79ebdfea4e4c09b8e080eff11e3c24','satyanarayan-puja','Satyanarayan Puja','The katha of gratitude, for milestones and full moons.','https://images.unsplash.com/photo-1552017830-4c76378f4e49?crop=entropy&cs=srgb&fm=jpg&q=85&w=900','The Satyanarayan katha is a beloved household ritual of gratitude, often performed after milestones — a new home, a wedding, an exam result — with family and neighbours sharing prasad.','Purnima (full moon), Ekadashi, and after personal milestones such as griha pravesh, marriages or anniversaries.','','','',1,4,'2026-10-04 04:00:48.107576','2026-10-04 04:00:48.107576'),
('f4c6e5a1c09d4d85a6e7faf9a2bd0056','lakshmi-puja','Lakshmi Puja','Invite prosperity — Diwali and Friday Lakshmi puja.','https://images.unsplash.com/photo-1605292356183-a77d0a9c9d1d?crop=entropy&cs=srgb&fm=jpg&q=85&w=900','Lakshmi puja is performed to welcome prosperity and wellbeing into the home, most famously on Diwali evening when families light diyas and worship alongside Ganesh.','Diwali (Amavasya night), Fridays, Dhanteras, and during Griha Pravesh.','','','',1,3,'2026-10-04 04:00:48.106459','2026-10-04 04:00:48.106459'),
('fc3a9aae755b42938e239a1503bbd73a','navratri','Navratri','Nine nights of Devi worship, fully covered.','https://images.unsplash.com/photo-1699764681875-dd04ce36b1c3?crop=entropy&cs=srgb&fm=jpg&q=85&w=900','Navratri spans nine nights of Devi worship — many families keep an akhand jyot, offer chunri and hold kanya bhoj on the eighth or ninth day.','Chaitra and Sharad Navratri, culminating in Ashtami/Navami and Dussehra.','','','',1,7,'2026-10-04 04:00:48.113053','2026-10-04 04:00:48.113053');

/*Table structure for table `reviews` */

DROP TABLE IF EXISTS `reviews`;

CREATE TABLE `reviews` (
  `id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` int NOT NULL DEFAULT '5',
  `review_text` text COLLATE utf8mb4_unicode_ci,
  `puja` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `reviews` */

insert  into `reviews`(`id`,`name`,`city`,`rating`,`review_text`,`puja`) values 
('11b8e6b7-8931-43bb-8cb3-db7d994acc01','Neha Kulkarni','Mumbai',5,'Good quality products and fast delivery. The camphor and kumkum were clearly pure.','Ganesh Puja Kit'),
('55eb2ca2-ddbf-4bda-b2f8-413a734c5de8','Vikram Singh','Jaipur',4,'The brass diyas are heavier and finer than anything in the local market. Worth every rupee.','Brass Diya Set'),
('5e6950e6-813b-45f6-a9de-169a5ae7f427','Lakshmi Iyer','Chennai',5,'The monthly box means I never run out of ghee or agarbatti again. Arrives before Amavasya, every month.','Monthly Seva Box'),
('6bc2e8ff-a505-48d8-82f8-b825cbe89ec6','Rahul Mehta','Bangalore',5,'The packaging was excellent and the kit made our puja preparation so much easier. The vidhi booklet is a blessing.','Satyanarayan Kit'),
('a6b45de0-8b66-462e-9ec8-5048c9283503','Anil Deshpande','Pune',5,'Our society\'s havan was flawless. Every item on the pandit\'s list was in the box — nothing missed.','Havan Samagri'),
('dbdd49b1-46e7-47b2-8438-c7a2a3197f0a','Priya Sharma','Delhi',5,'Very convenient. I ordered the complete Griha Pravesh kit and everything arrived together, beautifully packed.','Griha Pravesh Kit');

/*Table structure for table `site_content` */

DROP TABLE IF EXISTS `site_content`;

CREATE TABLE `site_content` (
  `content_key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`content_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `site_content` */

insert  into `site_content`(`content_key`,`data`,`updated_at`) values 
('scripts','{\"google_site_verification\": \"gM5Fd1B76mzUpo7ID3Vlp9ZrEiOxamK6zF2OTmhdjCk\", \"bing_site_verification\": \"\", \"ga4_measurement_id\": \"G-86QVC5Z2GP\", \"gtm_container_id\": \"\", \"head_html\": \"<meta name=\\\"google-site-verification\\\" content=\\\"gM5Fd1B76mzUpo7ID3Vlp9ZrEiOxamK6zF2OTmhdjCk\\\" />\", \"body_start_html\": \"<!-- Google tag (gtag.js) -->\\n<script async src=\\\"https://www.googletagmanager.com/gtag/js?id=G-86QVC5Z2GP\\\"></script>\\n<script>\\n  window.dataLayer = window.dataLayer || [];\\n  function gtag(){dataLayer.push(arguments);}\\n  gtag(\'js\', new Date());\\n\\n  gtag(\'config\', \'G-86QVC5Z2GP\');\\n</script>\", \"body_end_html\": \"\"}','2026-10-05 15:25:29.370953');

/*Table structure for table `wishlist_items` */

DROP TABLE IF EXISTS `wishlist_items`;

CREATE TABLE `wishlist_items` (
  `id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_wishlist_customer_item` (`customer_id`,`item_type`,`item_id`),
  CONSTRAINT `fk_wishlist_customer` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wishlist_items` */

insert  into `wishlist_items`(`id`,`customer_id`,`item_type`,`item_id`,`added_at`) values 
('961c90e4-7b5d-41c0-8fb6-7815694e66c3','d6d1dc1e-dd9c-4153-a928-cb19f33fa0cc','kit','vivah-puja-kit','2026-10-04 17:27:43.744027');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
