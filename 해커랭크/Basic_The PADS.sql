-- 문제
-- 1. 이름을 알파벳 순서로 출력하는 쿼리
-- 직업의 첫글자를 함께 쓰기
-- 2. 각 직업의 수를 출력하는 쿼리
-- 오름차순, 수가 같다면 직업의 알파벳순

SELECT CONCAT(Name,'(',LEFT(Occupation,1),')')
FROM OCCUPATIONS
ORDER BY Name;

SELECT CONCAT('There are a total of ',COUNT(*),' ',LOWER(Occupation),'s.')
FROM OCCUPATIONS
GROUP BY Occupation
ORDER BY COUNT(*), Occupation;