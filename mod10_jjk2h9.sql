Subqueries
1. SELECT c.customerNumber, customerName, paymentDate, amount
	FROM customers c, payments p
	WHERE c.customerNumber = p.customerNumber AND amount> (SELECT AVG(amount) FROM payments)
	ORDER BY c.customerNumber ASC;
2. SELECT employeeNumber, firstName, lastName 
	FROM employees
	WHERE employeeNumber IN (SELECT reportsTo FROM employees);
3. SELECT city, o.officeCode, count(e.officeCode)
	FROM offices o, employees e
	WHERE o.officeCode = e.officeCode
	GROUP BY e.officeCode
	HAVING count(e.officeCode) = (SELECT count(e.officeCode) FROM employees e, offices o WHERE o.officeCode=e.officeCode AND city = "London"); 
4. SELECT productName, SUM(quantityOrdered)
	FROM products p, orderdetails o
	WHERE p.productCode = o.productCode
	GROUP BY productName
	HAVING SUM(quantityOrdered) > (SELECT SUM(quantityOrdered) FROM products p, orderdetails o WHERE p.productCode = o.productCode AND productName = “1940s Ford truck”);
5. SELECT productName, SUM(quantityOrdered*priceEach) AS "Total Value"
	FROM orderdetails o, products p
	WHERE p.productCode = o.productCode
	GROUP BY productName
	HAVING "Total Value" < (SELECT SUM(quantityOrdered*priceEach)
	FROM orderdetails o, products p
	WHERE p.productCode = o.productCode AND productName = “1957 Corvette Convertible”);
6. SELECT o.orderNumber, o.customerNumber, SUM(quantityOrdered*priceEach) AS OrderTotal
	FROM orders o, orderdetails d
	WHERE o.orderNumber = d.orderNumber
	GROUP BY o.orderNumber 
	HAVING OrderTotal > (SELECT SUM(quantityOrdered*priceEach)
	FROM orderdetails
	WHERE orderNumber = 10222);
Wildcards
1. SELECT customerName, SUM(amount) as "Total Payments"
	FROM payments p, customers c
	WHERE p.customerNumber = c.customerNumber AND customerName like '%ltd';
2. SELECT COUNT(employeeNumber)
	FROM employees
	WHERE extension like 'x___';
3. SELECT productCode, productName, productVendor, buyPrice
	FROM products
	WHERE productName like '%195%';
4. SELECT * FROM offices WHERE phone like '% 212 %';
5. SELECT firstName, lastName, employeeNumber, email
	FROM employees
	WHERE jobTitle like 'Sales Manager%';
6. SELECT productName, productCode, quantityInStock, buyPrice
	FROM products
	WHERE productName like '%Chevy%';