/*
WITH UnitPrice AS (
    SELECT P.product_id, purchase_date, units, price,(units*price) AS price_total
    FROM Prices AS P
    JOIN UnitsSold AS U
    ON P.product_id = U.product_id 
    AND purchase_date BETWEEN start_date AND end_date
    GROUP BY purchase_date)

SELECT product_id, ROUND(SUM(price_total)/SUM(units), 2) AS average_price
FROM UnitPrice
GROUP BY product_id;
*/

SELECT P.product_id, IFNULL(ROUND(SUM(units*price)/SUM(units), 2), 0) AS average_price
FROM Prices P
LEFT JOIN UnitsSold U
ON P.product_id = U.product_id 
AND purchase_date BETWEEN start_date AND end_date
GROUP BY product_id;