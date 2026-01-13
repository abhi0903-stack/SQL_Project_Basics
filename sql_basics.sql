/* Hacker Rank Question: Average Population of Each Continent

Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population) rounded down to the nearest integer.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.*/

SELECT co.continent, FLOOR(AVG(cy.population)) 
FROM country co
INNER JOIN city cy
ON co.code = cy.countrycode
GROUP BY co.continent; 





