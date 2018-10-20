--Create Library Relational Database Schema using PostgreSQL.

create table book (book_id varchar(8) primary key, 
title varchar(50), 
publisher_name varchar(20), 
foreign key (publisher_name) references publisher);

create table book_authors (book_id varchar(8),
			author_name varchar(20),
			primary key(book_id, author_name),
			foreign key (book_id) references book);

create table publisher (name varchar(20) primary key,
			address varchar(255),
			phone numeric(10,0));

create table book_copies (book_id varchar(8),
			branch_id varchar(8),
			no_of_copies numeric(5,0),
			primary key(book_id, branch_id),
			foreign key (book_id) references book,
foreign key (branch_id) references library_branch);

create table book_loans (book_id varchar(8),
			branch_id varchar(8),
			card_no varchar(8),
			date_out date,
			due_date date,
			primary key(book_id, branch_id, card_no),
			foreign key (book_id) references book),
foreign key (branch_id) references library_branch,
foreign key (card_no) references borrower);

create table library_branch (branch_id varchar(8) primary key,
			branch_name varchar(20),
			address varchar(255));

create table borrower (card_no varchar(8) primary key,
			name varchar(20),
			address varchar(255),
			phone numeric(10,0));


--Insert records into Tables.
insert into book values (‘00000001’, ‘Database System Concepts’, ‘Henry Korth’);
insert into book values (‘00000002’, ‘Operating System Concepts’, ‘Greg Gagne’);
insert into book values (‘00000003’, ‘Computer Networking’, ‘Keith Ross’);

inset into publisher values (‘Henry Korth’, ‘110 Becon ave Jersey City NJ 07306’, ‘7326421672’);
inset into publisher values (‘Greg Gagne’, ‘193 Hutton st Jersey City NJ 07306’, ‘7324761672’);
inset into publisher values (‘Henry Korth’, ‘24 Carlton ave Jersey City NJ 07306’, ‘2016421672’);

--Appropriate SQL statement to remove records from table but keep table strcuture intact. 
delete from book;

--List of Publishers names.
select name from publisher;

--The names of the borrowers who currently have books from the library.
select name from borrower,book_loans where due_date>10/4/2015;

--List all of the books published by ‘Bookshelf’ that are on loan to card 43576
select title from book,book_loans where publisher_name = ‘Bookshelf’ and card_no = ‘43576’;