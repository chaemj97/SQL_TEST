-- 문제
-- 자동차 종류가 '세단' 또는 'SUV' 인 자동차 중 2022년 11월 1일부터 2022년 11월 30일까지 대여 가능하고 30일간의 대여 금액이 50만원 이상 200만원 미만인 자동차에 대해서 자동차 ID, 자동차 종류, 대여 금액(컬럼명: FEE) 리스트를 출력하는 SQL문을 작성해주세요. 결과는 대여 금액을 기준으로 내림차순 정렬하고, 대여 금액이 같은 경우 자동차 종류를 기준으로 오름차순 정렬, 자동차 종류까지 같은 경우 자동차 ID를 기준으로 내림차순 정렬해주세요.

SELECT C.CAR_ID, C.CAR_TYPE, FLOOR(C.DAILY_FEE * 30 * (100-P.DISCOUNT_RATE)/100) AS FEE
FROM CAR_RENTAL_COMPANY_CAR AS C 
    INNER JOIN (SELECT CAR_TYPE, DISCOUNT_RATE
                FROM CAR_RENTAL_COMPANY_DISCOUNT_PLAN
                WHERE DURATION_TYPE = '30일 이상'
    ) AS P
        ON C.CAR_TYPE = P.CAR_TYPE
WHERE C.CAR_ID NOT IN (SELECT CAR_ID
                       FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
                       WHERE END_DATE > '2022-11-00'
                       AND START_DATE < '2022-12-00')
    AND C.CAR_TYPE in ('세단','SUV') 
HAVING FEE >= 500000 and FEE <= 2000000
ORDER BY FEE DESC, C.CAR_TYPE, C.CAR_ID DESC;