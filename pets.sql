CREATE DATABASE /*!32312 IF NOT EXISTS*/`finaltables` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `finaltables`;

DROP TABLE IF EXISTS pets;
CREATE TABLE IF NOT EXISTS pets (
    `petID` VARCHAR(7),
    `name` VARCHAR(11),
    `kindID` TINYINT,
    `genderID` BOOL,
    `age` TINYINT,
    `ownerID` INT
);
INSERT INTO pets VALUES
    ('U8-6473','Biscuit',0,0,3,1070),
    ('T2-2142','Stowe',1,0,15,1132),
    ('N7-6805','Enyo',1,0,12,1202),
    ('F2-3235','Danger',0,1,8,1306),
    ('L2-1834','Collette',0,0,4,1306),
    ('L4-4205','Rumba',1,1,5,1312),
    ('J2-3320','Heisenberg',0,1,3,1319),
    ('J0-7893','Crockett',0,1,12,1334),
    ('U6-4890','Blackie',0,1,6,1546),
    ('P9-6519','Cookie',1,0,6,1653),
    ('Q9-1565','Scout',0,0,14,1766),
    ('O8-2501','Bandit',2,1,5,1899),
    ('M2-1131','Rumba',1,1,8,1915),
    ('V2-4634','Goethe',0,1,12,2063),
    ('Q5-5872','Taz',0,1,12,2103),
    ('P0-1725','Lily',0,0,0,2419),
    ('Z4-4045','Simba',1,1,0,2700),
    ('G9-0817','Kashi',1,1,5,2722),
    ('K4-5012','Natacha',2,0,11,2755),
    ('K0-8177','Bruce',0,1,12,2809),
    ('R4-6131','Biscuit',0,0,5,2863),
    ('L4-9973','Houdini',0,1,5,2967),
    ('P1-2578','Tiger',1,1,14,3034),
    ('M0-2904','Simba',1,1,1,3086),
    ('G6-6501','Jake',1,1,2,3089),
    ('I7-9550','Angel',0,0,12,3089),
    ('L4-6292','Bright',0,1,13,3089),
    ('V7-6771','Daisy',0,0,4,3245),
    ('N6-7350','Biscuit',0,0,8,3518),
    ('U2-4205','Cuddles',0,1,5,3615),
    ('W7-6372','Daisy',0,0,8,3644),
    ('X8-9212','Danger',0,1,5,3661),
    ('U4-6674','Biscuit',0,0,1,3663),
    ('S4-1063','Bruce',0,1,0,3691),
    ('Q0-8904','Bright',0,1,1,4110),
    ('O5-2472','Bright',0,1,12,4185),
    ('P2-7342','Cuddles',0,1,13,4378),
    ('Q4-9479','Candy',0,0,9,4408),
    ('Z8-4419','Scooter',0,1,3,4464),
    ('Z6-3226','Simba',1,1,11,4793),
    ('Q0-3593','Oakley',2,0,4,4989),
    ('J6-8562','Blackie',0,1,11,5168),
    ('W9-8307','Lexie',0,0,1,5207),
    ('R7-4835','Cookie',0,1,12,5215),
    ('S1-2243','Cuddles',0,1,2,5447),
    ('L4-4030','Bruce',0,1,1,5502),
    ('F6-5391','Cookie',1,0,9,5508),
    ('Q0-2001','Roomba',1,1,9,5508),
    ('U0-5987','Ebenezer',1,1,0,5508),
    ('O8-0027','Scooter',0,1,7,5737),
    ('Q8-3145','Peanut',0,0,13,5796),
    ('L0-6660','Cookie',0,1,9,5806),
    ('T0-5705','Biscuit',0,0,5,5833),
    ('I6-9459','Biscuit',0,0,4,6049),
    ('H8-8856','Bandit',2,1,11,6102),
    ('W8-5750','Simba',1,1,15,6102),
    ('Q8-8753','Danger',0,1,7,6157),
    ('O6-3123','Biscuit',0,0,2,6194),
    ('L4-2594','Newcastle',1,1,6,6405),
    ('X6-4876','Brandy',1,0,3,6406),
    ('X8-8611','Schwarzkopf',0,1,4,6731),
    ('M4-9675','Jeep',1,1,6,6923),
    ('U2-7207','Daisy',0,0,6,7023),
    ('L8-9022','Bright',0,1,7,7085),
    ('S4-0789','Biscuit',0,0,10,7101),
    ('P7-2443','Rumba',1,1,10,7219),
    ('J2-4382','Dexter',2,1,4,7261),
    ('I5-4893','Cookie',1,0,3,7340),
    ('Z4-5652','Priya',1,0,7,7343),
    ('V4-6172','Sarosh',1,0,9,7359),
    ('N8-0553','Tiger',0,1,15,7393),
    ('O1-7229','Dexter',2,1,10,7484),
    ('S4-4013','Pip',0,1,3,7484),
    ('P9-3625','Cuddles',0,1,14,7579),
    ('X0-8765','Vuitton',2,0,11,7581),
    ('M8-7852','Cookie',1,0,8,7606),
    ('H2-8586','Antigone',1,0,8,7663),
    ('U4-5113','Tiger',1,1,12,7772),
    ('H8-1429','Lily',0,0,3,7846),
    ('U4-9376','Scout',0,0,2,7846),
    ('R3-7551','Keller',2,0,2,7908),
    ('G0-7675','Taz',0,1,4,8133),
    ('O3-1895','Candy',0,0,3,8133),
    ('T0-3277','Humbert',1,1,12,8133),
    ('Q2-3642','Thatcher',2,0,8,8143),
    ('J8-7429','Bonaparte',0,1,4,8215),
    ('J1-6366','Bruce',0,1,3,8316),
    ('S4-2254','Draper',1,1,3,8619),
    ('G0-8531','Sojourner',1,0,0,8830),
    ('G4-8096','Danger',0,1,9,9037),
    ('V5-2342','Jake',0,1,8,9039),
    ('N0-9539','Swiffer',1,1,14,9365),
    ('Q8-0954','Lakshmi',1,0,7,9385),
    ('S5-5938','Taz',0,1,6,9427),
    ('F1-1855','Bandit',2,1,2,9604),
    ('X7-2632','Maripol',2,0,7,9614),
    ('L8-0046','Rumba',1,1,7,9828),
    ('S4-9578','Scooter',0,1,9,9850),
    ('T8-1754','Daisy',0,0,13,9850),
    ('I2-7926','Dior',2,0,4,9900);
DROP TABLE IF EXISTS genders;
CREATE TABLE IF NOT EXISTS genders (
    `genderID` BOOL,
    `gender` VARCHAR(6)
);
INSERT INTO genders VALUES
    (0,'female'),
    (1,'male');
DROP TABLE IF EXISTS petkinds;
CREATE TABLE IF NOT EXISTS petkinds (
    `kindID` TINYINT,
    `kind` VARCHAR(6)
);
INSERT INTO petkinds VALUES
    (0,'Dog'),
    (1,'Cat'),
    (2,'Parrot');
DROP TABLE IF EXISTS owners;
CREATE TABLE IF NOT EXISTS owners (
    `ownerID` INT,
    `ownername` VARCHAR(11),
    `surname` VARCHAR(10),
    `streetAddress` VARCHAR(23),
    `state` VARCHAR(2),
    `zipCode` INT
);
INSERT INTO owners VALUES
    (6194,'Karen','Torres','3941 Ritter Avenue','MI',48015),
    (1070,'Jessica','Velazquez','3861 Woodbridge Lane','MI',48034),
    (1132,'Rosa','Quarles','4791 Tennessee Avenue','MI',48034),
    (3034,'Paul','Haring','2612 Tennessee Avenue','MI',48034),
    (6405,'Lawrence','Roder','1386 Hayhurst Lane','MI',48034),
    (9604,'William','Tea','367 Cherry Ridge Drive','MI',48066),
    (9900,'Marie','Floyd','314 Cunningham Court','MI',48075),
    (8830,'Elizabeth','Griffin','2222 Daylene Drive','MI',48075),
    (7340,'Debra','Robins','3437 Summit Park Avenue','MI',48075),
    (8133,'Stacey','Randolph','1145 D Street','MI',48075),
    (7846,'Elvia','Warren','2041 Eagle Drive','MI',48075),
    (1334,'Jason','Cantwell','2372 Don Jackson Lane','MI',48075),
    (2967,'Travis','Bowman','3265 Front Street','MI',48075),
    (2700,'Wm','Poulson','3959 Summit Park Avenue','MI',48075),
    (3661,'Bruce','Hart','2497 Nash Street','MI',48075),
    (3615,'Marion','Glover','2311 Cherry Ridge Drive','MI',48075),
    (1546,'Joseph','Blow','556 D Street','MI',48075),
    (3245,'Susan','Luna','859 Corpening Drive','MI',48085),
    (3086,'Ed','Enriquez','3413 Reppert Coal Road','MI',48093),
    (7261,'Tony','Long','536 Bombardier Way','MI',48104),
    (7579,'Ricardo','Peterson','4963 Mahlon Street','MI',48104),
    (7908,'Paula','Browning','4915 Prudence Street','MI',48146),
    (9365,'Bruce','Tatum','1712 Woodbridge Lane','MI',48150),
    (1202,'Susan','Jackson','3677 Daylene Drive','MI',48154),
    (6157,'Dan','Hysell','3231 Hayhurst Lane','MI',48170),
    (9828,'Steven','Sheldon','2664 Bombardier Way','MI',48184),
    (1319,'Joe','Custer','2765 Wildrose Lane','MI',48185),
    (6406,'Catherine','Hundley','1381 Wildrose Lane','MI',48203),
    (9614,'Carmen','Ingram','1056 Eagle Drive','MI',48219),
    (7343,'Bobbie','Junior','3930 Eagle Drive','MI',48219),
    (5796,'Denise','Haire','3192 Woodbridge Lane','MI',48219),
    (4464,'Daniel','Nielson','4876 Tully Street','MI',48219),
    (5207,'Susan','Corrigan','2569 Prudence Street','MI',48221),
    (1915,'Christopher','Bowers','3575 Woodbridge Lane','MI',48226),
    (9850,'Gary','Snider','3139 Nash Street','MI',48227),
    (3518,'Connie','Pauley','1539 Cunningham Court','MI',48302),
    (4989,'Sarah','Canada','3216 Reppert Coal Road','MI',48302),
    (7023,'Gertrude','Harris','736 Daylene Drive','MI',48302),
    (7772,'Gustavo','Jobe','249 Amethyst Drive','MI',48302),
    (7101,'Bessie','Yen','30 Cunningham Court','MI',48306),
    (1766,'Doris','Ray','1700 Mahlon Street','MI',48335),
    (5502,'Raul','North','4838 Corpening Drive','MI',48336),
    (8215,'Max','Smith','1054 Hayhurst Lane','MI',48342),
    (2063,'William','Vasquez','3806 Perry Street','MI',48342),
    (5737,'Alden','McMiller','3111 Tennessee Avenue','MI',48342),
    (2863,'John','Sebastian','3221 Perry Street','MI',48423),
    (5508,'Charles','Swarey','2463 Charles Street','MI',48548),
    (2103,'Robert','Adkins','2102 Perry Street','MI',48548),
    (3644,'Dorothy','Whitworth','1348 Ripple Street','MI',48607),
    (9039,'Enrique','Baker','774 Robinson Court','MI',48607),
    (6731,'Thomas','Boatwright','3149 Ripple Street','MI',48607),
    (5833,'Mary','Hurtado','4865 Juniper Drive','MI',48655),
    (7359,'Deborah','Bray','2859 Robinson Court','MI',48723),
    (8143,'Jackie','Hatmaker','949 John Avenue','MI',48823),
    (8619,'Robert','Williams','2628 Ben Street','MI',48823),
    (7393,'Tom','Topper','3518 Haven Lane','MI',48837),
    (3691,'Richard','Duke','78 Amethyst Drive','MI',48911),
    (7663,'Julia','Gowan','1342 Ben Street','MI',48933),
    (1653,'Carolyn','Crane','3952 Jarvisville Road','MI',48933),
    (4793,'Thomas','Arnold','1028 Haven Lane','MI',48933),
    (4110,'Gregory','Aucoin','4849 Elk Avenue','MI',48933),
    (5447,'Arthur','Reed','2651 Haven Lane','MI',48933),
    (2419,'Luisa','Cuellar','1308 Shingleton Road','MI',49007),
    (9385,'Joyce','Lopez','1622 Goff Avenue','MI',49007),
    (9427,'Robert','McKinney','3425 Shingleton Road','MI',49077),
    (6923,'Hassan','Stevens','3363 Shingleton Road','MI',49106),
    (2722,'John','Jordan','1799 Elk Avenue','MI',49254),
    (1312,'Charles','Chidester','4086 Cottonwood Lane','MI',49316),
    (1899,'Jeffrey','Moore','2420 Echo Lane','MI',49333),
    (4408,'Sabrina','Britton','1232 Owen Lane','MI',49412),
    (7484,'Mario','Riddle','17 Rubaiyat Road','MI',49415),
    (7219,'John','White','4723 West Street','MI',49426),
    (6049,'Debbie','Metivier','315 Goff Avenue','MI',49503),
    (7581,'Florence','Nolen','3103 Howard Street','MI',49503),
    (2755,'Anne','Hudson','4110 Howard Street','MI',49503),
    (7606,'Edna','Moreno','2548 Wetzel Lane','MI',49503),
    (5215,'Larry','Hunt','3384 West Street','MI',49503),
    (5806,'Jerry','Reyna','1073 Rubaiyat Road','MI',49503),
    (9037,'Roger','Lade','1315 Echo Lane','MI',49503),
    (8316,'Daniel','Fay','894 Twin Oaks Drive','MI',49503),
    (2809,'Bruce','Dunne','4119 Kimberly Way','MI',49503),
    (5168,'Robert','Foster','4680 Rubaiyat Road','MI',49503),
    (1306,'Benjamin','Spears','1507 Twin Oaks Drive','MI',49612),
    (3663,'Lena','Haliburton','4217 Twin Oaks Drive','MI',49684),
    (6102,'Robert','Partridge','704 Railroad Street','MI',49855),
    (4185,'Andrew','Salazar','1968 Veltri Drive','MI',49855),
    (3089,'Lee','McKenzie','3295 Pinewood Avenue','MI',49855),
    (4378,'George','McDonald','4715 Wood Duck Drive','MI',49855),
    (7085,'Gene','Kern','4265 Pinewood Avenue','MI',49912);
DROP TABLE IF EXISTS zips;
CREATE TABLE IF NOT EXISTS zips (
    `zipCode` INT,
    `city` VARCHAR(19)
);
INSERT INTO zips VALUES
    (48015,'Center Line'),
    (48034,'Southfield'),
    (48066,'Roseville'),
    (48075,'Southfield'),
    (48085,'Commerce'),
    (48093,'Warren'),
    (48104,'Ann Arbor'),
    (48146,'Lincoln Park'),
    (48150,'Livonia'),
    (48154,'Livonia'),
    (48170,'Plymouth'),
    (48184,'Wayne'),
    (48185,'Westland'),
    (48203,'Highland Park'),
    (48219,'Detroit'),
    (48221,'Detroit'),
    (48226,'Detroit'),
    (48227,'Detroit'),
    (48302,'Bloomfield Township'),
    (48306,'Rochester Hills'),
    (48335,'Farmington Hills'),
    (48336,'Farmington'),
    (48342,'Pontiac'),
    (48423,'Davison'),
    (48548,'Flint'),
    (48607,'Saginaw'),
    (48655,'Saint Charles'),
    (48723,'Caro'),
    (48837,'Grand Ledge'),
    (48911,'Lansing'),
    (48933,'Lansing'),
    (49007,'Kalamazoo'),
    (49077,'Oshtemo'),
    (49106,'Bridgman'),
    (49254,'Michigan Center'),
    (49316,'Dutton'),
    (49333,'Middleville'),
    (49412,'Fremont'),
    (49415,'Fruitport'),
    (49426,'Hudsonville'),
    (49503,'Grand Rapids'),
    (49612,'Clam River'),
    (49684,'Traverse City'),
    (49855,'Marquette'),
    (49912,'Bruce Crossing');
DROP TABLE IF EXISTS states;
CREATE TABLE IF NOT EXISTS states (
    `state` VARCHAR(2),
    `stateFull` VARCHAR(8)
);
INSERT INTO states VALUES
    ('MI','Michigan');
