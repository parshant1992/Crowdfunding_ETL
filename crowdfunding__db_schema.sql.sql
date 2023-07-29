CREATE TABLE "campaign" (
  "cf_id" integer NOT NULL,
  "contact_id" integer NOT NULL PRIMARY KEY,
  "company_name" VARCHAR(50) NOT NULL,
  "description" VARCHAR(100) NOT NULL,
  "goal" float NOT NULL,
  "pledged" float NOT NULL,
  "outcome" VARCHAR(50) NOT NULL,
  "backers_count" INT NOT NULL,
  "country" VARCHAR(20) NOT NULL,
  "currency" VARCHAR(20) NOT NULL,
  "launched_date" DATE NOT NULL,
  "end_date" DATE NOT NULL,
  "category_id" VARCHAR(50) NOT NULL,
  "subcategory_id" VARCHAR(50) NOT NULL
);

CREATE TABLE "category" (
  "category_id" VARCHAR(40) PRIMARY KEY NOT NULL,
  "category" VARCHAR(40) NOT NULL
);

CREATE TABLE "subcategory" (
  "subcategory_id" VARCHAR(40) PRIMARY KEY,
  "subcategory" VARCHAR(40) NOT NULL
);

CREATE TABLE "contacts" (
  "contact_id" INT NOT NULL PRIMARY KEY,
  "first_name" VARCHAR(40) NOT NULL,
  "last_name" VARCHAR(40) NOT NULL,
  "email" VARCHAR(40)
);

ALTER TABLE "contacts" ADD FOREIGN KEY ("contact_id") REFERENCES "campaign" ("contact_id");

ALTER TABLE "campaign" ADD FOREIGN KEY ("category_id") REFERENCES "category" ("category_id");

ALTER TABLE "campaign" ADD FOREIGN KEY ("subcategory_id") REFERENCES "subcategory" ("subcategory_id");
