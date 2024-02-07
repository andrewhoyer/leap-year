SELECT 
	IF(MOD(1900, 4) = 0, IF(MOD(1900, 100) = 0, IF(MOD(1900, 400) = 0, "YES", "NO"), "YES"), "NO") AS "1900",
    IF(MOD(2000, 4) = 0, IF(MOD(2000, 100) = 0, IF(MOD(2000, 400) = 0, "YES", "NO"), "YES"), "NO") AS "2000",
    IF(MOD(2023, 4) = 0, IF(MOD(2023, 100) = 0, IF(MOD(2023, 400) = 0, "YES", "NO"), "YES"), "NO") AS "2023",
    IF(MOD(2024, 4) = 0, IF(MOD(2024, 100) = 0, IF(MOD(2024, 400) = 0, "YES", "NO"), "YES"), "NO") AS "2024";