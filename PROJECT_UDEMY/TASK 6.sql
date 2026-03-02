-- Select user FULL NAME, and TOTAL AMOUNT OF MONEY user spent in online shop
SELECT * FROM user; -- full name
SELECT * FROM purchase_product; -- purchase_id
SELECT * FROM product; -- price

SELECT CONCAT(u.first_name, ' ', u.last_name) AS fullname, SUM(p.price) AS total_price
FROM user u 
JOIN purchase pur
ON pur.fk_purchase_user = u.id

JOIN purchase_product pp
ON pp.purchase_id = pur.id 

JOIN product p 
ON p.id = pp.product_id
GROUP BY fullname;