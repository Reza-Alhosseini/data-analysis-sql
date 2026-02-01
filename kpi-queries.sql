-- NOTE:
-- Demonstration-only KPI queries for reporting purposes

-- Monthly revenue KPI
SELECT 
    FORMAT(OrderDate, 'yyyy-MM') AS OrderMonth,
    SUM(TotalAmount) AS MonthlyRevenue
FROM Orders
GROUP BY FORMAT(OrderDate, 'yyyy-MM')
ORDER BY OrderMonth;

-- Average order value KPI
SELECT 
    AVG(TotalAmount) AS AverageOrderValue
FROM Orders;
