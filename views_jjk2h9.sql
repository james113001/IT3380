1. CREATE VIEW SFEmployees AS
SELECT firstName, lastName, employeeNumber, email, jobTitle
FROM employees e, offices o
WHERE e.officeCode = o.officeCode AND city = "San Francisco";

SELECT COUNT(employeeNumber)
FROM SFEmployees;

2. CREATE VIEW managers AS
SELECT firstName, lastName, employeeNumber, email, jobTitle, city
FROM employees e, offices o
WHERE e.officeCode = o.officeCode AND employeeNumber IN (SELECT reportsTo FROM employees);

SELECT COUNT(employeeNumber), city
FROM managers
GROUP BY city;

3. CREATE VIEW custByCity AS
SELECT COUNT(customerNumber) AS "Num of Customers", city
FROM customers
GROUP BY city;

SELECT *
FROM custByCity
WHERE city = "Singapore";

4. CREATE VIEW paymentsByMonth AS
SELECT SUM(amount) AS totalPayment, month(paymentDate) AS "month", year(paymentDate) AS "year"
FROM payments
GROUP BY month, year
ORDER BY year, month;

SELECT *
FROM paymentsByMonth
WHERE month = 11 AND year = 2004;

5. CREATE VIEW orderTotalsByMonth AS
SELECT SUM(quantityOrdered*priceEach), month(orderDate) AS "month", year(orderDate) AS "year"
FROM orders o
LEFT JOIN orderdetails d ON o.orderNumber = d.orderNumber
GROUP BY month, year
ORDER BY year, month;

SELECT *
FROM orderTotalsByMonth
WHERE month = 8 AND year = 2004;

6. CREATE VIEW salesPerLine AS
SELECT SUM(quantityOrdered*priceEach) AS totalSales, productLine
FROM orderdetails d
LEFT JOIN products p ON d.productCode = p.productCode
GROUP BY productLine;

SELECT totalSales
FROM salesPerLine
WHERE productLine = "Classic Cars";

7. CREATE VIEW productSalesYear AS
SELECT productName, SUM(quantityOrdered*priceEach) AS totalSales, year(orderDate) AS year
FROM orderdetails d
JOIN orders o ON o.orderNumber = d.orderNumber
LEFT JOIN products p ON d.productCode = p.productCode
GROUP BY productName, year;

SELECT totalSales, year
FROM productSalesYear
WHERE productName = "2001 Ferrari Enzo";

8. CREATE VIEW orderTotals AS
SELECT d.orderNumber, customerName, SUM(quantityOrdered*priceEach) AS orderTotal
FROM orderdetails d
RIGHT JOIN orders o ON o.orderNumber = d.orderNumber
RIGHT JOIN customers c ON c.customerNumber = o.customerNumber
GROUP BY d.orderNumber;

SELECT *
FROM orderTotals
ORDER BY orderTotal DESC
LIMIT 15;

9. CREATE VIEW salesPerRep AS
SELECT SUM(quantityOrdered*priceEach) AS totalSales, salesRepEmployeeNumber, firstName, lastName
FROM orderdetails d
RIGHT JOIN orders o ON o.orderNumber = d.orderNumber
JOIN customers c ON c.customerNumber = o.customerNumber
RIGHT JOIN employees e ON e.employeeNumber = c.salesRepEmployeeNumber
WHERE jobTitle = "Sales Rep"
GROUP BY salesRepEmployeeNumber;

10. CREATE VIEW salesPerOffice AS
SELECT SUM(quantityOrdered*priceEach) AS totalSales, officeCode
FROM orderdetails d
RIGHT JOIN orders o ON o.orderNumber = d.orderNumber
JOIN customers c ON c.customerNumber = o.customerNumber
RIGHT JOIN employees e ON e.employeeNumber = c.salesRepEmployeeNumber
GROUP BY officeCode;
