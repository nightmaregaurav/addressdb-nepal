CREATE TABLE IF NOT EXISTS district (
  id int NOT NULL AUTO_INCREMENT,
  english TEXT COLLATE utf8mb4_unicode_ci NOT NULL,
  nepali TEXT COLLATE utf8mb4_unicode_ci NOT NULL,
  hq_english TEXT COLLATE utf8mb4_unicode_ci NOT NULL,
  hq_nepali TEXT COLLATE utf8mb4_unicode_ci NOT NULL,
  province_id int NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (province_id) REFERENCES province(id)
) CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO `district` (`id`, `english`, `nepali`, `hq_english`, `hq_nepali`, `province_id`) VALUES
(
1,
'Taplejung',
'ताप्लेजुङ',
'Phungling',
'फुङलिङ',
1
),

(
2,
'Panchthar',
'पाँचथर',
'Phidim',
'फिदिम',
1
),

(
3,
'Ilam',
'इलाम',
'Ilam',
'इलाम',
1
),

(
4,
'Jhapa',
'झापा',
'Bhadrapur',
'भद्रपुर',
1
),

(
5,
'Morang',
'मोरङ',
'Biratnagar',
'बिराटनगर',
1
),

(
6,
'Sunsari',
'सुनसरी',
'Inaruwa',
'इनरुवा',
1
),

(
7,
'Dhankuta',
'धनकुटा',
'Dhankuta',
'धनकुटा',
1
),

(
8,
'Tehrathum',
'तेह्रथुम',
'Myanglung',
'म्याङलुङ',
1
),

(
9,
'Sankhuwasabha',
'संखुवासभा',
'Khandbari',
'खाँदबारी',
1
),

(
10,
'Bhojpur',
'भोजपुर',
'Bhojpur',
'भोजपुर',
1
),

(
11,
'Solukhumbu',
'सोलुखुम्बु',
'Solududhkunda',
'सोलुदुधकुण्ड',
1
),

(
12,
'Okhaldhunga',
'ओखलढुंगा',
'Siddhicharan',
'सिद्धिचरण',
1
),

(
13,
'Khotang',
'खोटाङ',
'Diktel Rupakot Majhuwagadhi',
'दिक्तेल रुपाकोट मझुवागढी',
1
),

(
14,
'Udayapur',
'उदयपुर',
'Triyuga',
'त्रियुगा',
1
),

(
15,
'Saptari',
'सप्तरी',
'Rajbiraj',
'राजविराज',
2
),

(
16,
'Siraha',
'सिराहा',
'Siraha',
'सिराहा',
2
),

(
17,
'Dhanusha',
'धनुषा',
'Janakpurdham',
'जनकपुरधाम',
2
),

(
18,
'Mahottari',
'महोत्तरी',
'Jaleshwar',
'जलेश्वर',
2
),

(
19,
'Sarlahi',
'सर्लाही',
'Malangwa',
'मलंगवा',
2
),

(
20,
'Sindhuli',
'सिन्धुली',
'Kamalamai',
'कमलामाई',
3
),

(
21,
'Ramechhap',
'रामेछाप',
'Manthali',
'मन्थली',
3
),

(
22,
'Dolakha',
'दोलखा',
'Bhimeshwar',
'भिमेश्वर',
3
),

(
23,
'Sindhupalchok',
'सिन्धुपाल्चोक',
'Chautara Sangachowkgadhi',
'चौतारा साँगाचोकगढी',
3
),

(
24,
'Kavrepalanchok',
'काभ्रेपलाञ्चोक',
'Dhulikhel',
'धुलिखेल',
3
),

(
25,
'Lalitpur',
'ललितपुर',
'Lalitpur',
'ललितपुर',
3
),

(
26,
'Bhaktapur',
'भक्तपुर',
'Bhaktapur',
'भक्तपुर',
3
),

(
27,
'Kathmandu',
'काठमाण्डौं',
'Kathmandu',
'काठमाण्डौं',
3
),

(
28,
'Nuwakot',
'नुवाकोट',
'Bidur',
'बिदुर',
3
),

(
29,
'Rasuwa',
'रसुवा',
'Gosaikunda',
'गोसाईकुण्ड',
3
),

(
30,
'Dhading',
'धादिङ',
'Neelakantha',
'निलकण्ठ',
3
),

(
31,
'Makwanpur',
'मकवानपुर',
'Hetauda',
'हेटौडा',
3
),

(
32,
'Rautahat',
'रौतहट',
'Gaur',
'गौर',
2
),

(
33,
'Bara',
'बारा',
'Kalaiya',
'कलैया',
2
),

(
34,
'Parsa',
'पर्सा',
'Birgunj',
'बीरगञ्ज',
2
),

(
35,
'Chitwan',
'चितवन',
'Bharatpur',
'भरतपुर',
3
),

(
36,
'Gorkha',
'गोरखा',
'Gorkha',
'गोरखा',
4
),

(
37,
'Lamjung',
'लमजुङ',
'Besishahar',
'बेसीशहर',
4
),

(
38,
'Tanahun',
'तनहुँ',
'Vyas',
'व्यास',
4
),

(
39,
'Syangja',
'स्याङजा',
'Putalibazar',
'पुतलीबजार',
4
),

(
40,
'Kaski',
'कास्की',
'Pokhara',
'पोखरा',
4
),

(
41,
'Manang',
'मनाङ',
'Chame',
'चामे',
4
),

(
42,
'Mustang',
'मुस्ताङ',
'Gharapjhong',
'घरपझोङ',
4
),

(
43,
'Myagdi',
'म्याग्दी',
'Beni',
'बेनी',
4
),

(
44,
'Parbat',
'पर्वत',
'Kusma',
'कुश्मा',
4
),

(
45,
'Baglung',
'बाग्लुङ',
'Baglung',
'बागलुङ',
4
),

(
46,
'Gulmi',
'गुल्मी',
'Resunga',
'रेसुङ्गा',
5
),

(
47,
'Palpa',
'पाल्पा',
'Tansen',
'तानसेन',
5
),

(
481,
'Nawalparasi East',
'नवलपरासी पूर्व',
'Kawasoti',
'कावासोती',
4
),

(
482,
'Nawalparasi West',
'नवलपरासी पश्चिम',
'Ramgram',
'रामग्राम',
5
),

(
49,
'Rupandehi',
'रूपन्देही',
'Siddharthanagar',
'सिद्धार्थनगर',
5
),

(
50,
'Kapilvastu',
'कपिलबस्तु',
'Kapilvastu',
'कपिलवस्तु',
5
),

(
51,
'Arghakhanchi',
'अर्घाखाँची',
'Sandhikharka',
'सन्धीखर्क',
5
),

(
52,
'Pyuthan',
'प्यूठान',
'Pyuthan',
'प्युठान',
5
),

(
53,
'Rolpa',
'रोल्पा',
'Rolpa',
'रोल्पा',
5
),

(
541,
'Rukum East',
'रुकुम पूर्व',
'Sisne',
'सिस्ने',
5
),

(
542,
'Rukum West',
'रुकुम पश्चिम',
'Musikot',
'मुसीकोट',
6
),

(
55,
'Salyan',
'सल्यान',
'Shaarada',
'शारदा',
6
),

(
56,
'Dang',
'दाङ',
'Ghorahi',
'घोराही',
5
),

(
57,
'Banke',
'बाँके',
'Nepalganj',
'नेपालगञ्ज',
5
),

(
58,
'Bardiya',
'बर्दिया',
'Gulariya',
'गुलरिया',
5
),

(
59,
'Surkhet',
'सुर्खेत',
'Birendranagar',
'बिरेन्द्रनगर',
6
),

(
60,
'Dailekh',
'दैलेख',
'Narayan',
'नारायण',
6
),

(
61,
'Jajarkot',
'जाजरकोट',
'Bheri',
'भेरी',
6
),

(
62,
'Dolpa',
'डोल्पा',
'Thuli Bheri',
'ठूली भेरी',
6
),

(
63,
'Jumla',
'जुम्ला',
'Chandannath',
'चन्दननाथ',
6
),

(
64,
'Kalikot',
'कालिकोट',
'Khandachakra',
'खाँडाचक्र',
6
),

(
65,
'Mugu',
'मुगु',
'Chhayanath Rara',
'छायाँनाथ रारा',
6
),

(
66,
'Humla',
'हुम्ला',
'Simikot',
'सिमिकोट',
6
),

(
67,
'Bajura',
'बाजुरा',
'Badimalika',
'बडीमालिका',
7
),

(
68,
'Bajhang',
'बझाङ',
'Jayaprithvi',
'जयपृथ्वी',
7
),

(
69,
'Achham',
'अछाम',
'Mangalsen',
'मङ्गलसेन',
7
),

(
70,
'Doti',
'डोटी',
'Dipayal Silgadhi',
'दिपायल सिलगढी',
7
),

(
71,
'Kailali',
'कैलाली',
'Dhangadhi',
'धनगढी',
7
),

(
72,
'Kanchanpur',
'कञ्चनपुर',
'Bheemdatta',
'भिमदत्त',
7
),

(
73,
'Dadeldhura',
'डडेल्धुरा',
'Amargadhi',
'अमरगढी',
7
),

(
74,
'Baitadi',
'बैतडी',
'Dasharathchand',
'दशरथचन्द',
7
),

(
75,
'Darchula',
'दार्चुला',
'Mahakali',
'महाकाली',
7
);
