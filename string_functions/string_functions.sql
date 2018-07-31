-- select concat(author_fname, ' ', author_lname) as full_name, author_fname as first_name, author_lname as last_name from books;

-- select concat_ws('-', author_fname, author_lname) as url from books;

-- select substring('Hello World', 1, 4) as word;

-- select substring('Hello World', 7) as word;

-- select substring('Hello World', -3) as word;

-- select concat(
--     substring(title, 1, 20), 
--     '...'
-- )  as title  from books;



-- select replace('Hello World', 'l', '*');


-- select reverse('hello world')


-- select char_length('Hello World')


-- select upper('Hello world');