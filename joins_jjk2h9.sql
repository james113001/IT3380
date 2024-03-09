2A
1. SELECT c.customerName, c.customerNumber, e.employeeNumber, e.firstName, e.lastName
FROM customers c
LEFT JOIN employees e ON c.salesRepEmployeeNumber = e.employeeNumber;

2. SELECT e.employeeNumber, e.firstName, e.lastName, o.officeCode, o.city, o.phone
FROM employees e
LEFT JOIN offices o ON e.officeCode = o.officeCode;

3. SELECT c.customerName, c.customerNumber, o.orderNumber, o.orderDate, p.productName, d.quantityOrdered, d.priceEach
FROM customers c
RIGHT JOIN orders o ON c.customerNumber = o.customerNumber
INNER JOIN orderdetails d ON o.orderNumber = d.orderNumber
INNER JOIN products p ON d.productCode = p.productCode;

4. SELECT c.customerName, c.customerNumber, p.paymentDate, p.checkNumber, p.amount
FROM customers c
RIGHT JOIN payments p ON c.customerNumber = p.customerNumber;

5. SELECT l.productLine, p.productDescription, p.productName
FROM products p
JOIN productlines l ON p.productLine = l.productLine;

2B
1. SELECT c.customerName, o.orderNumber, o.orderDate
FROM customers c
INNER JOIN orders o ON c.customerNumber = o.customerNumber;

2. SELECT o.orderNumber, d.quantityOrdered * d.priceEach AS orderTotal
FROM orders o
LEFT JOIN orderdetails d ON o.orderNumber = d.orderNumber;

3. SELECT e.firstName, e.lastName, o.addressLine1, o.state, o.country
FROM employees e
LEFT JOIN offices o ON e.officeCode = o.officeCode;

4. SELECT c.customerNumber, p.paymentDate, p.checkNumber, p.amount
FROM customers c
LEFT JOIN payments p ON c.customerNumber = p.customerNumber;

5. SELECT e.firstName, e.lastName, c.customerName, SUM(p.amount) as totalSales
FROM employees e
LEFT JOIN customers c ON e.employeeNumber = c.salesRepEmployeeNumber
JOIN payments p ON c.customerNumber = p.customerNumber
GROUP BY c.customerNumber
ORDER BY e.firstName;