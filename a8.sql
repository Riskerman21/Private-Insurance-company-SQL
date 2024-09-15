SELECT M.Make
FROM (
    SELECT VM.Make, AVG(V.EstYearlyKm) AS AvgDistance
    FROM Vehicle V
    JOIN VehicleCodeMapping VM ON V.VehicleCode = VM.VehicleCode
    GROUP BY VM.Make
) AS M
WHERE M.AvgDistance = (
    SELECT MAX(AvgDistance)
    FROM (
        SELECT AVG(V.EstYearlyKm) AS AvgDistance
        FROM Vehicle V
        JOIN VehicleCodeMapping VM ON V.VehicleCode = VM.VehicleCode
        GROUP BY VM.Make
    ) AS Subquery
);
