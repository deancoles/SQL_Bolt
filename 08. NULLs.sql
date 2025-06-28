-- Find the name and role of all employees who have not been assigned to a building 
SELECT name, role
FROM employees
WHERE building IS NULL;

-- Find the names of the buildings that hold no employees
SELECT DISTINCT buildings.name
FROM buildings
LEFT JOIN employees ON buildings.name = employees.building
WHERE role is NULL;