-- Select LAST NAME of user, and TOTAL AMOUNT of purchases made by this user
SELECT * FROM user;
SELECT * FROM purchase;

SELECT u.last_name, COUNT(*) AS total_purchase
FROM user u
JOIN purchase p
ON u.id = p.fk_purchase_user
GROUP BY u.last_name; /*GROUP BY harus digunakan karena mengandung fungsi agregat, maksudnya tabel mana yang harus dikelompokkan oleh fungsi COUNT*/

