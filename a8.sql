CREATE VIEW AvgYearlyKmByMake AS
SELECT VM.Make, AVG(V.EstYearlyKm) AS AvgDistance
FROM Vehicle V
JOIN VehicleCodeMapping VM ON V.VehicleCode = VM.VehicleCode
GROUP BY VM.Make;

CREATE VIEW MaxAvgDistance AS
SELECT MAX(AvgDistance) AS MaxDistance
FROM AvgYearlyKmByMake;

SELECT Make
FROM AvgYearlyKmByMake
WHERE AvgDistance = (SELECT MaxDistance FROM MaxAvgDistance);
