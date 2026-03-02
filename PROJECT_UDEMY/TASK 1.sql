-- Select distinct EMAILS of users who made at least ONE PURCHASE
USE project_udemy;
SELECT * FROM user;
SELECT * FROM purchase;
SELECT DISTINCT u.id, u.email 
FROM user u
JOIN purchase p 
ON p.fk_purchase_user = u.id
ORDER BY 1 ASC;