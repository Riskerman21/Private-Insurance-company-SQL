SELECT CustomerID
FROM Policy
GROUP BY CustomerID
HAVING SUM(Premium) = (
    SELECT MAX(TotalPremium)
    FROM (
        SELECT SUM(Premium) AS TotalPremium
        FROM Policy
        GROUP BY CustomerID
    ) AS Subquery
);