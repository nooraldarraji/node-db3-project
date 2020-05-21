-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
    SELECT p.ProductName, c.CategoryName
    FROM [Category] AS c
    JOIN [Product] AS p
    ON c.id = p.CategoryId
-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
    SELECT o.Id, s.CompanyName
    FROM [Order] AS o
    JOIN [Shipper] AS s
    ON o.ShipVia = s.Id
    WHERE o.OrderDate < '2012-08-09'
-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
    SELECT p.ProductName, o.Quantity
    FROM [OrderDetail] AS o
    JOIN [Product] AS p
    ON o.ProductID = p.Id
    WHERE o.OrderId = '10251'
-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
    SELECT o.ID, c.CompanyName, e.LastName
    FROM [Employee] as e, [Customer] as c
    JOIN [Order] as o
    ON o.EmployeeId = e.Id and o.CustomerId = c.Id