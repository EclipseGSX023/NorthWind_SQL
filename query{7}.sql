SELECT CategoryName, ProductName, QuantityPerUnit, UnitsInStock, Discontinued FROM products
INNER JOIN categories ON products.CategoryID=categories.CategoryID
WHERE Discontinued = 0
ORDER BY CategoryName, ProductName;