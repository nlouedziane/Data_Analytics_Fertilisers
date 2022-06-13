-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "fertilizer_product" (
    "area_code" INTEGER   NOT NULL,
    "area" VARCHAR(255)   NOT NULL,
    "item_code" INT   NOT NULL,
    "item" VARCHAR(255)   NOT NULL,
    "element_code" INT   NOT NULL,
    "element" VARCHAR(255)   NOT NULL,
    "year_code" INT   NOT NULL,
    "year" INT   NOT NULL,
    "unit" VARCHAR(255)   NOT NULL,
    "value" INT   NOT NULL,
    "flag" VARCHAR(255)   NOT NULL
);

CREATE TABLE "global_consumption" (
    "entity" VARCHAR(255)   NOT NULL,
    "code" VARCHAR(255)   NOT NULL,
    "year" INT   NOT NULL,
    "fertilizer_quantity" INT   NOT NULL
);

CREATE TABLE "nitrogen" (
    "entity" VARCHAR(255)   NOT NULL,
    "code" VARCHAR(255)   NOT NULL,
    "fertilizer_indicators" INT   NOT NULL
);

CREATE TABLE "phosphate_potassium" (
    "entity" VARCHAR(255)   NOT NULL,
    "code" VARCHAR(255)   NOT NULL,
    "fertilizer_indicators_phosphate" INT   NOT NULL,
    "fertilizer_indicators_potassium" INT   NOT NULL
);

CREATE TABLE "crop_yeild" (
    "entity" VARCHAR(255)   NOT NULL,
    "code" VARCHAR(255)   NOT NULL,
    "year" INT   NOT NULL,
    "crops" INT   NOT NULL,
    "fertilizer_indicators" INT   NOT NULL,
    "continent" VARCHAR(255)   NOT NULL
);

CREATE TABLE "fertilizer_application_rates" (
    "entity" VARCHAR(255)   NOT NULL,
    "code" VARCHAR(255)   NOT NULL,
    "year" INT   NOT NULL,
    "fertilizer_consumption" INT   NOT NULL
);

ALTER TABLE "global_consumption" ADD CONSTRAINT "fk_global_consumption_entity" FOREIGN KEY("entity")
REFERENCES "fertilizer_product" ("area");

ALTER TABLE "nitrogen" ADD CONSTRAINT "fk_nitrogen_entity_code" FOREIGN KEY("entity", "code")
REFERENCES "global_consumption" ("entity", "code");

ALTER TABLE "phosphate_potassium" ADD CONSTRAINT "fk_phosphate_potassium_entity_code" FOREIGN KEY("entity", "code")
REFERENCES "global_consumption" ("entity", "code");

ALTER TABLE "crop_yeild" ADD CONSTRAINT "fk_crop_yeild_entity_code" FOREIGN KEY("entity", "code")
REFERENCES "global_consumption" ("entity", "code");

ALTER TABLE "fertilizer_application_rates" ADD CONSTRAINT "fk_fertilizer_application_rates_entity_code" FOREIGN KEY("entity", "code")
REFERENCES "global_consumption" ("entity", "code");

