-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/YC17HV
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "health_expenditures" (
    "country_id" int   NOT NULL,
    "year" int   NOT NULL,
    "value" float   NOT NULL
);

CREATE TABLE "income" (
    "country_id" int   NOT NULL,
    "year" int   NOT NULL,
    "value" float   NOT NULL
);

CREATE TABLE "obesity" (
    "country_id" int   NOT NULL,
    "year" int   NOT NULL,
    "value" float   NOT NULL
);

CREATE TABLE "sugar_consumption" (
    "country_id" int   NOT NULL,
    "year" int   NOT NULL,
    "value" float   NOT NULL
);

CREATE TABLE "country" (
    "country_id" int   NOT NULL,
    "common_name" str   NOT NULL,
    "official_name" str   NOT NULL,
    "country_code" str   NOT NULL,
    "continent" str   NOT NULL,
    "sub_region" str   NOT NULL,
    CONSTRAINT "pk_country" PRIMARY KEY (
        "country_id"
     )
);

ALTER TABLE "health_expenditures" ADD CONSTRAINT "fk_health_expenditures_country_id" FOREIGN KEY("country_id")
REFERENCES "country" ("country_id");

ALTER TABLE "income" ADD CONSTRAINT "fk_income_country_id" FOREIGN KEY("country_id")
REFERENCES "country" ("country_id");

ALTER TABLE "obesity" ADD CONSTRAINT "fk_obesity_country_id" FOREIGN KEY("country_id")
REFERENCES "country" ("country_id");

ALTER TABLE "sugar_consumption" ADD CONSTRAINT "fk_sugar_consumption_country_id" FOREIGN KEY("country_id")
REFERENCES "country" ("country_id");

