
-- 1번
SELECT ename, job, sal, TO_CHAR(hiredate, 'yyyy/mm/dd') FROM emp WHERE TO_CHAR(hiredate, 'yyyy') = 1981 AND job = 'SALESMAN' ORDER BY sal DESC;

-- 2번
SELECT ename, deptno, TO_CHAR(hiredate, 'yyyy/mm/dd') FROM emp WHERE TO_CHAR(hiredate, 'mm') = '12';

-- 3번
SELECT ename, deptno, sal, comm FROM emp WHERE (comm IS NULL OR comm = 0) AND sal = 1500;

-- 4번
SELECT ename, deptno, sal, (SELECT avg(sal) FROM emp)AS 급여평균 FROM emp WHERE deptno = 20 AND sal > (SELECT avg(sal) FROM emp);
