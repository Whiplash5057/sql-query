
-- IMPLICIT INNER JOIN
-- select * from customers, orders where customers.id = orders.customer_id;

-- EXPLICIT JOIN
-- select first_name, last_name, order_date, amount from customers
--     join orders
--         on customers.id = orders.customer_id;

select first_name, last_name, sum(amount) as total_amount
    from customers
    join orders
        on customers.id = orders.customer_id
        group by orders.customer_id
        order by total_amount desc;