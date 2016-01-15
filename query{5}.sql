SELECT (orders.ShippedDate) AS YearOfIncome, categories.Categoryname, products.ProductName, (orderdetails.UnitPrice * orderdetails.Quantity) AS ProductSales FROM orderdetails
INNER JOIN products ON orderdetails.ProductID=products.ProductID
INNER JOIN categories ON products.CategoryID=categories.CategoryID
INNER JOIN orders ON orderdetails.OrderID=orders.OrderID
ORDER BY ProductName, YearOfIncome;