-- NOTE:
-- This script is a simulated example created for demonstration purposes only.

-- Sales analysis by customer

SELECT 
    c.CustomerID,
    CONCAT(c.FirstName, ' ', c.LastName) AS CustomerName,
    COUNT(o.OrderID) AS NumberOfOrders,
    SUM(o.TotalAmount) AS TotalRevenue
FROM Customers c
INNER JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID, c.FirstName, c.LastName
ORDER BY TotalRevenue DESC;
