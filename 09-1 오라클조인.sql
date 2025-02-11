-- 오라클에서 사용하는 조인 문법도 있음

-- 조인을 할때 조인의 테이블을 FROM에 , 로 나열
-- WHERE 절에서 조인의 조건을 기술함

SELECT * FROM AUTH;
SELECT * FROM INFO;

-- 이너조인(내부조인)
SELECT *
FROM INFO I, AUTH A
WHERE I.AUTH_ID = A.AUTH_ID; --LEFT JOIN

-- 아우터 조인(외부조인)
SELECT *
FROM INFO I, AUTH A
WHERE I.AUTH_ID(+) = A.AUTH_ID; --RIGHT JOIN

-- 오라클에서 FULL OUTER 조인은 없습니다.

-- 크로스 조인은 조인 조건을 적지 않으면 됩니다. 
SELECT *
FROM INFO I, AUTH A; --CROSS 조인







