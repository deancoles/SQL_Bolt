-- Find the list of all buildings that have employees
SELECT DISTINCT employee_building_name FROM employee WHERE employee_building_name NOT NULL;

-- Find the list of all buildings and their capacity
SELECT building_name, building_capacity FROM building;

-- List all buildings and the distinct employee roles in each building (including empty buildings)
SELECT DISTINCT building_name, employee_role
FROM building
LEFT JOIN employee
ON building.building_name = employee.employee_building_name;