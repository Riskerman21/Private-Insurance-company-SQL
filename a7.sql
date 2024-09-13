SELECT INSURED.CustomerID
FROM (
    SELECT p.CustomerID, COUNT(DISTINCT vm.VehicleCode) AS InsuredTeslaModels
    FROM Policy p
    JOIN Vehicle v ON p.VehicleID = v.VehicleID
    JOIN VehicleCodeMapping vm ON v.VehicleCode = vm.VehicleCode
    WHERE vm.Make = 'Tesla'
    GROUP BY p.CustomerID
) INSURED
JOIN (
    SELECT COUNT(DISTINCT vm.VehicleCode) AS TotalTeslaModels
    FROM VehicleCodeMapping vm
    WHERE vm.Make = 'Tesla'
) AVAILABLE
ON INSURED.InsuredTeslaModels = AVAILABLE.TotalTeslaModels;
