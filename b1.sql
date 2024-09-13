DELETE  P
FROM Policy P
JOIN Customer C ON  P.CustomerID = C.CustomerID
WHERE C.Name = 'Elena Ivanova'
AND  P.PolicyPurchaseDate < '2023-12-30';
