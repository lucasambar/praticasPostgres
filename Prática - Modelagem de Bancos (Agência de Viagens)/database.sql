CREATE DATABASE "agênciaDeViagens";

CREATE TABLE airlines (
    "id" SERIAL PRIMARY KEY,
    "name" TEXT NOT NULL,
    "acronym" TEXT VARCHAR(3) NOT NULL UNIQUE
);

CREATE TABLE airports (
    "id" SERIAL PRIMARY KEY,
    "name" TEXT NOT NULL,
    "acronym" TEXT VARCHAR(3) NOT NULL UNIQUE
);

CREATE TABLE flights (
    "id" SERIAL PRIMARY KEY,
    "acronym" TEXT VARCHAR(7) NOT NULL UNIQUE,
    "airline_id" INTEGER NOT NULL REFERENCES "airlines"("id"),
    "airport_dep_id" INTEGER NOT NULL REFERENCES "airports"("id"),
    "dep_time" TEXT NOT NULL,
    "airport_arr_id" INTEGER NOT NULL REFERENCES "airports"("id"),
    "arr_time" TEXT NOT NULL
);