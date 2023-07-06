-- 문제
-- Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.
-- 도시 이름이 가장 짧은 도시와 가장 긴 도시 구하기
-- 도시 이름 길이도 같이 출력
-- 만약 여러개라면 알파벳 순서가 첫번째인거 출력

-- 도시 이름 가장 짧은 도시 출력
SELECT CITY,LENGTH(CITY)
FROM STATION
ORDER BY LENGTH(CITY), CITY
LIMIT 1;
-- 도시 이름 가장 긴 도시 출력
SELECT CITY,LENGTH(CITY)
FROM STATION
ORDER BY LENGTH(CITY) DESC, CITY
LIMIT 1;