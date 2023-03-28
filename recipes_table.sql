CREATE TABLE "public"."recipes" (
    "id" SERIAL,
    "name" text,
    "average_cook_time" int4,
    "rating" smallint,
    PRIMARY KEY ("id")
);