CREATE VIEW CustomerTotalPremium AS
SELECT CustomerID, SUM(Premium) AS TotalPremium
FROM Policy
GROUP BY CustomerID;

SELECT CustomerID
FROM CustomerTotalPremium
WHERE TotalPremium = (
    SELECT MAX(TotalPremium)
    FROM CustomerTotalPremium
);
