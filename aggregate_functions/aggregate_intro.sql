-- select count(*) from books;

-- select count(
--     distinct author_fname, author_lname
-- ) from books;


-- select count(*) from books where title like '%the%';


-- select author_lname, author_fname, count(*) as count from books group by author_lname, author_fname;

-- select min(stock_quantity) from books;

-- select max(stock_quantity) from books;


-- select title, pages from books 
-- where pages=(
--     select max(pages) from books
-- );

-- OR

-- select * from books order by pages desc limit 1;

-- select author_fname, author_lname, min(released_year) from books group by author_fname, author_lname;


-- select sum(pages) from books;


-- select author_fname, author_lname, sum(pages) from books group by  author_fname, author_lname;


-- select avg(pages) from books;


-- select released_year, avg(stock_quantity) as average_stock from books group by released_year order by released_year;