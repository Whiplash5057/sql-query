-- select 
--     title,
--     rating
-- from series
--     join reviews
--     on   series.id = reviews.series_id;


-- select 
--     title,
--     avg(rating) as 'avg_rating'
-- from series
--     join reviews
--     on   series.id = reviews.series_id
--     group by title
--     order by avg_rating;


-- select
--     first_name,
--     last_name,
--     rating
-- from reviewers
-- join reviews
--     on reviewers.id = reviews.reviewer_id;


-- select
--     title
-- from series
-- left join reviews
--     on reviews.series_id = series.id
--     where reviews.rating is null;

-- +-----------------------+
-- | title                 |
-- +-----------------------+
-- | Malcolm In The Middle |
-- | Pushing Daisies       |
-- +-----------------------+

-- select 
--     genre,
--     avg(reviews.rating)
--     from series
--     join reviews on series.id = reviews.series_id
--     group by genre;

-- select 
--     first_name,
--     last_name,
--     count(reviews.rating),
--     min(reviews.rating) as min,
--     max(reviews.rating) as max,
--     avg(reviews.rating) as avg,
--     case
--         when avg(reviews.rating) is null then 'INACTIVE'
--         else 'ACTIVE'
--     end as 'STATUS'
-- from reviewers
--     left join reviews
--         on reviewers.id = reviews.reviewer_id
--     group by first_name,last_name;


-- select 
--     title,
--     reviews.rating as rating,
--     concat(reviewers.first_name, ' ', reviewers.last_name) as reviewer
--     from series
--     join reviews
--         on series.id = reviews.series_id
--     join reviewers
--         on reviewers.id = reviews.reviewer_id
    