-- Find the name and role of all employees who have not been assigned to a building 
SELECT employee_name, employee_role
FROM employee
WHERE employee_building_name IS NULL;

-- Find the names of the buildings that hold no employees
SELECT DISTINCT building_name
FROM building
LEFT JOIN employee ON building.building_name = employee.employee_building_name
WHERE employee_role is NULL;