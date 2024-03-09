1. db.orders.aggregate([
	{$unwind : "$orderDetails"},
	{$group: {_id: "$orderDetails.productName", "Number of Orders":{$sum: 1}}},
	{$sort: {"Number of Orders":-1}}
])
2. db.orders.aggregate([
	{$unwind : "$orderDetails"},
	{$group: {_id: "$orderDetails.productName", "Quantity Ordered":{$sum: "$orderDetails.quantityOrdered"}}},
	{$sort: {"Quantity Ordered":-1}}
])
3. db.orders.aggregate([
	{$unwind : "$orderDetails"},
	{$group: {_id: "$orderDetails.productName", "Total Value":{$sum: {$multiply: ["$orderDetails.quantityOrdered", "$orderDetails.priceEach"]}}}},
	{$sort: {"Total Value":-1}},
	{$limit: 25}
])
4. db.orders.aggregate([
	{$unwind : "$orderDetails"},
	{$group: {_id: "$customerName", "Orders Placed":{$sum: 1}}},
	{$sort: {"Orders Placed":-1}},
	{$limit: 25}
])
5. db.customers.aggregate([
	{$unwind : "$payments"},
	{$group: {_id: {$year: "$payments.paymentDate"}, "Total Payments":{$sum: "$payments.amount"}}},
	{$sort: {_id :-1}}
])
6. db.customers.aggregate([	
	{$unwind : "$payments"},
	{$addFields:{"year":{$year: "$payments.paymentDate"}}},	
	{$match:{"year": 2004}},	
	{$group: {_id: {$month: "$payments.paymentDate"}, "Total Payments":{$sum: "$payments.amount"}}},
	{$sort: {_id :1}}
]).pretty() 
7. db.customers.aggregate([	
	{$unwind : "$payments"},
	{$addFields:{"year":{$year: "$payments.paymentDate"}, "month":{$month: "$payments.paymentDate"}}},	
	{$match:{"year": 2004, "month": 12}},	
	{$group: {_id: {$dayOfMonth: "$payments.paymentDate"}, "Total Payments":{$sum: "$payments.amount"}}},
	{$sort: {_id :1}}
]).pretty() 
8. db.customers.aggregate([	
	{$unwind : "$payments"},	
	{$group: {_id: "$customerName", "Total Payments":{$sum: "$payments.amount"}}},
	{$sort: {_id :1}}
]).pretty() 
9. db.customers.aggregate([	
	{$unwind : "$payments"},	
	{$group: {_id: "$state", "Number of Customers in State":{$sum: 1}}},
	{$sort: {"Number of Customers in State":1}}
]).pretty() 
10. db.employees.aggregate([	
	{$unwind : "$office"},	
	{$group: {_id: "$reportsTo", "Number of Reports":{$sum: 1}}},
	{$sort: {"Number of Reports":-1}}
]).pretty() 
11. db.products.aggregate([	
	{$unwind : "$productLine"},	
	{$group: {_id:null, "Number of Lines":{$sum:1}}}
]).pretty() 
12. db.products.aggregate([	
	{$unwind : "$productLine"},
	{$group: {_id:"$productName", quantityInStock: {$sum: "$quantityInStock"}, buyPrice: {$sum:"$buyPrice"}, "Dollar Value":{$sum: {$multiply: ["$quantityInStock", "$buyPrice"]}}}},
	{$sort: {"Dollar Value":-1}},
	{$project: {_id:1, quantityInStock: 1, buyPrice: 1, "Dollar Value":1}}
]).pretty() 