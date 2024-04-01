
create type genders as enum('male','female');
create type active as enum ('Is','Not')

create table schools
(
	id serial primary key,
	school_title varchar(50) not null,
	level_count int,
	is_active int,
	created_at date,
	updated_at date
)

create table subjects
(
	id serial primary key,
	title varchar(100) not null,
	school_id int references schools(id),
	stage int,
	created_at date,
	updated_at date
)

create table students
(
	id serial primary key,
	student_code varchar(12) unique,
	fullname varchar (60) not null,
	gender genders,
	birthdate date,
	email varchar(60) unique check(email ~* '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$'),
	phone varchar(30) unique,
	school_id int references schools(id),
	stage_in int,
	sections varchar(2),
	is_active active,
	join_date date,
	created_at date,
	updated_at date
)


create table parents
(
	id serial primary key,
	parent_code varchar(12) unique,
	fullname varchar(60) not null,
	email varchar(60) unique check(email ~* '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$'),
	phone varchar(20) unique,
	created_at date,
	updated_at date
)
create table student_parent
(
	id serial primary key,
	student_id int references students(id),
	parent_id int references parents(id)
)

create table teachers
(
	id serial primary key,
	teacher_code varchar(50) unique,
	fullname varchar(60) not null,
	gender genders,
	birthdate date,
	email varchar(50) unique check(email ~*'^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$'),
	phone varchar(30) not null unique,
	is_active active,
	join_date date,
	working_days int,
	created_at date,
	updated_at date
)
create table classroom
(
	id serial primary key,
	capacity int,
	room_type int,
	description varchar(50),
	created_at date,
	updated_at date
	
)

create table classes
(
	id serial primary key,
	class_name varchar(50) not null,
	subject_id int references subjects(id),
	classroom_id int references classroom(id),
	sections varchar(2) not null,
	created_at date,
	updated_at date
)

create table class_studnet
(
	id serial primary key,
	class_id int references classes(id),
	student_id int references students(id)
)

select * from schools
select * from subjects
select * from students
select * from parents