SELECT C.CustomerID
FROM Customer C
JOIN Policy P ON C.CustomerID = P.CustomerID
JOIN Vehicle V ON P.VehicleID = V.VehicleID
WHERE V.VehiclePurpose = 'Business'
GROUP BY C.CustomerID
HAVING COUNT(P.VehicleID) >= 3

INTERSECT

SELECT C.CustomerID
FROM Customer C
WHERE C.Email LIKE '%uqconnect.edu.au%' 
   OR C.Email LIKE '%uq.edu.au%';