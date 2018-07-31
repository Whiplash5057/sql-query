select * from customers
    left join orders
        on orders.customer_id = customers.id;

-- +----+------------+-----------+------------------+------+------------+--------+-------------+
-- | id | first_name | last_name | email            | id   | order_date | amount | customer_id |
-- +----+------------+-----------+------------------+------+------------+--------+-------------+
-- |  1 | Boy        | George    | george@gmail.com |    1 | 2016-02-10 |  99.99 |           1 |
-- |  1 | Boy        | George    | george@gmail.com |    2 | 2017-11-11 |  35.50 |           1 |
-- |  2 | George     | Michael   | gm@gmail.com     |    3 | 2014-12-12 | 800.67 |           2 |
-- |  2 | George     | Michael   | gm@gmail.com     |    4 | 2015-01-03 |  12.50 |           2 |
-- |  5 | Bette      | Davis     | bette@aol.com    |    5 | 1999-04-11 | 450.25 |           5 |
-- |  3 | David      | Bowie     | david@gmail.com  | NULL | NULL       |   NULL |        NULL |
-- |  4 | Blue       | Steele    | blue@gmail.com   | NULL | NULL       |   NULL |        NULL |
-- +----+------------+-----------+------------------+------+------------+--------+-------------+


select first_name,
        last_name,
        ifnull(sum(amount), 0) as 'total'
    from customers
    left join orders
        on orders.customer_id = customers.id
        group by customers.id
        order by total;

-- -- +------------+-----------+-------------+
-- | first_name | last_name | sum(amount) |
-- +------------+-----------+-------------+
-- | David      | Bowie     |        NULL |
-- | Blue       | Steele    |        NULL |
-- | Boy        | George    |      135.49 |
-- | Bette      | Davis     |      450.25 |
-- | George     | Michael   |      813.17 |
-- +------------+-----------+-------------+

