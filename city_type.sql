CREATE TABLE IF NOT EXISTS city_type (
  id int NOT NULL AUTO_INCREMENT,
  nepali TEXT COLLATE utf8mb4_unicode_ci NOT NULL,
  english TEXT COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (id)
) CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO `city_type` (`id`, `nepali`, `english`) VALUES
(
1,
'गाउँपालिका',
'Rural Municipality'
),

(
2,
'नगरपालिका',
'Municipality'
),

(
3,
'उपमहानगरपालिका',
'Sub-Metropolitian City'
),

(
4,
'महानगरपालिका',
'Metropolitian City'
);