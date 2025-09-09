# To get the firstName, lastName, email, and officeCode of all employees, you will use an INNER JOIN to combine the employees and offices tables on the officeCode column.

SELECT
  e.firstName,
  e.lastName,
  e.email,
  e.officeCode
FROM employees AS e
INNER JOIN offices AS o
  ON e.officeCode = o.officeCode;

# To retrieve the productName, productVendor, and productLine, you'll use a LEFT JOIN to combine the products table with the productlines table on the productLine column.

SELECT
  p.productName,
  p.productVendor,
  p.productLine
FROM products AS p
LEFT JOIN productlines AS pl
  ON p.productLine = pl.productLine;

# To get the orderDate, shippedDate, status, and customerNumber for the first 10 orders, you will use a RIGHT JOIN to combine the customers and orders tables on the customerNumber column and then use LIMIT to restrict the result

SELECT
  o.orderDate,
  o.shippedDate,
  o.status,
  o.customerNumber
FROM customers AS c
RIGHT JOIN orders AS o
  ON c.customerNumber = o.customerNumber
LIMIT 10;
