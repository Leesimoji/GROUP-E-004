

CREATE TABLE `SCIENCE` (
`ISSN`		nchar(10)  not null,
`Title`		nvarchar(50)  not null,
`Author`		nvarchar(50)	not null,
`Publisher`	nvarchar(50)	not null,
`year_publish`	nvarchar(10) not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `COMPUTING` (
`ISSN`		nchar(10)  not null,
`Title`		nvarchar(50)  not null,
`Author`		nvarchar(50)	not null,
`Publisher`	nvarchar(50)	not null,
`year_publish`	nvarchar(10) not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `BUSINESS` (
`ISSN`		nchar(10)  not null,
`Title`		nvarchar(50)  not null,
`Author`		nvarchar(50)	not null,
`Publisher`	nvarchar(50)	not null,
`year_publish`	nvarchar(10) not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `MATHS` (
`ISSN`		nchar(10)  not null,
`Title`		nvarchar(50)  not null,
`Author`		nvarchar(50)	not null,
`Publisher`	nvarchar(50)	not null,
`year_publish`	nvarchar(10) not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `ENGLISH` (
`ISSN`		nchar(10)  not null,
`Title`		nvarchar(50)  not null,
`Author`		nvarchar(50)	not null,
`Publisher`	nvarchar(50)	not null,
`year_publish`	nvarchar(10) not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `BIOCHEMISTRY` (
`ISSN`		nchar(10)  not null,
`Title`		nvarchar(50)  not null,
`Author`		nvarchar(50)	not null,
`Publisher`	nvarchar(50)	not null,
`year_publish`	nvarchar(10) not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `POLITICAL SCIENCE` (
`ISSN`		nchar(10)  not null,
`Title`		nvarchar(50)  not null,
`Author`		nvarchar(50)	not null,
`Publisher`	nvarchar(50)	not null,
`year_publish`	nvarchar(10) not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `FINE ART` (
`ISSN`		nchar(10)  not null,
`Title`		nvarchar(50)  not null,
`Author`		nvarchar(50)	not null,
`Publisher`	nvarchar(50)	not null,
`year_publish`	nvarchar(10) not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `LAW` (
`ISSN`		nchar(10)  not null,
`Title`		nvarchar(50)  not null,
`Author`		nvarchar(50)	not null,
`Publisher`	nvarchar(50)	not null,
`year_publish`	nvarchar(10) not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `MEDIA` (
`ISSN`		nchar(10)  not null,
`Title`		nvarchar(50)  not null,
`Author`		nvarchar(50)	not null,
`Publisher`	nvarchar(50)	not null,
`year_publish`	nvarchar(10) not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `HISTORY` (
`ISSN`		nchar(10)  not null,
`Title`		nvarchar(50)  not null,
`Author`		nvarchar(50)	not null,
`Publisher`	nvarchar(50)	not null,
`year_publish`	nvarchar(10) not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `MARKETING` (
`ISSN`		nchar(10)  not null,
`Title`		nvarchar(50)  not null,
`Author`		nvarchar(50)	not null,
`Publisher`	nvarchar(50)	not null,
`year_publish`	nvarchar(10) not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `FINANCE` (
`ISSN`		nchar(10)  not null,
`Title`		nvarchar(50)  not null,
`Author`		nvarchar(50)	not null,
`Publisher`	nvarchar(50)	not null,
`year_publish`	nvarchar(10) not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `DATA SCIENCE` (
`ISSN`		nchar(10)  not null,
`Title`		nvarchar(50)  not null,
`Author`		nvarchar(50)	not null,
`Publisher`	nvarchar(50)	not null,
`year_publish`	nvarchar(10) not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `INFORMATION TECH` (
`ISSN`		nchar(10)  not null,
`Title`		nvarchar(50)  not null,
`Author`		nvarchar(50)	not null,
`Publisher`	nvarchar(50)	not null,
`year_publish`	nvarchar(10) not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `MANAGEMENT` (
`ISSN`		nchar(10)  not null,
`Title`		nvarchar(50)  not null,
`Author`		nvarchar(50)	not null,
`Publisher`	nvarchar(50)	not null,
`year_publish`	nvarchar(10) not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `MUSIC` (
`ISSN`		nchar(10)  not null,
`Title`		nvarchar(50)  not null,
`Author`		nvarchar(50)	not null,
`Publisher`	nvarchar(50)	not null,
`year_publish`	nvarchar(10) not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `ENGINEERING` (
`ISSN`		nchar(10)  not null,
`Title`		nvarchar(50)  not null,
`Author`		nvarchar(50)	not null,
`Publisher`	nvarchar(50)	not null,
`year_publish`	nvarchar(10) not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `TOWN PLANNIG` (
`ISSN`		nchar(10)  not null,
`Title`		nvarchar(50)  not null,
`Author`		nvarchar(50)	not null,
`Publisher`	nvarchar(50)	not null,
`year_publish`	nvarchar(10) not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `MEDICINE` (
`ISSN`		nchar(10)  not null,
`Title`		nvarchar(50)  not null,
`Author`		nvarchar(50)	not null,
`Publisher`	nvarchar(50)	not null,
`year_publish`	nvarchar(10) not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `PHARMACY` (
`ISSN`		nchar(10)  not null,
`Title`		nvarchar(50)  not null,
`Author`		nvarchar(50)	not null,
`Publisher`	nvarchar(50)	not null,
`year_publish`	nvarchar(10) not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `NURSING` (
`ISSN`		nchar(10)  not null,
`Title`		nvarchar(50)  not null,
`Author`		nvarchar(50)	not null,
`Publisher`	nvarchar(50)	not null,
`year_publish`	nvarchar(10) not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `BUILDING TECH` (
`ISSN`		nchar(10)  not null,
`Title`		nvarchar(50)  not null,
`Author`		nvarchar(50)	not null,
`Publisher`	nvarchar(50)	not null,
`year_publish`	nvarchar(10) not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `INTERNATIONAL RELATION` (
`ISSN`		nchar(10)  not null,
`Title`		nvarchar(50)  not null,
`Author`		nvarchar(50)	not null,
`Publisher`	nvarchar(50)	not null,
`year_publish`	nvarchar(10) not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `MEDICINE` (
`ISSN`		nchar(10)  not null,
`Title`		nvarchar(50)  not null,
`Author`		nvarchar(50)	not null,
`Publisher`	nvarchar(50)	not null,
`year_publish`	nvarchar(10) not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


,




