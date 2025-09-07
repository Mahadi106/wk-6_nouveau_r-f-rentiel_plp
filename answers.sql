-- Réponse 1 obtensions des infos d'employées
SELECT e.firstName,
       e.lastName,
       e.email,
       o.officeCode
FROM employees e
INNER JOIN offices o
    ON e.officeCode = o.officeCode;


-- Réponse 2 obtensions des infos des produits avec leurs lignes
SELECT p.productName,
       p.productVendor,
       pl.productLine
FROM products p
LEFT JOIN productlines pl
    ON p.productLine = pl.productLine;



-- Réponse 3 obtensions des infos des commandes
SELECT o.orderDate,
       o.shippedDate,
       o.status,
       c.customerNumber
FROM customers c
RIGHT JOIN orders o
    ON c.customerNumber = o.customerNumber
LIMIT 10;

