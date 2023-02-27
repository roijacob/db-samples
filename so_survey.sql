CREATE TABLE basic_information(
    "ResponseId" integer NOT NULL,
    "MainBranch" character varying(85) NOT NULL,
    "Employment" character varying(215),
    "RemoteWork" character varying(40),
    "CodingActivities" character varying(140),
    PRIMARY KEY ("ResponseId")
);

CREATE TABLE education(
    "ResponseId" integer NOT NULL,
    "EdLevel" character varying(85),
    "LearnCode" character varying(275),
    "LearnCodeOnline" character varying(375),
    "LearnCodeCoursesCert" character varying(65),
    "YearsCode" character varying(20),
    "YearsCodePro" character varying(20), 
	  FOREIGN KEY ("ResponseId") REFERENCES basic_information ("ResponseId")
);

CREATE TABLE work_career(
    "ResponseId" integer,
    "DevType" character varying(675),
    "OrgSize" character varying(50),
    "PurchaseInfluence" character varying(35),
    "BuyNewTool" character varying(280),
    "Country" character varying(55),
    "Currency" character varying(45),
    "CompTotal" numeric,
    "CompFreq" character varying(10), 
    FOREIGN KEY ("ResponseId") REFERENCES basic_information ("ResponseId")
);