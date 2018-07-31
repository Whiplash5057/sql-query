-- select reverse(
--     upper(
--         'Why does my cat look at me with such hatred?'
--     )
-- ) as test_one;


-- select replace(title, ' ', '->') as title from books;


-- select author_fname as forward, reverse(author_lname) as backward from books;

-- select upper(
--     concat(author_fname, ' ', author_lname)
--     ) as full_name from books;


-- select concat(
--     title,
--     ' was released in ',
--     released_year
-- ) as blurb from books;


-- select title, char_length(title) as character_length from books;


select 
    concat(author_lname, ' ', author_fname) as author,
    concat(
        substring(title, 10),
        '...'
        ) as 'short title',
    stock_quantity as quantity
    from books;

