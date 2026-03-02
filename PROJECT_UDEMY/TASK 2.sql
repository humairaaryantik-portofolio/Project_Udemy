-- Select PRODUCT NAMES, and PURCHASE ID for each Purchase
SELECT * FROM product;
SELECT * FROM purchase_product;

SELECT p.product_name, pi.purchase_id
FROM product p
JOIN purchase_product pi
ON p.id = pi.product_id;
