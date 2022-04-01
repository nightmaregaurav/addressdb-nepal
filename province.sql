CREATE TABLE IF NOT EXISTS province (
  id int NOT NULL AUTO_INCREMENT,
  english TEXT COLLATE utf8mb4_unicode_ci NOT NULL,
  nepali TEXT COLLATE utf8mb4_unicode_ci NOT NULL,
  hq_english TEXT COLLATE utf8mb4_unicode_ci NOT NULL,
  hq_nepali TEXT COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (id)
) CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO `province` (`id`, `english`, `nepali`, `hq_english`, `hq_nepali`) VALUES
(
1,
'1_No',
'१_नं',
'Biratnagar',
'बिराटनगर'
),

(
2,
'Madhesh',
'मधेश',
'Janakpur',
'जनकपूर'
),

(
3,
'Bagmati',
'बागमति',
'Hetauda',
'हेटौडा'
),

(
4,
'Gandaki',
'गण्डकी',
'Pokhara',
'पोखरा'
),

(
5,
'Lumbini',
'लुम्बिनी',
'Deukhuri',
'देउखुरी'
),

(
6,
'Karnali',
'कर्णाली',
'Birendranagar',
'बिरेन्द्रनगर'
),

(
7,
'Sudurpashchim',
'सुदुरपश्चिम',
'Godawari',
'गोदावरी'
);
