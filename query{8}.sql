SELECT CategoryName, (ProductName) AS CheapestProduct, MIN(UnitPrice) AS MinCategoryPrice FROM products
INNER JOIN categories ON products.CategoryID=categories.CategoryID
GROUP BY CategoryName;