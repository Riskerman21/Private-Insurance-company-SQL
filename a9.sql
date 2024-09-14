SELECT C.CustomerID
FROM Customer C
JOIN (
    SELECT P.CustomerID
    FROM Policy P
    JOIN Vehicle V ON P.VehicleID = V.VehicleID
    WHERE V.VehiclePurpose = 'Business'
    GROUP BY P.CustomerID
    HAVING COUNT(P.VehicleID) >= 3
) BC ON C.CustomerID = BC.CustomerID
WHERE C.Email LIKE '%uqconnect.edu.au%' 
   OR C.Email LIKE '%uq.edu.au%';
