/* Hacker Rank Question: Average Population of Each Continent

Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population) rounded down to the nearest integer.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
*/

--Concepts: Inner Joins


SELECT co.continent, FLOOR(AVG(cy.population)) 
FROM country co
INNER JOIN city cy
ON co.code = cy.countrycode
GROUP BY co.continent; 
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

/*
Hacker Rank Question: Type Of Triangle

Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. Output one of the following statements for each record in the table:

Equilateral: It's a triangle with  sides of equal length.
Isosceles: It's a triangle with  sides of equal length.
Scalene: It's a triangle with  sides of differing lengths.
Not A Triangle: The given values of A, B, and C don't form a triangle.
*/

-- Concepts: Case Statement

SELECT 
CASE 
    WHEN (A+B)<=C OR (A+C)<=B OR (B+C)<=A THEN 'Not A Triangle'
    WHEN (A=B) AND (B=C) THEN 'Equilateral'
    WHEN (A=B) OR (B=C) OR (A=C) THEN 'Isosceles'
    ELSE 'Scalene'
    END AS type_of_traingle
FROM
TRIANGLES; 
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

/*
Hacker Rank Question: African Cities

Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.
Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
*/

-- Concepts: Inner Joins

SELECT cy.name
FROM city cy
INNER JOIN country co
ON cy.countrycode = co.code
WHERE co.continent = 'Africa';

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/*
Consider P1(a,b) and P2(c,d) to be two points on a 2D plane.

a happens to equal the minimum value in Northern Latitude (LAT_N in STATION).
b happens to equal the minimum value in Western Longitude (LONG_W in STATION).
c happens to equal the maximum value in Northern Latitude (LAT_N in STATION).
d happens to equal the maximum value in Western Longitude (LONG_W in STATION).
Query the Manhattan Distance between points  and  and round it to a scale of  decimal places.
*/

-- Concepts: Aggregate Functions 

SELECT ROUND(ABS(MIN(LAT_N)-MAX(LAT_N)) + ABS(MIN(LONG_W)-MAX(LONG_W)),4)
FROM STATION;

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

/*
Hacker Rank Question: Top Earners
We define an employee's total earnings to be their monthly salary * months worked, and the maximum total earnings to be the maximum total earnings for any employee in the Employee table. 
Write a query to find the maximum total earnings for all employees as well as the total number of employees who have maximum total earnings. 
Then print these values as 2 space-separated integers.
*/

-- Concepts: Aggregate Functions
SELECT (salary*months) AS earnings,
COUNT(*)
FROM Employee
GROUP BY earnings
ORDER BY earnings DESC 
LIMIT 1; 
