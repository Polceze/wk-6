/* 1. SQL query to get the firstName, lastName, email, and officeCode of all employees, 
and Use INNER JOIN to combine the employees table with the offices table using the officeCode column. */

SELECT 
    t1.firstName, 
    t1.lastName, 
    t1.email, 
    t1.officeCode, 
    t2.* 
FROM 
    employees t1 
INNER JOIN offices t2 
    ON t1.officeCode = t2.officeCode;

/* 2. SQL query to get the productName, productVendor, and productLine from the products table,
and Use LEFT JOIN to combine the products table with the productlines table using the productLine column. */

SELECT 
    t1.productName, 
    t1.productVendor, 
    t1.productLine, 
    t2.* 
FROM products t1 
LEFT JOIN productLines t2 
    ON t1.productLine = t2.productLine;

/* 3. SQL query to retrieve the orderDate, shippedDate, status, and customerNumber for the first 10 orders.
Use a RIGHT JOIN to combine the customers table with the orders table using the customerNumber column. */

SELECT 
    t2.orderDate, 
    t2.shippedDate, 
    t2.status, 
    t1.customerNumber 
FROM customers t1 
RIGHT JOIN orders t2 
    ON t1.customerNumber = t2.customerNumber
ORDER BY orderDate ASC 
LIMIT 10;