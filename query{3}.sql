SELECT orders.ShipName, orders.ShipAddress, orders.ShipCity, orders.ShipRegion, orders.ShipPostalCode, orders.ShipCountry, customers.CustomerID, customers.CompanyName, customers.Address, customers.City, customers.Region, customers.PostalCode, customers.Country, CONCAT(employees.FirstName, " ", employees.LastName) AS SalesPerson, orders.OrderID, orders.OrderDate, orders.RequiredDate, orders.ShippedDate, shippers.CompanyName, products.ProductID, products.ProductName, orderdetails.UnitPrice, orderdetails.Quantity, orderdetails.Discount, (orderdetails.Quantity * ( orderdetails.UnitPrice ) * ( 1 - orderdetails.Discount /100 )) AS Total, orders.Freight 
FROM orders
INNER JOIN customers ON orders.CustomerId = customers.CustomerId 
INNER JOIN employees ON orders.EmployeeId = employees.EmployeeId 
INNER JOIN shippers ON orders.ShipVia = shippers.ShipperId 
INNER JOIN orderdetails ON orders.OrderId = orderdetails.OrderId 
INNER JOIN products ON orderdetails.ProductId = products.ProductId 
ORDER BY CustomerID, OrderDate, ProductID;