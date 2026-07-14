-- PLEASE READ THIS BEFORE RUNNING THE EXERCISE

-- ⚠️ IMPORTANT: This SQL file may crash due to two common issues: comments and missing semicolons.

-- ✅ Suggestions:
-- 1) Always end each SQL query with a semicolon `;`
-- 2) Ensure comments are well-formed:
--    - Use `--` for single-line comments only
--    - Avoid inline comments after queries
--    - Do not use `/* */` multi-line comments, as they may break execution

-- -----------------------------------------------
-- queries.sql
-- Complete each mission by writing your SQL query
-- directly below the corresponding instruction
-- -----------------------------------------------

SELECT * FROM regions LIMIT 2;
SELECT * FROM species LIMIT 2;
SELECT * FROM climate LIMIT 2;
SELECT * FROM observations LIMIT 2;


-- MISSION 1
-- Your query here;
SELECT * FROM observations LIMIT 10;
SELECT DISTINCT region_id FROM observations;
SELECT DISTINCT COUNT(species_id) FROM observations;
SELECT COUNT(*) FROM observations WHERE region_id = 2;
SELECT COUNT(*) FROM observations WHERE observation_date = '1998-08-08';

-- MISSION 2
-- Your query here; 
SELECT region_id, COUNT(*) 
FROM observations 
GROUP BY region_id 
ORDER BY COUNT(*) DESC 
LIMIT 1;

-- #6.2
SELECT region_id, COUNT(*) 
FROM observations 
GROUP BY region_id 
HAVING COUNT(*) = (
    SELECT MAX(cuenta) FROM (
        SELECT COUNT(*) AS cuenta
        FROM observations
        GROUP BY region_id
    ) AS subquery
);

SELECT species_id, COUNT(*)
FROM observations
GROUP BY species_id
ORDER BY COUNT(*) DESC
LIMIT 5;

SELECT species_id, COUNT(*)
FROM observations
GROUP BY species_id
HAVING COUNT(*) > 4;

SELECT observer, COUNT(*)
FROM observations
GROUP BY observer
ORDER BY COUNT(*) DESC;

-- MISSION 3
-- Your query here;
SELECT * 
FROM observations AS obs
JOIN regions AS reg ON obs.region_id = reg.id;

SELECT *
FROM observations AS obs
JOIN species AS spe ON obs.species_id = spe.id;

SELECT obs.region_id, spe.scientific_name, COUNT(*)
FROM observationS AS obs
JOIN species AS spe ON obs.species_id = spe.id
GROUP BY obs.region_id, spe.scientific_name
ORDER BY COUNT(*) DESC;

-- MISSION 4
-- Your query here;



-- MISSION 5
-- Your query here;



-- MISSION 6
-- Your query here;


-- MISSION 7
-- Your query here;


-- MISSION 8
-- Your query here;
