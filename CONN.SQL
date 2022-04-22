CREATE TABLE IF NOT EXISTS `computer_info` (
    `id` int(10) unsigned NOT NULL auto_increment,
    `Computer_Name` varchar(20) NOT NULL,
    `Serial_Number` varchar(20) NOT NULL,
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

CREATE TABLE IF NOT EXISTS `all_book_info` (
    `ISBN` char(20) NOT NULL,
    `Title` varchar(100) NOT NULL,
    `Author` varchar(100) NOT NULL,
    `Publisher` varchar(50) NOT NULL,
    `Year_Published` year(4) NOT NULL,
    `Genre` varchar(50) NOT NULL
) DEFAULT CHARSET = utf8 COLLATE utf8_general_ci;

CREATE TABLE `SCIENCE` (
    `ISSN` char(10) NOT NULL,
    `Title` varchar(50) NOT NULL,
    `Author` varchar(50) NOT NULL,
    `Publisher` varchar(50) NOT NULL,
    `year_publish` varchar(10) NOT NULL
) DEFAULT CHARSET = utf8 COLLATE utf8_general_ci;

CREATE TABLE `COMPUTING` (
    `ISSN` char(10) NOT NULL,
    `Title` varchar(50) NOT NULL,
    `Author` varchar(50) NOT NULL,
    `Publisher` varchar(50) NOT NULL,
    `year_publish` varchar(10) NOT NULL
) DEFAULT CHARSET = utf8 COLLATE utf8_general_ci;

CREATE TABLE `BUSINESS` (
    `ISSN` char(10) NOT NULL,
    `Title` varchar(50) NOT NULL,
    `Author` varchar(50) NOT NULL,
    `Publisher` varchar(50) NOT NULL,
    `year_publish` varchar(10) NOT NULL
) DEFAULT CHARSET = utf8 COLLATE utf8_general_ci;

CREATE TABLE `MATHS` (
    `ISSN` char(10) NOT NULL,
    `Title` varchar(50) NOT NULL,
    `Author` varchar(50) NOT NULL,
    `Publisher` varchar(50) NOT NULL,
    `year_publish` varchar(10) NOT NULL
) DEFAULT CHARSET = utf8 COLLATE utf8_general_ci;

CREATE TABLE `ENGLISH` (
    `ISSN` char(10) NOT NULL,
    `Title` varchar(50) NOT NULL,
    `Author` varchar(50) NOT NULL,
    `Publisher` varchar(50) NOT NULL,
    `year_publish` varchar(10) NOT NULL
) DEFAULT CHARSET = utf8 COLLATE utf8_general_ci;

CREATE TABLE `BIOCHEMISTRY` (
    `ISSN` char(10) NOT NULL,
    `Title` varchar(50) NOT NULL,
    `Author` varchar(50) NOT NULL,
    `Publisher` varchar(50) NOT NULL,
    `year_publish` varchar(10) NOT NULL
) DEFAULT CHARSET = utf8 COLLATE utf8_general_ci;

CREATE TABLE `POLITICAL SCIENCE` (
    `ISSN` char(10) NOT NULL,
    `Title` varchar(50) NOT NULL,
    `Author` varchar(50) NOT NULL,
    `Publisher` varchar(50) NOT NULL,
    `year_publish` varchar(10) NOT NULL
) DEFAULT CHARSET = utf8 COLLATE utf8_general_ci;

CREATE TABLE `FINE ART` (
    `ISSN` char(10) NOT NULL,
    `Title` varchar(50) NOT NULL,
    `Author` varchar(50) NOT NULL,
    `Publisher` varchar(50) NOT NULL,
    `year_publish` varchar(10) NOT NULL
) DEFAULT CHARSET = utf8 COLLATE utf8_general_ci;

CREATE TABLE `LAW` (
    `ISSN` char(10) NOT NULL,
    `Title` varchar(50) NOT NULL,
    `Author` varchar(50) NOT NULL,
    `Publisher` varchar(50) NOT NULL,
    `year_publish` varchar(10) NOT NULL
) DEFAULT CHARSET = utf8 COLLATE utf8_general_ci;

CREATE TABLE `MEDIA` (
    `ISSN` char(10) NOT NULL,
    `Title` varchar(50) NOT NULL,
    `Author` varchar(50) NOT NULL,
    `Publisher` varchar(50) NOT NULL,
    `year_publish` varchar(10) NOT NULL
) DEFAULT CHARSET = utf8 COLLATE utf8_general_ci;

CREATE TABLE `HISTORY` (
    `ISSN` char(10) NOT NULL,
    `Title` varchar(50) NOT NULL,
    `Author` varchar(50) NOT NULL,
    `Publisher` varchar(50) NOT NULL,
    `year_publish` varchar(10) NOT NULL
) DEFAULT CHARSET = utf8 COLLATE utf8_general_ci;

CREATE TABLE `MARKETING` (
    `ISSN` char(10) NOT NULL,
    `Title` varchar(50) NOT NULL,
    `Author` varchar(50) NOT NULL,
    `Publisher` varchar(50) NOT NULL,
    `year_publish` varchar(10) NOT NULL
) DEFAULT CHARSET = utf8 COLLATE utf8_general_ci;

CREATE TABLE `FINANCE` (
    `ISSN` char(10) NOT NULL,
    `Title` varchar(50) NOT NULL,
    `Author` varchar(50) NOT NULL,
    `Publisher` varchar(50) NOT NULL,
    `year_publish` varchar(10) NOT NULL
) DEFAULT CHARSET = utf8 COLLATE utf8_general_ci;

CREATE TABLE `DATA SCIENCE` (
    `ISSN` char(10) NOT NULL,
    `Title` varchar(50) NOT NULL,
    `Author` varchar(50) NOT NULL,
    `Publisher` varchar(50) NOT NULL,
    `year_publish` varchar(10) NOT NULL
) DEFAULT CHARSET = utf8 COLLATE utf8_general_ci;

CREATE TABLE `INFORMATION TECH` (
    `ISSN` char(10) NOT NULL,
    `Title` varchar(50) NOT NULL,
    `Author` varchar(50) NOT NULL,
    `Publisher` varchar(50) NOT NULL,
    `year_publish` varchar(10) NOT NULL
) DEFAULT CHARSET = utf8 COLLATE utf8_general_ci;

CREATE TABLE `MANAGEMENT` (
    `ISSN` char(10) NOT NULL,
    `Title` varchar(50) NOT NULL,
    `Author` varchar(50) NOT NULL,
    `Publisher` varchar(50) NOT NULL,
    `year_publish` varchar(10) NOT NULL
) DEFAULT CHARSET = utf8 COLLATE utf8_general_ci;

CREATE TABLE `MUSIC` (
    `ISSN` char(10) NOT NULL,
    `Title` varchar(50) NOT NULL,
    `Author` varchar(50) NOT NULL,
    `Publisher` varchar(50) NOT NULL,
    `year_publish` varchar(10) NOT NULL
) DEFAULT CHARSET = utf8 COLLATE utf8_general_ci;

CREATE TABLE `ENGINEERING` (
    `ISSN` char(10) NOT NULL,
    `Title` varchar(50) NOT NULL,
    `Author` varchar(50) NOT NULL,
    `Publisher` varchar(50) NOT NULL,
    `year_publish` varchar(10) NOT NULL
) DEFAULT CHARSET = utf8 COLLATE utf8_general_ci;

CREATE TABLE `TOWN PLANNIG` (
    `ISSN` char(10) NOT NULL,
    `Title` varchar(50) NOT NULL,
    `Author` varchar(50) NOT NULL,
    `Publisher` varchar(50) NOT NULL,
    `year_publish` varchar(10) NOT NULL
) DEFAULT CHARSET = utf8 COLLATE utf8_general_ci;

CREATE TABLE `MEDICINE` (
    `ISSN` char(10) NOT NULL,
    `Title` varchar(50) NOT NULL,
    `Author` varchar(50) NOT NULL,
    `Publisher` varchar(50) NOT NULL,
    `year_publish` varchar(10) NOT NULL
) DEFAULT CHARSET = utf8 COLLATE utf8_general_ci;

CREATE TABLE `PHARMACY` (
    `ISSN` char(10) NOT NULL,
    `Title` varchar(50) NOT NULL,
    `Author` varchar(50) NOT NULL,
    `Publisher` varchar(50) NOT NULL,
    `year_publish` varchar(10) NOT NULL
) DEFAULT CHARSET = utf8 COLLATE utf8_general_ci;

CREATE TABLE `NURSING` (
    `ISSN` char(10) NOT NULL,
    `Title` varchar(50) NOT NULL,
    `Author` varchar(50) NOT NULL,
    `Publisher` varchar(50) NOT NULL,
    `year_publish` varchar(10) NOT NULL
) DEFAULT CHARSET = utf8 COLLATE utf8_general_ci;

CREATE TABLE `BUILDING TECH` (
    `ISSN` char(10) NOT NULL,
    `Title` varchar(50) NOT NULL,
    `Author` varchar(50) NOT NULL,
    `Publisher` varchar(50) NOT NULL,
    `year_publish` varchar(10) NOT NULL
) DEFAULT CHARSET = utf8 COLLATE utf8_general_ci;

CREATE TABLE `INTERNATIONAL RELATION` (
    `ISSN` char(10) NOT NULL,
    `Title` varchar(50) NOT NULL,
    `Author` varchar(50) NOT NULL,
    `Publisher` varchar(50) NOT NULL,
    `year_publish` varchar(10) NOT NULL
) DEFAULT CHARSET = utf8 COLLATE utf8_general_ci;