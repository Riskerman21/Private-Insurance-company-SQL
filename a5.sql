SELECT VehicleID
FROM Vehicle V
WHERE (
    SELECT Year 
    FROM VehicleCodeMapping M 
    WHERE M.VehicleCode = V.VehicleCode
	) = '2019'; 
