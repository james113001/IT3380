Select queries
1. SELECT name, SUM(payments) AS "Total Payments"
FROM customers c, salesAgents s
WHERE s.agentID = c.agentID
GROUP BY s.agentID;

2. SELECT s.country, SUM(payments) AS "Total Payments"
FROM customers c, salesAgents s
WHERE s.agentID = c.agentID
GROUP BY s.country;

3. SELECT orderID, custName, name AS "Agent Name", commission * payments AS Commission
FROM customers c, salesAgents s, orders o
WHERE s.agentID = c.agentID AND o.custID = c.custID
GROUP BY orderID;

Update Queries
1. UPDATE customers SET city = 'New York' WHERE city = 'NY';
SELECT * 
FROM customers
WHERE city = "New York";
2. UPDATE salesAgents SET commission = commission * 1.2 WHERE country = "CAN";
SELECT orderID, custName, name AS "Agent Name", commission * payments AS Commission
FROM customers c, salesAgents s, orders o
WHERE s.agentID = c.agentID AND o.custID = c.custID AND s.country = "CAN"
GROUP BY orderID;

3. UPDATE customers SET level = 1 WHERE level = 0;
SELECT custName, custID
FROM customers
WHERE level = 1;

Delete Queries
1. DELETE FROM salesAgents WHERE state = "NH";
SELECT * FROM salesAgents;

2. DELETE FROM customers WHERE custName LIKE 'W%';
SELECT * FROM customers;
