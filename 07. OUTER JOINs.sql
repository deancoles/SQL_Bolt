-- Find the list of all buildings that have employees
SELECT DISTINCT building FROM employees;

-- Find the list of all buildings and their capacity
SELECT name, capacity FROM buildings;

-- List all buildings and the distinct employee roles in each building (including empty buildings)
SELECT DISTINCT buildings.name, role
FROM buildings
LEFT JOIN employees
ON buildings.name = employees.building;