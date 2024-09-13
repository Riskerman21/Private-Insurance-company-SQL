WITH TotalPremiums AS (
    SELECT CustomerID, SUM(Premium) AS TotalPolicy
    FROM Policy
    GROUP BY CustomerID
),
MaxPremium AS (
    SELECT MAX(TotalPolicy) AS MaxTotalPolicy
    FROM TotalPremiums
)
SELECT TP.CustomerID
FROM TotalPremiums TP
JOIN MaxPremium MP
ON TP.TotalPolicy = MP.MaxTotalPolicy;
