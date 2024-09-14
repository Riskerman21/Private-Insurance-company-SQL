ALTER TABLE Vehicle
ADD CONSTRAINT chk_EstYearlyKm
CHECK (EstYearlyKm >= 5000);
