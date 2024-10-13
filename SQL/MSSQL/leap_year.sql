CREATE TABLE Years (
    year INT
);

INSERT INTO Years (year) VALUES 
(1804), (1820), (1844), (1852), (1940),
(1984), (2000), (2008), (2020), (2024), (2252),
(1900), (2023), (2024);

SELECT 
    year,
    CASE
        WHEN (year % 4 = 0 AND (year % 100 != 0 OR year % 400 = 0)) THEN 'Yes!'
        ELSE 'No.'
    END AS is_leap_year
FROM Years;
