-- Select CREDIT CARD, and PRODUCT NAME
SELECT * FROM user;
SELECT * FROM product;
SELECT * FROM purchase_product;
SELECT * FROM purchase;

SELECT u.credit_card, pro.product_name 
FROM user u 
JOIN purchase p
ON p.fk_purchase_user = u.id 

JOIN purchase_product pp
ON pp.purchase_id = p.id

JOIN product pro 
ON pro.id = pp.product_id; 
