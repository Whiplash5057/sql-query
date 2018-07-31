-- select distinct author_fname from books;

-- select distinct concat( author_fname, ' ', author_lname ) as fullname from books;

-- select distinct author_fname, author_lname as fullname from books;


-- select author_lname, released_year from books order by released_year;


-- select author_lname, released_year from books order by released_year desc;

-- select author_lname, released_year from books order by 2 desc;

-- select author_lname, released_year from books order by author_lname, author_fname;

-- select author_lname, released_year from books order by 2 limit 3;

-- select author_lname, released_year from books order by 2 limit 2, 3;


-- case insensitive
-- select title, author_fname, author_lname from books where author_fname like '%da%';

-- select title, author_fname, author_lname from books where stock_quantity like '____';