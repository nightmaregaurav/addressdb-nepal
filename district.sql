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
'Bhojpur',
'भोजपुर',
'Bhojpur',
'भोजपुर',
1),

(
2,
'Dhankuta',
'धनकुटा',
'Dhankuta',
'धनकुटा',
1),

(
3,
'Ilam',
'इलाम',
'Ilam',
'इलाम',
1),

(
4,
'Jhapa',
'झापा',
'Bhadrapur',
'भद्रपुर',
1),

(
5,
'Khotang',
'खोटाँग',
'Diktel Rupakot Majhuwagadhi',
'दिक्तेल रुपाकोट मझुवागढी',
1),

(
6,
'Morang',
'मोरंग',
'Biratnagar',
'बिराटनगर',
1),

(
7,
'Okhaldhunga',
'ओखलढुंगा',
'Siddhicharan',
'सिद्धिचरण',
1),

(
8,
'Panchthar',
'पांचथर',
'Phidim',
'फिदिम',
1),

(
9,
'Sankhuwasabha',
'संखुवासभा',
'Khandbari',
'खाँदबारी',
1),

(
10,
'Solukhumbu',
'सोलुखुम्बू',
'Solududhkunda',
'सोलुदुधकुण्ड',
1),

(
11,
'Sunsari',
'सुनसरी',
'Inaruwa',
'इनरुवा',
1),

(
12,
'Taplejung',
'ताप्लेजुंग',
'Phungling',
'फुङलिङ',
1),

(
13,
'Tehrathum',
'तेह्रथुम',
'Myanglung',
'म्याङलुङ',
1),

(
14,
'Udayapur',
'उदयपुर',
'Triyuga',
'त्रियुगा',
1),

(
15,
'Parsa',
'पर्सा',
'Birgunj',
'बीरगञ्ज',
2),

(
16,
'Bara',
'बारा',
'Kalaiya',
'कलैया',
2),

(
17,
'Rautahat',
'रौतहट',
'Gaur',
'गौर',
2),

(
18,
'Sarlahi',
'सर्लाही',
'Malangwa',
'मलंगवा',
2),

(
19,
'Dhanusha',
'धनुषा',
'Janakpurdham',
'जनकपुरधाम',
2),

(
20,
'Siraha',
'सिराहा',
'Siraha',
'सिराहा',
2),

(
21,
'Mahottari',
'महोत्तरी',
'Jaleshwar',
'जलेश्वर',
2),

(
22,
'Saptari',
'सप्तरी',
'Rajbiraj',
'राजविराज',
2),

(
23,
'Sindhuli',
'सिन्धुली',
'Kamalamai',
'कमलामाई',
3),

(
24,
'Ramechhap',
'रामेछाप',
'Manthali',
'मन्थली',
3),

(
25,
'Dolakha',
'दोलखा',
'Bhimeshwar',
'भिमेश्वर',
3),

(
26,
'Bhaktapur',
'भक्तपुर',
'Bhaktapur',
'भक्तपुर',
3),

(
27,
'Dhading',
'धादिङ',
'Neelakantha',
'निलकण्ठ',
3),

(
28,
'Kathmandu',
'काठमाण्डौं',
'Kathmandu',
'काठमाण्डौं',
3),

(
29,
'Kavrepalanchok',
'काभ्रेपलान्चोक',
'Dhulikhel',
'धुलिखेल',
3),

(
30,
'Lalitpur',
'ललितपुर',
'Lalitpur',
'ललितपुर',
3),

(
31,
'Nuwakot',
'नुवाकोट',
'Bidur',
'बिदुर',
3),

(
32,
'Rasuwa',
'रसुवा',
'Gosaikunda',
'गोसाईकुण्ड',
3),

(
33,
'Sindhupalchok',
'सिन्धुपाल्चोक',
'Chautara Sangachowkgadhi',
'चौतारा साँगाचोकगढी',
3),

(
34,
'Chitwan',
'चितवन',
'Bharatpur',
'भरतपुर',
3),

(
35,
'Makwanpur',
'मकवानपुर',
'Hetauda',
'हेटौडा',
3),

(
36,
'Baglung',
'बागलुङ',
'Baglung',
'बागलुङ',
4),

(
37,
'Gorkha',
'गोरखा',
'Gorkha',
'गोरखा',
4),

(
38,
'Kaski',
'कास्की',
'Pokhara',
'पोखरा',
4),

(
39,
'Lamjung',
'लमजुङ',
'Besishahar',
'बेसीशहर',
4),

(
40,
'Manang',
'मनाङ',
'Chame',
'चामे',
4),

(
41,
'Mustang',
'मुस्ताङ',
'Gharapjhong',
'घरपझोङ',
4),

(
42,
'Myagdi',
'म्याग्दी',
'Beni',
'बेनी',
4),

(
43,
'Nawalpur',
'नवलपुर',
'Kawasoti',
'कावासोती',
4),

(
44,
'Parbat',
'पर्वत',
'Kusma',
'कुश्मा',
4),

(
45,
'Syangja',
'स्याङजा',
'Putalibazar',
'पुतलीबजार',
4),

(
46,
'Tanahun',
'तनहुँ',
'Vyas',
'व्यास',
4),

(
47,
'Kapilvastu',
'कपिलवस्तु',
'Kapilvastu',
'कपिलवस्तु',
5),

(
48,
'Parasi',
'परासी',
'Ramgram',
'रामग्राम',
5),

(
49,
'Rupandehi',
'रुपन्देही',
'Siddharthanagar',
'सिद्धार्थनगर',
5),

(
50,
'Arghakhanchi',
'अर्घाखाँची',
'Sandhikharka',
'सन्धीखर्क',
5),

(
51,
'Gulmi',
'गुल्मी',
'Resunga',
'रेसुङ्गा',
5),

(
52,
'Palpa',
'पाल्पा',
'Tansen',
'तानसेन',
5),

(
53,
'Dang Deukhuri',
'दाङ देउखुरी',
'Ghorahi',
'घोराही',
5),

(
54,
'Pyuthan',
'प्युठान',
'Pyuthan',
'प्युठान',
5),

(
55,
'Rolpa',
'रोल्पा',
'Rolpa',
'रोल्पा',
5),

(
56,
'Eastern Rukum',
'पूर्वी रूकुम',
'Sisne',
'सिस्ने',
5),

(
57,
'Banke',
'बाँके',
'Nepalganj',
'नेपालगञ्ज',
5),

(
58,
'Bardiya',
'बर्दिया',
'Gulariya',
'गुलरिया',
5),

(
59,
'Western Rukum',
'पश्चिमी रूकुम',
'Musikot',
'मुसीकोट',
6),

(
60,
'Salyan',
'सल्यान',
'Shaarada',
'शारदा',
6),

(
61,
'Dolpa',
'डोल्पा',
'Thuli Bheri',
'ठूली भेरी',
6),

(
62,
'Humla',
'हुम्ला',
'Simikot',
'सिमिकोट',
6),

(
63,
'Jumla',
'जुम्ला',
'Chandannath',
'चन्दननाथ',
6),

(
64,
'Kalikot',
'कालिकोट',
'Khandachakra',
'खाँडाचक्र',
6),

(
65,
'Mugu',
'मुगु',
'Chhayanath Rara',
'छायाँनाथ रारा',
6),

(
66,
'Surkhet',
'सुर्खेत',
'Birendranagar',
'बिरेन्द्रनगर',
6),

(
67,
'Dailekh',
'दैलेख',
'Narayan',
'नारायण',
6),

(
68,
'Jajarkot',
'जाजरकोट',
'Bheri',
'भेरी',
6),

(
69,
'Kailali',
'कैलाली',
'Dhangadhi',
'धनगढी',
7),

(
70,
'Achham',
'अछाम',
'Mangalsen',
'मङ्गलसेन',
7),

(
71,
'Doti',
'डोटी',
'Dipayal Silgadhi',
'दिपायल सिलगढी',
7),

(
72,
'Bajhang',
'बझाङ',
'Jayaprithvi',
'जयपृथ्वी',
7),

(
73,
'Bajura',
'बाजुरा',
'Badimalika',
'बडीमालिका',
7),

(
74,
'Kanchanpur',
'कंचनपुर',
'Bheemdatta',
'भिमदत्त',
7),

(
75,
'Dadeldhura',
'डडेलधुरा',
'Amargadhi',
'अमरगढी',
7),

(
76,
'Baitadi',
'बैतडी',
'Dasharathchand',
'दशरथचन्द',
7),

(
77,
'Darchula',
'दार्चुला',
'Mahakali',
'महाकाली',
7);