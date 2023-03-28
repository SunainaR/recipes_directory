-- EXAMPLE
-- (file: spec/seeds_{table_name}.sql)

-- Write your SQL seed here. 

-- First, you'd need to truncate the table - this is so our table is emptied between each test run,
-- so we can start with a fresh state.
-- (RESTART IDENTITY resets the primary key)

TRUNCATE TABLE recipes RESTART IDENTITY; -- replace with your own table name.

-- Below this line there should only be `INSERT` statements.
-- Replace these statements with your own seed data.
-- Note: example showed adding the data as seperate insert statments.


INSERT INTO "public"."recipes" ("name", "average_cook_time", "rating") VALUES ('Spaghetti', 15, 4);
INSERT INTO "public"."recipes" ("name", "average_cook_time", "rating") VALUES ('Dal', 20, 5);