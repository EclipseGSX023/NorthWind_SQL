SELECT OrderID, orderdetails.ProductID, ProductName, orderdetails.UnitPrice, Quantity, Discount, (orderdetails.Quantity * ( orderdetails.UnitPrice ) * ( 1 - orderdetails.Discount /100 )) AS Total FROM orderdetails
INNER JOIN products ON orderdetails.UnitPrice=products.UnitPrice
ORDER BY OrderID, orderdetails.ProductID;