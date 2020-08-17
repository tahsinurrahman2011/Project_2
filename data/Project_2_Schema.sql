-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/Belhjr
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "Medals" (
    "Country_Code" VARCHAR(10)   NOT NULL,
    "Gold" int   NOT NULL,
    "Silver" int   NOT NULL,
    "Bronze" int   NOT NULL,
    "Total" int   NOT NULL,
    "Year" int   NOT NULL,
    CONSTRAINT "pk_Medals" PRIMARY KEY (
        "Country_Code"
     )
);

CREATE TABLE "Country_Stats" (
    "Country_Code" VARCHAR(10)   NOT NULL,
    "Population" int   NOT NULL,
    "No_of_Atheletes" int   NOT NULL,
    "GDP" VARCHAR(20)   NOT NULL,
    "Year" int   NOT NULL,
    CONSTRAINT "pk_Country" PRIMARY KEY (
        "Country_Code"
     )
);

CREATE TABLE "Country" (
    "Country_Code" VARCHAR(10)   NOT NULL,
    "Country_Name" VARCHAR(30)   NOT NULL,
    "Host" int   NOT NULL,
    "Year" int   NOT NULL,
    CONSTRAINT "pk_Host" PRIMARY KEY (
        "Country_Code"
     )
);

ALTER TABLE "Medals" ADD CONSTRAINT "fk_Medals_Country_Code" FOREIGN KEY("Country_Code")
REFERENCES "Country" ("Country_Code");

ALTER TABLE "Country_Stats" ADD CONSTRAINT "fk_Country_Stats_Country_Code" FOREIGN KEY("Country_Code")
REFERENCES "Country" ("Country_Code");