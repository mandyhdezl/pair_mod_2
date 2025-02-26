SELECT EmployeeID, LastName, FirstName
	FROM employees;
    
SELECT *
	FROM products
    WHERE UnitPrice
    BETWEEN 0 AND 5;
    
SELECT *
	FROM products
    WHERE unitprice IS NULL;
    
SELECT *
	FROM products
    WHERE unitprice < 15 AND productid < 20;
    
SELECT *
	FROM products
    WHERE unitprice > 15 AND productid >  20;
    
SELECT *
	FROM products
	WHERE NOT (unitprice > 15 AND productid > 20); -- intentamos resolverlo pero no vale --
    
SElECT DISTINCT shipcountry
	FROM orders;
	



