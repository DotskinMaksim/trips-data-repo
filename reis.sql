--andmebaasi loomine
create database reisid;
use reisid;

--genereeritud https://www.mockaroo.com/ abil
create table reisid (
	reisi_id INT,
	sihtkoha_linn VARCHAR(50),
	hind VARCHAR(50),
	inimeste_arv INT,
	kuupaev DATE,
	hotell VARCHAR(50),
	toitumine_kaasas INT,
	hotelli_tärnide INT,
	ööde_arv INT
);
insert into reisid (reisi_id, sihtkoha_linn, hind, inimeste_arv, kuupaev, hotell, toitumine_kaasas, hotelli_tärnide, ööde_arv) values (1, 'Jiangchang', '€974,76', 4, '11/5/2023', '42 Kennedy Pass', 1, 5, 12);
insert into reisid (reisi_id, sihtkoha_linn, hind, inimeste_arv, kuupaev, hotell, toitumine_kaasas, hotelli_tärnide, ööde_arv) values (2, 'Hanamaki', '€720,32', 1, '8/7/2024', '33709 Stuart Park', 1, 5, 14);
insert into reisid (reisi_id, sihtkoha_linn, hind, inimeste_arv, kuupaev, hotell, toitumine_kaasas, hotelli_tärnide, ööde_arv) values (3, 'Tobilolong', '€521,70', 9, '2/8/2024', '23678 Trailsway Street', 1, 5, 14);
insert into reisid (reisi_id, sihtkoha_linn, hind, inimeste_arv, kuupaev, hotell, toitumine_kaasas, hotelli_tärnide, ööde_arv) values (4, 'Vejprnice', '€871,73', 4, '11/27/2023', '958 Evergreen Street', 1, 3, 17);
insert into reisid (reisi_id, sihtkoha_linn, hind, inimeste_arv, kuupaev, hotell, toitumine_kaasas, hotelli_tärnide, ööde_arv) values (5, 'Višňové', '€160,78', 1, '4/24/2024', '305 Springview Crossing', 0, 4, 14);
insert into reisid (reisi_id, sihtkoha_linn, hind, inimeste_arv, kuupaev, hotell, toitumine_kaasas, hotelli_tärnide, ööde_arv) values (6, 'Gjøvik', '€750,39', 1, '12/30/2023', '43309 Bunting Avenue', 1, 4, 6);
insert into reisid (reisi_id, sihtkoha_linn, hind, inimeste_arv, kuupaev, hotell, toitumine_kaasas, hotelli_tärnide, ööde_arv) values (7, 'Karpokhórion', '€987,79', 7, '7/28/2024', '10 Atwood Parkway', 0, 3, 9);
insert into reisid (reisi_id, sihtkoha_linn, hind, inimeste_arv, kuupaev, hotell, toitumine_kaasas, hotelli_tärnide, ööde_arv) values (8, 'Lykóvrysi', '€751,43', 1, '7/4/2024', '696 Ridge Oak Pass', 1, 3, 10);
insert into reisid (reisi_id, sihtkoha_linn, hind, inimeste_arv, kuupaev, hotell, toitumine_kaasas, hotelli_tärnide, ööde_arv) values (9, 'Dongchong', '€900,56', 1, '11/9/2023', '41 Debra Crossing', 0, 4, 16);
insert into reisid (reisi_id, sihtkoha_linn, hind, inimeste_arv, kuupaev, hotell, toitumine_kaasas, hotelli_tärnide, ööde_arv) values (10, 'Bandung', '€314,64', 1, '5/12/2024', '42769 Cordelia Lane', 1, 1, 10);
insert into reisid (reisi_id, sihtkoha_linn, hind, inimeste_arv, kuupaev, hotell, toitumine_kaasas, hotelli_tärnide, ööde_arv) values (11, 'Hetang', '€310,83', 6, '6/12/2024', '4040 Mosinee Place', 1, 1, 8);
insert into reisid (reisi_id, sihtkoha_linn, hind, inimeste_arv, kuupaev, hotell, toitumine_kaasas, hotelli_tärnide, ööde_arv) values (12, 'Farsta', '€865,95', 6, '8/5/2024', '7002 Oakridge Crossing', 1, 2, 7);
insert into reisid (reisi_id, sihtkoha_linn, hind, inimeste_arv, kuupaev, hotell, toitumine_kaasas, hotelli_tärnide, ööde_arv) values (13, 'Wadi', '€458,27', 2, '7/14/2024', '75 Melvin Drive', 0, 3, 4);
insert into reisid (reisi_id, sihtkoha_linn, hind, inimeste_arv, kuupaev, hotell, toitumine_kaasas, hotelli_tärnide, ööde_arv) values (14, 'Hägersten', '€470,17', 1, '11/2/2023', '2 Heffernan Terrace', 0, 2, 16);
insert into reisid (reisi_id, sihtkoha_linn, hind, inimeste_arv, kuupaev, hotell, toitumine_kaasas, hotelli_tärnide, ööde_arv) values (15, 'Skaramangás', '€500,00', 8, '9/2/2024', '9 Stone Corner Center', 1, 5, 12);
insert into reisid (reisi_id, sihtkoha_linn, hind, inimeste_arv, kuupaev, hotell, toitumine_kaasas, hotelli_tärnide, ööde_arv) values (16, 'Iznoski', '€231,96', 5, '9/14/2023', '49 Sycamore Center', 1, 2, 5);
insert into reisid (reisi_id, sihtkoha_linn, hind, inimeste_arv, kuupaev, hotell, toitumine_kaasas, hotelli_tärnide, ööde_arv) values (17, 'Shalqīya', '€237,17', 9, '12/11/2023', '789 Towne Court', 1, 2, 18);
insert into reisid (reisi_id, sihtkoha_linn, hind, inimeste_arv, kuupaev, hotell, toitumine_kaasas, hotelli_tärnide, ööde_arv) values (18, 'Täby', '€530,11', 7, '2/4/2024', '2306 Carey Way', 0, 2, 20);
insert into reisid (reisi_id, sihtkoha_linn, hind, inimeste_arv, kuupaev, hotell, toitumine_kaasas, hotelli_tärnide, ööde_arv) values (19, 'Balogo', '€604,41', 3, '12/31/2023', '9 Melody Circle', 0, 4, 1);
insert into reisid (reisi_id, sihtkoha_linn, hind, inimeste_arv, kuupaev, hotell, toitumine_kaasas, hotelli_tärnide, ööde_arv) values (20, 'Youlan', '€822,13', 6, '6/15/2024', '8649 Vidon Terrace', 0, 5, 18);
insert into reisid (reisi_id, sihtkoha_linn, hind, inimeste_arv, kuupaev, hotell, toitumine_kaasas, hotelli_tärnide, ööde_arv) values (21, 'Liverpool', '€104,04', 7, '2/16/2024', '97256 Norway Maple Plaza', 1, 1, 3);
insert into reisid (reisi_id, sihtkoha_linn, hind, inimeste_arv, kuupaev, hotell, toitumine_kaasas, hotelli_tärnide, ööde_arv) values (22, 'Bzou', '€962,78', 1, '2/14/2024', '48256 Michigan Pass', 1, 3, 19);
insert into reisid (reisi_id, sihtkoha_linn, hind, inimeste_arv, kuupaev, hotell, toitumine_kaasas, hotelli_tärnide, ööde_arv) values (23, 'Jinshan', '€130,92', 2, '1/28/2024', '8546 Mcguire Junction', 1, 1, 17);
insert into reisid (reisi_id, sihtkoha_linn, hind, inimeste_arv, kuupaev, hotell, toitumine_kaasas, hotelli_tärnide, ööde_arv) values (24, 'Tongkiling', '€209,71', 3, '2/9/2024', '17400 Dapin Terrace', 1, 5, 14);
insert into reisid (reisi_id, sihtkoha_linn, hind, inimeste_arv, kuupaev, hotell, toitumine_kaasas, hotelli_tärnide, ööde_arv) values (25, 'Huancheng', '€746,86', 7, '12/13/2023', '33 Crest Line Drive', 1, 5, 19);
insert into reisid (reisi_id, sihtkoha_linn, hind, inimeste_arv, kuupaev, hotell, toitumine_kaasas, hotelli_tärnide, ööde_arv) values (26, 'Yamazakichō-nakabirose', '€391,50', 6, '10/22/2023', '2 Schiller Way', 0, 4, 1);
insert into reisid (reisi_id, sihtkoha_linn, hind, inimeste_arv, kuupaev, hotell, toitumine_kaasas, hotelli_tärnide, ööde_arv) values (27, 'Yushu', '€323,87', 8, '5/3/2024', '89868 Goodland Road', 1, 1, 16);
insert into reisid (reisi_id, sihtkoha_linn, hind, inimeste_arv, kuupaev, hotell, toitumine_kaasas, hotelli_tärnide, ööde_arv) values (28, 'Sezimovo Ústí', '€261,33', 2, '2/3/2024', '7635 Anthes Road', 1, 3, 11);
insert into reisid (reisi_id, sihtkoha_linn, hind, inimeste_arv, kuupaev, hotell, toitumine_kaasas, hotelli_tärnide, ööde_arv) values (29, 'Yanmenguan', '€638,63', 10, '3/16/2024', '1223 Red Cloud Drive', 1, 3, 13);
insert into reisid (reisi_id, sihtkoha_linn, hind, inimeste_arv, kuupaev, hotell, toitumine_kaasas, hotelli_tärnide, ööde_arv) values (30, 'Cayambe', '€449,28', 4, '3/15/2024', '47060 Loeprich Circle', 0, 5, 9);
insert into reisid (reisi_id, sihtkoha_linn, hind, inimeste_arv, kuupaev, hotell, toitumine_kaasas, hotelli_tärnide, ööde_arv) values (31, 'Ampanihy', '€198,78', 10, '4/3/2024', '35205 Coolidge Park', 1, 1, 9);
insert into reisid (reisi_id, sihtkoha_linn, hind, inimeste_arv, kuupaev, hotell, toitumine_kaasas, hotelli_tärnide, ööde_arv) values (32, 'Athens', '€836,07', 4, '3/19/2024', '511 International Point', 1, 1, 7);
insert into reisid (reisi_id, sihtkoha_linn, hind, inimeste_arv, kuupaev, hotell, toitumine_kaasas, hotelli_tärnide, ööde_arv) values (33, 'Dālbandīn', '€198,06', 10, '7/3/2024', '51 Elka Park', 0, 2, 13);
insert into reisid (reisi_id, sihtkoha_linn, hind, inimeste_arv, kuupaev, hotell, toitumine_kaasas, hotelli_tärnide, ööde_arv) values (34, 'El Pino', '€961,96', 2, '1/25/2024', '1 Hallows Crossing', 1, 4, 15);
insert into reisid (reisi_id, sihtkoha_linn, hind, inimeste_arv, kuupaev, hotell, toitumine_kaasas, hotelli_tärnide, ööde_arv) values (35, 'Huyunxiang', '€241,19', 6, '5/24/2024', '215 Huxley Point', 1, 2, 1);
insert into reisid (reisi_id, sihtkoha_linn, hind, inimeste_arv, kuupaev, hotell, toitumine_kaasas, hotelli_tärnide, ööde_arv) values (36, 'Shlissel’burg', '€792,45', 7, '10/24/2023', '84673 Farragut Point', 1, 2, 15);
insert into reisid (reisi_id, sihtkoha_linn, hind, inimeste_arv, kuupaev, hotell, toitumine_kaasas, hotelli_tärnide, ööde_arv) values (37, 'San Rafael', '€532,83', 10, '3/27/2024', '9850 Utah Center', 1, 5, 16);
insert into reisid (reisi_id, sihtkoha_linn, hind, inimeste_arv, kuupaev, hotell, toitumine_kaasas, hotelli_tärnide, ööde_arv) values (38, 'Chumpi', '€457,87', 7, '9/28/2023', '95 Delladonna Parkway', 0, 2, 14);
insert into reisid (reisi_id, sihtkoha_linn, hind, inimeste_arv, kuupaev, hotell, toitumine_kaasas, hotelli_tärnide, ööde_arv) values (39, 'Pułtusk', '€839,73', 1, '5/17/2024', '43 Main Street', 1, 2, 20);
insert into reisid (reisi_id, sihtkoha_linn, hind, inimeste_arv, kuupaev, hotell, toitumine_kaasas, hotelli_tärnide, ööde_arv) values (40, 'Baiyang', '€730,00', 2, '11/8/2023', '0478 Tennessee Place', 0, 1, 9);
insert into reisid (reisi_id, sihtkoha_linn, hind, inimeste_arv, kuupaev, hotell, toitumine_kaasas, hotelli_tärnide, ööde_arv) values (41, 'Ixopo', '€597,02', 3, '7/17/2024', '0 Dovetail Way', 1, 1, 2);
insert into reisid (reisi_id, sihtkoha_linn, hind, inimeste_arv, kuupaev, hotell, toitumine_kaasas, hotelli_tärnide, ööde_arv) values (42, 'Bangxi', '€365,39', 10, '7/15/2024', '0 Forest Drive', 1, 2, 8);
insert into reisid (reisi_id, sihtkoha_linn, hind, inimeste_arv, kuupaev, hotell, toitumine_kaasas, hotelli_tärnide, ööde_arv) values (43, 'Vale de Açores', '€105,39', 10, '10/6/2023', '570 Lakewood Center', 1, 3, 9);
insert into reisid (reisi_id, sihtkoha_linn, hind, inimeste_arv, kuupaev, hotell, toitumine_kaasas, hotelli_tärnide, ööde_arv) values (44, 'Pryazovs’ke', '€433,65', 1, '7/25/2024', '668 Independence Trail', 0, 3, 15);
insert into reisid (reisi_id, sihtkoha_linn, hind, inimeste_arv, kuupaev, hotell, toitumine_kaasas, hotelli_tärnide, ööde_arv) values (45, 'Wan’an', '€132,24', 8, '4/3/2024', '78589 Northport Park', 0, 4, 8);
insert into reisid (reisi_id, sihtkoha_linn, hind, inimeste_arv, kuupaev, hotell, toitumine_kaasas, hotelli_tärnide, ööde_arv) values (46, 'Maripa', '€461,34', 7, '7/4/2024', '5243 Fair Oaks Junction', 1, 4, 3);
insert into reisid (reisi_id, sihtkoha_linn, hind, inimeste_arv, kuupaev, hotell, toitumine_kaasas, hotelli_tärnide, ööde_arv) values (47, 'Guatimozín', '€642,10', 8, '2/14/2024', '77509 Fallview Alley', 1, 3, 18);
insert into reisid (reisi_id, sihtkoha_linn, hind, inimeste_arv, kuupaev, hotell, toitumine_kaasas, hotelli_tärnide, ööde_arv) values (48, 'Lyantonde', '€255,19', 9, '7/16/2024', '28012 Milwaukee Terrace', 1, 1, 21);
insert into reisid (reisi_id, sihtkoha_linn, hind, inimeste_arv, kuupaev, hotell, toitumine_kaasas, hotelli_tärnide, ööde_arv) values (49, 'Kuryłówka', '€383,48', 3, '9/6/2024', '49 Westport Avenue', 0, 1, 15);
insert into reisid (reisi_id, sihtkoha_linn, hind, inimeste_arv, kuupaev, hotell, toitumine_kaasas, hotelli_tärnide, ööde_arv) values (50, 'Atalhada', '€341,27', 6, '11/21/2023', '2 Cambridge Center', 0, 3, 14);

--xml jada loomine
SELECT 
    sihtkoha_linn AS '@sihtkoha_linn',
	sihtkoha_linn,
    hind,  
    inimeste_arv, 
    kuupaev,  
    
    (SELECT 
		hotelli_aadress as 'hotelli_aadress',
        toitumine_kaasas AS 'toitumine_kaasas',
        hotelli_tarnide AS 'hotelli_tarnide', 
        oode_arv AS 'oode_arv'  
     FOR XML PATH('hotell'), TYPE)  
FROM reisid 
FOR XML PATH('reis'), ROOT('reisid');
