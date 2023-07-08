-- 문제
-- query the sum of the populations of all cities where the CONTINENT is 'Asia'.
-- 아시아의 모든 도시의 인구의 합

SELECT SUM(CITY.POPULATION)
FROM CITY
    INNER JOIN COUNTRY ON CITY.COUNTRYCODE = COUNTRY.CODE
WHERE COUNTRY.CONTINENT = 'Asia';