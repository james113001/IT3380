1. db.zips.aggregate([
{$match: {pop:{$gt:90000}}},
{$group: {_id: "$state"}}
])
2. db.zips.aggregate([{$match: {state: "MN"}}, {$group: {_id: "$state", TotalPop:{$sum: "$pop"}}}])
3. db.zips.aggregate([{$match: {state: "MO"}}, {$group: {_id: "$city", TotalPop:{$sum: "$pop"}}}, {$sort:{TotalPop: -1}}]) 
4. db.zips.aggregate([{$match: {state: "MO"}}, {$group: {_id: "$city", TotalPop:{$sum: "$pop"}}}, {$sort:{TotalPop: -1}}, {$limit:10}]) 
5. db.zips.aggregate([{$match: {city: "NEW YORK"}}, {$group: {_id: "$city", TotalPop:{$sum: "$pop"}}}])
6. db.zips.aggregate([{$match: {state: "IL"}}, 
{$group: {_id: "$city", count:{$sum:1}}},
{$match: {count: {$gte:3}}},
{$sort: {count:-1}}
])
7. db.zips.aggregate([ {$group: {_id: "$state", count:{$sum:1}}},
{$sort: {count:1}},
{$limit:1}
])
8. db.zips.aggregate([{$group: {_id: "$city", TotalPop:{$sum: "$pop"}}}, {$sort:{TotalPop: -1}}, {$limit:1}])
9. db.zips.aggregate([{$group: {_id: "$city", TotalPop:{$sum: "$pop"}}}, {$sort:{TotalPop: 1}}, {$limit:1}])
10. db.zips.aggregate([{$group: {_id: "$city", TotalPop:{$sum: "$pop"}}}, {$sort:{TotalPop: -1}}, {$limit:20}])
11. db.stocks.aggregate([{$sort:{Price: -1}}, {$limit:10}, {$project: {_id: 0, Symbol:1, Name:1}}])
12. db.stocks.aggregate([{$group: {_id: "$Sector", TotalEarnings:{$sum: "$EBITDA"}}}])
13. db.stocks.aggregate([{$group: {_id: "$Sector", AvgEarnings:{$avg: "$EBITDA"}}}])
14. db.stocks.aggregate([{$match: {Sector: "Health Care"}}, {$sort:{EBITDA: -1}}, {$limit:5}, {$project: {_id:0, Name:1, Symbol:1}}])
15. db.stocks.aggregate([{$match: {Sector: "Information Technology", "Dividend Yield": {$gt:0}}}, {$project: {_id:0, Name:1}}])
16. db.stocks.aggregate([{$match: {Sector: "Health Care"}}, {$sort:{"Earnings/Share": -1}}, {$limit:10}, {$project: {_id:0, Name:1}}])
17. db.stocks.aggregate([{$match: {Sector: "Health Care"}}, {$group: {_id: "$Sector", TotalEarnings:{$sum: "$EBITDA"}}}])
18. db.stocks.aggregate([{$match: {Sector: "Industrials"}}, {$project: {_id:0, Name:1, Symbol:1, OutstandingShares:{$divide: ["$Market Cap", "$Price"]}}}, {$sort:{"OutstandingShares": 1}}])

