-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/zRx4X4
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Contacts" (
    "id" int   NOT NULL,
    "first_name" varchar(30)   NOT NULL,
    "last_name" varchar(30)   NOT NULL,
    "email" varchar(30)   NOT NULL,
    CONSTRAINT "pk_Contacts" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "Category" (
    "id" int   NOT NULL,
    "category" varchar(30)   NOT NULL,
    CONSTRAINT "pk_Category" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "Subcategory" (
    "id" int   NOT NULL,
    "subcategory" varchar(30)   NOT NULL,
    CONSTRAINT "pk_Subcategory" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "Campaign" (
    "campaign_id" int   NOT NULL,
    "contact_id" integer   NOT NULL,
    "company_name" varchar(30)   NOT NULL,
    "description" varchar(30)   NOT NULL,
    "goal" float   NOT NULL,
    "pledged" float   NOT NULL,
    "outcome" varchar(30)   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" varchar(30)   NOT NULL,
    "currency" varchar(30)   NOT NULL,
    "launched_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "category_id" varchar(30)   NOT NULL,
    "subcategory_id" varchar(30)   NOT NULL,
    "primary" key(campaign_id)   NOT NULL,
    CONSTRAINT "pk_Campaign" PRIMARY KEY (
        "campaign_id"
     )
);

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "Contacts" ("id");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "Category" ("id");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "Subcategory" ("id");

