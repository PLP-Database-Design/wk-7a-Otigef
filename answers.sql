 --  Question 1
SELECT 
    OrderID,
    CustomerName,
    TRIM(value) AS Product
FROM ProductDetail
CROSS APPLY STRING_SPLIT(Products, ',');


--  Question 2
-- Create Orders table
SELECT DISTINCT OrderID, CustomerName
INTO Orders
FROM OrderDetails;

-- Create OrderProducts table
SELECT OrderID, Product, Quantity
INTO OrderProducts
FROM OrderDetails;