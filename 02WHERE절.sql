-- WHERE 절

SELECT * FROM employees;

SELECT FIRST_NAME, JOB_ID FROM employees WHERE JOB_ID = 'IT_PROG';
SELECT * FROM employees WHERE SALARY >= 15000;
SELECT * FROM employees WHERE SALARY < 10000;
SELECT * FROM employees WHERE department_id <> 50; -- 같지 않음
SELECT * FROM employees WHERE first_name = 'Steven'; -- 데이터는 대소문자 구분
SELECT * FROM employees WHERE hire_date = '04/01/30';
SELECT * FROM employees WHERE HIRE_Date <= '04/01/30';

--BETWEEN A AND B (이상 - 이하)
SELECT * FROM EMPLOYEES WHERE SALARY BETWEEN 10000 AND 15000;
SELECT * FROM EMPLOYEES WHERE HIRE_DATE BETWEEN '03/01/01' AND '03/12/31';

-- IN 연산자
SELECT * FROM EMPLOYEES WHERE DEPARTMENT_ID IN (50, 60, 70);
SELECT * FROM EMPLOYEES WHERE JOB_ID IN ('IT_PROG',  'AD_VP');

-- LIKE 연산자
SELECT * FROM EMPLOYEES WHERE HIRE_DATE LIKE '03%'; --03으로 시작하는
SELECT * FROM EMPLOYEES WHERE HIRE_DATE LIKE '%01'; --01로 끝나는
SELECT * FROM EMPLOYEES WHERE HIRE_DATE LIKE '%05%'; --05가 포함된
SELECT * FROM EMPLOYEES WHERE FIRST_NAME LIKE '_ar%'; --_는 자리수
SELECT * FROM EMPLOYEES WHERE HIRE_DATE LIKE '___05%';

-- IS NULL, IS NOT NULL
SELECT * FROM employees WHERE commission_pct = NULL; --- X
SELECT * FROM employees WHERE commission_pct IS NULL;
SELECT * FROM employees WHERE commission_pct IS NOT NULL;

-- AND, OR - AND가 OR 보다 연산 순위가 빠르다. 
SELECT * FROM employees WHERE JOB_ID = 'IT_PROG' OR SALARY >= 5000; -- 둘중 하나만 만족해도 나옴
SELECT * FROM employees WHERE JOB_ID = 'IT_PROG' AND SALARY >= 5000; -- 둘다 만족해야 나옴
SELECT * FROM employees WHERE JOB_ID = 'IT_PROG' OR JOB_ID = 'FI_MGR' AND SALARY >= 5000; -- AND가 먼저
SELECT * FROM employees WHERE (JOB_ID = 'IT_PROG' OR JOB_ID = 'FI_MGR') AND SALARY >= 5000;

-- NOT 부정의 의미
SELECT * FROM employees WHERE department_id NOT IN (50, 60, 70);
SELECT * FROM employees WHERE JOB_ID NOT LIKE '%IT%';

--------------------------------------------------------------------------------
-- ORDER BY 구문
SELECT * FROM employees ORDER BY SALARY; -- ASC가 DEFAULT
SELECT * FROM employees ORDER BY SALARY DESC;
SELECT * FROM employees ORDER BY DEPARTMENT_ID, SALARY DESC; -- 먼저 부서아이디로 정렬, 동순위에 대해서 SALARY 내림차순 정렬

SELECT FIRST_NAME, SALARY * 12 AS 연봉 FROM employees ORDER BY 연봉 DESC; -- 엘리어스를 정렬에서 사용할 수 있음
SELECT FIRST_NAME, SALARY * 12 AS 연봉 FROM employees WHERE 연봉 >= 10000; -- WHERE 엘리어스 사용 x

SELECT FIRST_NAME, SALARY, department_id FROM employees WHERE department_id = 50 ORDER BY first_name;

