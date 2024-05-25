insert into LibraryManagement.authors (author_id, author_name) values (1, 'Haruki Murakami');
insert into LibraryManagement.authors (author_id, author_name) values (2, 'John Perkins');

insert into LibraryManagement.books (book_id, title, publication_year, author_id, genre_id) values (1, 'Hear the Wind Sing', 1987, 1, 1);
insert into LibraryManagement.books (book_id, title, publication_year, author_id, genre_id) values (2, 'Confessions of an Economic Hit Man', 2004, 2, 2);

insert into LibraryManagement.borrowed_books (borrow_id, book_id, user_id, borrow_date, return_date) values (1, 1, 1, '2022-05-12', '2024-05-25');
insert into LibraryManagement.borrowed_books (borrow_id, book_id, user_id, borrow_date, return_date) values (2, 2, 2, '2024-05-14', null);

insert into LibraryManagement.genres (genre_id, genre_name) values (1, 'Detective fiction');
insert into LibraryManagement.genres (genre_id, genre_name) values (2, 'Biography');

insert into LibraryManagement.users (user_id, username, email) values (1, 'Alice', 'alice@gmail.com');
insert into LibraryManagement.users (user_id, username, email) values (2, 'Bob', 'bob@gmail.com');

