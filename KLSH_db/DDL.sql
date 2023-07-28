
create table if not exists students(
id serial primary key,
name varchar(50),
surname varchar(50),
major varchar(3),
team varchar(10)
);
create table if not exists courses(
id serial primary key,
lecturer_id integer,
name varchar(50),
annotation varchar(400),
major varchar(3),
age_restriction integer,
musthave_knowledge varchar(50)
);

create table if not exists course_listeners(
course_id integer references courses(id),
student_id integer references students(id)
);
create table if not exists students_score(
student_id integer references students(id),
NTN_score integer not null,
NEN_score integer not null,
NON_score integer not null,
NFN_score integer not null,
);

create table if not exists NTN_staff(
id serial primary key,
name varchar(50),
surname varchar(50),
major varchar(3),
status varchar(10),
team varchar(10)
);
create table if not exists NEN_staff(
id serial primary key,
name varchar(50),
surname varchar(50),
major varchar(3),
status varchar(10),
team varchar(10)
);
create table if not exists NON_staff(
id serial primary key,
name varchar(50),
surname varchar(50),
major varchar(3),
status varchar(10),
team varchar(10)
);
create table if not exists NFN_staff(
id serial primary key,
name varchar(50),
surname varchar(50),
major varchar(3),
status varchar(10),
team varchar(10)
);
