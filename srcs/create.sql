DROP TABLE IF EXISTS "class";

CREATE TABLE "class" (
  id SERIAL PRIMARY KEY,
  date DATE,
  time varchar(255),
  group_code varchar(255) default NULL,
  class_type varchar(255) default NULL,
  subject_name varchar(255) default NULL,
  professor_id integer NULL,
  classroom integer NULL
);

DROP TABLE IF EXISTS "subject";

CREATE TABLE "subject" (
  id SERIAL PRIMARY KEY,
  subject_name varchar(255) default NULL,
  obligation varchar(255) default NULL,
  check_type varchar(255) default NULL,
  hours_number integer NULL
);

DROP TABLE IF EXISTS "professor";

CREATE TABLE "professor" (
  id SERIAL PRIMARY KEY,
  professor_name varchar(255) default NULL,
  department varchar(255) default NULL,
  work_status varchar(255) default NULL,
  science_degree varchar(255) default NULL
);

DROP TABLE IF EXISTS "group";

CREATE TABLE "group" (
  id SERIAL PRIMARY KEY,
  students_number integer NULL,
  group_code varchar(255) default NULL,
  semester integer NULL,
  degree varchar(255) default NULL
);

DROP TABLE IF EXISTS "student";

CREATE TABLE "student" (
  id SERIAL PRIMARY KEY,
  department varchar(255) default NULL,
  semester integer NULL,
  group_number integer NULL,
  degree varchar(255) default NULL,
  scholarship integer NULL,
  name varchar(255) default NULL,
  student_id varchar(15) default NULL
);
