WITH MAKES AS (
    SELECT VM.Make, AVG(V.EstYearlyKm) AS AvgDistance
    FROM Vehicle V
    JOIN VehicleCodeMapping VM ON V.VehicleCode = VM.VehicleCode
    GROUP BY VM.Make
),
HIGHESTAVG AS (
    SELECT MAX(AvgDistance) AS MaxAvgDistance
    FROM MAKES
)
SELECT M.Make
FROM MAKES M
JOIN HIGHESTAVG H
ON M.AvgDistance = H.MaxAvgDistance;
