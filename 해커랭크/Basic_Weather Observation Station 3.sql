-- 문제
-- Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer.
-- STATION 테이블에서 짝수 ID를 가진 도시 이름을 출력하라. 중복 제외

SELECT DISTINCT(CITY)
FROM STATION
WHERE ID%2=0;