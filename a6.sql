SELECT CustomerID
FROM Policy
GROUP BY CustomerID
HAVING SUM(Premium) > ALL (
    SELECT SUM(Premium)
    FROM Policy
    GROUP BY CustomerID
);