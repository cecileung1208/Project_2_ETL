-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/YC17HV
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "health_expenditures" (
    "country" str   NOT NULL,
    "year" int   NOT NULL,
    "value" float   NOT NULL
);

CREATE TABLE "income" (
    "country" str   NOT NULL,
    "year" int   NOT NULL,
    "value" float   NOT NULL
);

CREATE TABLE "obesity" (
    "country" str   NOT NULL,
    "year" int   NOT NULL,
    "value" float   NOT NULL
);

CREATE TABLE "sugar_consumption" (
    "country" str   NOT NULL,
    "year" int   NOT NULL,
    "value" float   NOT NULL
);

CREATE TABLE "country" (
    "common_name" str   NOT NULL,
    "official_name" str   NOT NULL,
    "country_code" str   NOT NULL
);

ALTER TABLE "health_expenditures" ADD CONSTRAINT "fk_health_expenditures_country" FOREIGN KEY("country")
REFERENCES "country" ("common_name");

ALTER TABLE "income" ADD CONSTRAINT "fk_income_country" FOREIGN KEY("country")
REFERENCES "country" ("common_name");

ALTER TABLE "obesity" ADD CONSTRAINT "fk_obesity_country" FOREIGN KEY("country")
REFERENCES "country" ("common_name");

ALTER TABLE "sugar_consumption" ADD CONSTRAINT "fk_sugar_consumption_country" FOREIGN KEY("country")
REFERENCES "country" ("common_name");

