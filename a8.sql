SELECT VM.Make
FROM Vehicle V
JOIN VehicleCodeMapping VM ON V.VehicleCode = VM.VehicleCode
GROUP BY VM.Make
HAVING AVG(V.EstYearlyKm) = (
    SELECT MAX(AvgDistance)
    FROM (
        SELECT AVG(V.EstYearlyKm) AS AvgDistance
        FROM Vehicle V
        JOIN VehicleCodeMapping VM ON V.VehicleCode = VM.VehicleCode
        GROUP BY VM.Make
    )
);
