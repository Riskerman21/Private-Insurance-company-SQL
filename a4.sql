SELECT P.PolicyID
FROM Policy P
JOIN Vehicle V ON V.VehicleID = P.VehicleID
JOIN VehicleCodeMapping M ON V.VehicleCode = M.VehicleCode
WHERE P.PolicyPurchaseDate >= '2021-05-30'
AND M.Make LIKE "T%" OR M.Model LIKE "T%";
