-- 문제
-- 2022년 1월의 도서 판매 데이터를 기준으로 저자 별, 카테고리 별 매출액(TOTAL_SALES = 판매량 * 판매가) 을 구하여, 저자 ID(AUTHOR_ID), 저자명(AUTHOR_NAME), 카테고리(CATEGORY), 매출액(SALES) 리스트를 출력하는 SQL문을 작성해주세요. 결과는 저자 ID를 오름차순으로, 저자 ID가 같다면 카테고리를 내림차순 정렬해주세요.

SELECT B.AUTHOR_ID, A.AUTHOR_NAME, B.CATEGORY, SUM(B.PRICE*S.SALES) AS TOTAL_SALES
FROM BOOK AS B
    INNER JOIN (SELECT BOOK_ID, SALES
                FROM BOOK_SALES
                WHERE YEAR(SALES_DATE) = 2022 AND MONTH(SALES_DATE) = 1) AS S
        ON B.BOOK_ID = S.BOOK_ID
    INNER JOIN AUTHOR AS A
        ON B.AUTHOR_ID = A.AUTHOR_ID
GROUP BY B.AUTHOR_ID, B.CATEGORY
ORDER BY B.AUTHOR_ID, B.CATEGORY DESC;
