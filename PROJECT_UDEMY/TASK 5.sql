-- Select LAST NAME of user, and TOTAL AMOUNT of purchases made by this user, ONLY FOR USERS WHO MADE TWO OR MORE PURCHASES
SELECT * FROM user;
SELECT * FROM purchase;

SELECT u.last_name, COUNT(*) AS total_purchase
FROM user u
JOIN purchase p
ON u.id = p.fk_purchase_user
GROUP BY u.last_name
HAVING total_purchase >= 2; /*HAVING digunakan karna ada fungsi agregat sehingga dieksekusi setelah group by, sedangkan WHERE digunakan untuk mengolah data mentah tanpa fungsi agregat*/