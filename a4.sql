DELETE FROM Policy
WHERE CustomerID = (
    SELECT CustomerID
    FROM Customer
    WHERE Name = 'Elena Ivanova'
)
AND PolicyPurchaseDate < '2023-12-30';