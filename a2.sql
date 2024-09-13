SELECT VehiclePurpose, Count(*) as NumberUsed
FROM Vehicle 
GROUP BY VehiclePurpose
ORDER BY NumberUsed DESC;
