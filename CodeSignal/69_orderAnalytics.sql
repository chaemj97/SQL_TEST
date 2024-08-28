DROP PROCEDURE IF EXISTS solution;
CREATE PROCEDURE solution()
BEGIN

    with order_analytics as (
        select id
            , year(order_date) as year
            , quarter(order_date) as quarter
            , type
            , quantity*price as total_price
        from orders
    )

    SELECT *
    FROM order_analytics
    ORDER by id;
END;
