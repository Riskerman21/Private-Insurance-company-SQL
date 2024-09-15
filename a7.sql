SELECT p.CustomerID
FROM Policy p
JOIN Vehicle v ON p.VehicleID = v.VehicleID
JOIN VehicleCodeMapping vm ON v.VehicleCode = vm.VehicleCode
WHERE vm.Make = 'Tesla'
GROUP BY p.CustomerID
HAVING COUNT(DISTINCT vm.VehicleCode) = (
    SELECT COUNT(DISTINCT VehicleCode)
    FROM VehicleCodeMapping
    WHERE Make = 'Tesla'
);
