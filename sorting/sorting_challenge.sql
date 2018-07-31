-- select title from books where title like '%stories%';


-- select title, pages from books order by pages desc limit 1;


-- select concat(
--     title,
--     ' - ',
--     released_year
-- ) as summary from books order by released_year desc limit 3;

-- select * from books where author_lname like '% %';


-- select title, released_year, stock_quantity from books
--     order by stock_quantity, released_year limit 3;


-- select title, author_lname from books
--     order by author_lname, title;


SELECT Upper(Concat('my favourite author is ', author_fname, ' ', author_lname, 
             '!')) as yell
FROM   books 
ORDER  BY Upper(author_lname); 