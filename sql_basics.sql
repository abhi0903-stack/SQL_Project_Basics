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



