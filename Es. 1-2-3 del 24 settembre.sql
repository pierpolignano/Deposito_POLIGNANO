-- #######################################################
-- ##################### ESERCIZIO 1 #####################
-- #######################################################

-- Sto provando il WHERE con =
SELECT *
FROM world.country
WHERE IndepYear ='1960';

 -- Sto provando il WHERE con " > "
SELECT *
FROM world.country
WHERE SurfaceArea > 9000000;

 -- Sto provando il WHERE con " < "
SELECT *
FROM world.country
WHERE Population < 5000
ORDER BY Population DESC;

 -- Sto provando il WHERE con " >= "
SELECT *
FROM world.country
WHERE GNP >= 1000000
ORDER BY GNP ASC;

 -- Sto provando il WHERE con " <= "
SELECT *
FROM world.country
WHERE LifeExpectancy <= 40;

 -- Sto provando il WHERE con " != "
SELECT * 
FROM world.country
WHERE IndepYear 
BETWEEN 1920 AND 1970;

-- Esercizio con (altro) BETWEEN
SELECT *
FROM world.country
WHERE SurfaceArea -- sarebbe il PIL
BETWEEN 500000 AND 650000;

-- Esercizio con LIKE
SELECT *
FROM world.city
WHERE Name LIKE "F%"; -- perché "Name" è in grassetto?

-- Esercizio con IN
SELECT *
FROM world.country
WHERE GovernmentForm IN ('Republic', 'Constitutional Monarchy')
AND IndepYear > 1940
AND LifeExpectancy <= 50
ORDER BY LifeExpectancy ASC;

-- Esercizio con NULL
SELECT *
FROM world.country
WHERE GNPOld IS NULL;

-- Esercizio con NOT NULL
SELECT *
FROM world.country
WHERE LifeExpectancy IS NOT NULL;

-- Io di solito faccio un mix
SELECT *
FROM world.country
WHERE IndepYear IS NOT NULL
AND NOT LifeExpectancy <= 40
ORDER BY LifeExpectancy ASC;

-- Uso il GROUP BY
SELECT *
FROM world.city
WHERE Name LIKE "A%";
#GROUP BY Country;

SELECT *
FROM world.country
WHERE IndepYear = 1970
GROUP BY Continent;

-- #######################################################
-- ##################### ESERCIZIO 2 #####################
-- #######################################################

-- Esercizio 1
SELECT DISTINCT Region
FROM world.country
WHERE Continent  ='Europe';

-- Esercizio 2
SELECT Name, Population
FROM world.city
WHERE CountryCode = 'USA'
AND Population > 1000000
ORDER BY Population DESC;

 -- Esercizio 3
SELECT
COUNT(Region AND Population)
FROM world.country
GROUP BY Continent
ORDER BY Population DESC;

-- #######################################################
-- ##################### ESERCIZIO 3 #####################
-- #######################################################

SELECT DISTINCT CountryCode
FROM world.city
WHERE Population > 500000;
-- NIENTE NON CI RIESCO MI SONO BLOCCATO, non so cosa cazzo fare