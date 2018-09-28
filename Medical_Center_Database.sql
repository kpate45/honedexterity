-- Creating Small Medical Center Database.
create table patient
	(pid		varchar(7) primary key,
	 fname		varchar(20) not null,
	 lname		varchar(20) not null,
	 dob		date not null,
	 gender		varchar(1) check (gender = 'M' or gender = 'F') not null,
	 zip		numeric(5,0));

create table doctor
	(did		varchar(7) primary key,
	 fname		varchar(20) not null,
	 lname		varchar(20) not null,
	 gender		varchar(1) check (gender = 'M' or gender = 'F') not null,
	 speciality	varchar(100) not null,
	 room_no	varchar(4));

create table nurse
	(nid		varchar(7) primary key,
	 fname		varchar(20) not null,
	 lname		varchar(20) not null,
	 gender		varchar(1) check (gender = 'M' or gender = 'F') not null,
	 experience	numeric(2,0) check (experience >= 2));

create table treatment
	(case_no	varchar(7) primary key,
	 pid		varchar(7) not null,
	 did		varchar(7) not null,
	 nid		varchar(7) not null,
	 admit_date	date not null,
	 discharge_date	date check (discharge_date>=admit_date),
	 description	varchar(512),
	 foreign key (pid) references patient,
	 foreign key (did) references doctor,
	 foreign key (nid) references nurse);

create table diagnosis
	(diag_no	varchar(2) primary key,
	 pid		varchar(7) not null,
	 did		varchar(7) not null,
	 case_no	varchar(7) not null,
	 diag_date	date not null,
	 category	numeric(2,0) check (category >= 0 and category < 26),
	 severity_code	numeric(1,0) check (severity_code >= 0 and severity_code <= 4),
	 foreign key (pid) references patient,
	 foreign key (did) references doctor,
	 foreign key (case_no) references treatment); 