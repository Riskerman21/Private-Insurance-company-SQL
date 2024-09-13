UPDATE Vehicle V
JOIN Policy P ON V.VehicleID = P.VehicleID
JOIN Customer C ON P.CustomerID = C.CustomerID
SET V.VehiclePurpose = 'Business'
WHERE C.Name = 'James Moran'
AND V.VehiclePurpose = 'Private';
