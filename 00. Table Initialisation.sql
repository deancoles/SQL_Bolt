-- Create Table
CREATE TABLE movies (
	id INTEGER,
	title TEXT,
	director TEXT,
	year INTEGER,
	length_minutes INTEGER,
	PRIMARY KEY (id)
);

-- Insert movies Data
INSERT INTO movies 
("title", "director", "year", "length_minutes")
VALUES 
('Toy Story', 'John Lasseter', '1995', '81'),
('A Bug''s Life', 'John Lasseter', '1998', '95'),
('Toy Story 2', 'John Lasseter', '1999', '93'),
('Monsters, Inc', 'Pete Docter', '2001', '92'),
('Finding Nemo', 'Andrew Stanton', '2003', '107'),
('The Incredibles', 'Brad Bird', '2004', '116'),
('Cars', 'John Lasseter', '2006', '117'),
('Ratatouille', 'Brad Bird', '2007', '115'),
('WALL-E', 'Andrew Stanton', '2008', '104'),
('Up', 'Pete Docter', '2009', '101'),
('Toy Story 3', 'Lee Unkrich', '2010', '103'),
('Cars 2', 'John Lasseter', '2011', '120'),
('Brave', 'Brenda Chapman', '2012', '102'),
('Monsters University', 'Dan Scanlon', '2013', '110');

-- Correct Typo
UPDATE movies
SET title = 'Monsters, Inc.'
WHERE id = 4;

-- Create cities table 
CREATE TABLE cities (
	id INTEGER,
	city TEXT,
	country TEXT,
	population INTEGER,
	latitude REAL,
	longitude REAL,
	PRIMARY KEY (id)
);

-- Insert cities data 
INSERT INTO cities 
(city, country, population, latitude, longitude)
VALUES
('Guadalajara', 'Mexico', '1500800', '20.659699', '-103.349609'),
('Toronto', 'Canada', '2795060', '43.653226', '-79.383183'),
('Houston', 'United States', '2195914', '29.760427', '-95.369803'),
('New York', 'United States', '8405837', '40.712784', '-74.005941'),
('Philadelphia', 'United States', '1553165', '39.952584', '-75.165222'),
('Havana', 'Cuba', '2106146', '23.05407', '-82.345189'),
('Mexico City', 'Mexico', '8555500', '19.432608', '-99.133208'),
('Phoenix', 'United States', '1513367', '33.448377', '-112.074037'),
('Los Angeles', 'United States', '3884307', '34.052234', '-118.243685'),
('Ecatepec de Morelos', 'Mexico', '1742000', '19.601841', '-99.050674'),	
('Montreal', 'Canada', '1717767', '45.501689', '-73.567256'),
('Chicago', 'United States', '2718782', '41.878114', '-87.629798');

-- Create boxoffice table
CREATE TABLE boxoffice (
	id INTEGER,
	movie_id INTEGER,
	rating REAL,
	domestic_sales INTEGER,
	international_sales INTEGER,
	PRIMARY KEY (id),
	FOREIGN KEY (movie_id) REFERENCES movies (id)
);

-- Insert boxoffice data 
INSERT INTO boxoffice
(movie_id, rating, domestic_sales, international_sales)
VALUES
('5', '8.2', '380843261', '555900000'),
('14', '7.4', '268492764', '475066843'),
('8', '8', '206445654', '417277164'),
('12', '6.4', '191452396', '368400000'),
('3', '7.9', '245852179', '239163000'),
('6', '8', '261441092', '370001000'),
('9', '8.5', '223808164', '297503696'),
('11', '8.4', '415004880', '648167031'),
('1', '8.3', '191796233', '170162503'),
('7', '7.2', '244082982', '217900167'),
('10', '8.3', '293004164', '438338580'),
('4', '8.1', '289916256', '272900000'),
('2', '7.2', '162798565', '200600000'),
('13','7.2', '237283207', '301700000');

-- Insert buildings TABLE
CREATE TABLE buildings (
	id INTEGER,
	name TEXT,
	capacity TEXT,
	PRIMARY KEY (id)
);

-- Insert buildings data 
INSERT INTO buildings
(name, capacity)
VALUES
('1e', '24'),
('1w', '32'),
('2e', '16'),
('2w', '20');

-- Insert employees table 
CREATE TABLE employees (
	id INTEGER,
	role TEXT,
	name TEXT,
	building TEXT,
	years_employed INTEGER,
	PRIMARY KEY (id)
);

-- Insert employees data 
INSERT INTO employees
(role, name, building, years_employed)
VALUES
('Engineer', 'Becky A.', '1e', '4'),
('Engineer', 'Dan B.', '1e', '2'),
('Engineer', 'Sharon F.', '1e', '6'),
('Engineer', 'Dan M.', '1e', '4'),
('Engineer', 'Malcolm S.', '1e', '1'),
('Artist', 'Tylar S.', '2w', '2'),
('Artist', 'Sherman D.', '2w', '8'),
('Artist', 'Jakob J.', '2w', '6'),
('Artist', 'Lillia A.', '2w', '7'),
('Artist', 'Brandon J.', '2w', '7'),
('Manager', 'Scott K.', '1e', '9'),
('Manager', 'Shirlee M.', '1e', '3'),
('Manager', 'Daria O.', '2w', '6'); 

-- Insert NULL employee data for building 
INSERT INTO employees
(role, name, years_employed)
VALUES
('Engineer', 'Yancy I.', '0'),
('Artist', 'Oliver P.', '0');