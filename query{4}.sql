SELECT OrderID, SUM(orderdetails.Quantity * ( orderdetails.UnitPrice ) * ( 1 - orderdetails.Discount /100 )) AS OrderTotal FROM orderdetails
GROUP BY OrderID