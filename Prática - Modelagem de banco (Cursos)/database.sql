CREATE DATABASE "cursos";

CREATE TABLE students (
    "id" SERIAL PRIMARY KEY,
    "name" TEXT NOT NULL,
    "cpf" TEXT VARCHAR(11) UNIQUE,
    "email" TEXT NOT NULL UNIQUE
);

CREATE TABLE groups (
    "id" SERIAL PRIMARY KEY,
    "name" TEXT NOT NULL,
    "code" TEXT VARCHAR(2) NOT NULL UNIQUE
);

CREATE TABLE students_group (
    "id" SERIAL PRIMARY KEY,
    "student_id" INTEGER NOT NULL REFERENCES "students"("id");
    "group_id" INTEGER NOT NULL REFERENCES "groups"("id"),
    "started_at" TIMESTAMP WITHOUT TIMEZONE NOT NULL DEFAULT NOW(),
    "finished_at" DATE
);

CREATE TABLE modules (
    "id" SERIAL PRIMARY KEY,
    "name" TEXT NOT NULL
);

CREATE TABLE projects (
    "id" SERIAL PRIMARY KEY,
    "name" TEXT NOT NULL UNIQUE,
    "module_id" INTEGER NOT NULL REFERENCES "modules"("id")
);

CREATE TABLE avaliations (
    "id" SERIAL PRIMARY KEY,
    "name" TEXT NOT NULL UNIQUE
);

CREATE TABLE deliveries (
    "id" SERIAL PRIMARY KEY,
    "project_id" INTEGER NOT NULL REFERENCES "projects"("id"),
    "student_id" INTEGER NOT NULL REFERENCES "students"("id"),
    "date" TIMESTAMP WITHOUT TIMEZONE NOT NULL DEFAULT NOW(),
    "avaliation_id" INTEGER NOT NULL REFERENCES "avaliations"("id")
);