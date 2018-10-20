--Appropriate SQL statement to remove records from table but keep table strcuture intact. 
delete from book;

--List of Publishers names.
select name from publisher;

--The names of the borrowers who currently have books from the library.
select name from borrower,book_loans where due_date>10/4/2015;

--List all of the books published by ‘Bookshelf’ that are on loan to card 43576
select title from book,book_loans where publisher_name = ‘Bookshelf’ and card_no = ‘43576’;