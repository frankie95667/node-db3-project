-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT productname, categoryname FROM product as p
JOIN category as c ON p.categoryid = c.id;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT o.id, sh.companyname FROM [order] as o
JOIN shipper as sh ON sh.id = o.shipvia
WHERE o.orderdate < '2012-08-09';

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT p.ProductName, od.Quantity FROM [order] as o
JOIN [orderdetail] as od ON od.OrderId = o.id
JOIN product as p ON p.id = od.ProductId
WHERE o.id = '10251'
ORDER BY p.ProductName;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT o.id as 'Order ID', c.CompanyName as 'Company Name', e.LastName as 'Employee Last Name' FROM [order] as o
JOIN customer as c ON c.id = o.CustomerId
JOIN employee as e ON e.Id = o.EmployeeId;