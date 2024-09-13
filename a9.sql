SELECT C.CustomerID
FROM Customer C
LEFT JOIN (
    SELECT P.CustomerID, COUNT(P.PolicyID) AS PolicyCount
    FROM Policy  P
    GROUP BY P.CustomerID
) PC ON C.CustomerID = PC.CustomerID
WHERE C.Email LIKE 'uqconnect.edu.au%' 
   OR C.Email LIKE 'uq.edu.au%' 
   OR COALESCE(PC.PolicyCount, 0) >= 3; 
