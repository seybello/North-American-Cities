---creating a table
CREATE TABLE North_american_cities(
City CHAR(30) NOT NULL,
Country CHAR(30) NOT NULL,
Population INT NOT NULL,
Latitude DEC(30, 6) NOT NULL,
Longitude DEC(30, 6) NOT NULL);
SELECT * FROM North_american_cities;
---putting values into the table
INSERT INTO North_american_cities(City, Country, Population, Latitude, Longitude)
VALUES
('Guadalajara', 'Mexico', 1500800, 20.659699, -103.349609),
('Toronto', 'Canada' , 2795060, 43.653226, -79.383184),
('Guadalajara', 'Mexico', 1500800, 20.659699, -103.349609),
('Toronto', 'Canada', 2795060, 43.653226, -79.383184),
('Houston', 'United States', 2195914, 29.760427, -95.369803),
('New York', 'United States', 8405837, 40.712784, -74.005941),
('Philadelphia', 'United States', 1553165, 39.952584, -75.165222),
('Havana', 'Cuba', 2106146, 23.05407, -82.345189),
('Mexico City', 'Mexico', 8555500, 19.432608, -99.133208),
('Phoenix', 'United States', 1513367, 33.448377, -112.074037),
('Los Angeles', 'United States', 3884307, 34.052234, -118.243685),
('Ecatepec de Morelos', 'Mexico', 1742000, 19.601841, -99.050674),
('Montreal', 'Canada', 1717767, 45.501689, -73.567256),
('Chicago', 'United States', 2718782, 41.878114, -87.629798);
---list all the canadian cities and their populations
SELECT City, Population FROM North_american_cities
WHERE Country = 'Canada';
---order all the cities in the united states by their latitude from north to southh
---using the order by desc function becauses the north has the highest latitude
SELECT City FROM North_american_cities
WHERE Country = 'United states'
ORDER BY Latitude DESC;
---list all the cities west of chicago, ordered from west to east
SELECT City FROM North_american_cities
WHERE Longitude < -87.629798
ORDER BY Longitude DESC;
---list two largest cities from mexico(by population)
SELECT City FROM North_american_cities
WHERE Country = 'Mexico'
AND Population > 1500800;
---list the third and fourth largest cities (by population) in the United States and their population
---using 'offset' to remove a certain number of roles and ;'fetch next' to show the rows that we need
SELECT City, Population FROM North_american_cities
WHERE Country = 'United States'
ORDER BY POPULATION
OFFSET 2 ROWS FETCH NEXT 2 ROWS ONLY;