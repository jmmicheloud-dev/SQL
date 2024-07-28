SELECT * FROM emp_attendanceWITH cte AS
			(SELECT *, ROW_NUMBER() over(PARTITION BY employee ORDER BY employee , dates) AS rn
			FROM emp_attendance
			),
		cte_present as
			(SELECT *, ROW_NUMBER() over(PARTITION BY employee ORDER BY employee , dates)
			,rn - ROW_NUMBER() over(PARTITION BY employee ORDER BY employee , dates) AS flag
			FROM cte WHERE status='PRESENT'
			),
		cte_absent as
			(SELECT *, ROW_NUMBER() over(PARTITION BY employee ORDER BY employee /*, dates*/) 
			,rn - ROW_NUMBER() over(PARTITION BY employee ORDER BY employee /*, dates*/) AS flag
			FROM cte WHERE status='ABSENT'	
			)
		/*	
SELECT employee
	FIRST_VALUE(dates) over(PARTITION BY employee, flag ORDER BY employee, dates) AS from_date
	LAST_VALUE(dates) over(PARTITION BY employee, flag ORDER BY employee, dates
										RANGE BETWEEN unbounded preceding AND unbounded following) AS to_date
	, status
FROM cte_present
UNION */
SELECT emloyee
	, FIRST_VALUE(dates) over(PARTITION BY employee/*, flag*/ ORDER BY employee, dates) AS from_date
	, LAST_VALUE(dates) over(PARTITION BY employee/*, flag */ORDER BY employee, dates
										RANGE BETWEEN unbounded preceding AND unbounded following) AS to_date
	, status
FROM cte_absent

-- 
/* verificando consulta */
SELECT 	* 
		, ROW_NUMBER() over(PARTITION BY employee ORDER BY employee , dates)
		,rn - ROW_NUMBER() over(PARTITION BY employee ORDER BY employee , dates) AS flag
	
	FROM (SELECT *, ROW_NUMBER() over(PARTITION BY employee ORDER BY employee , dates) AS rn
			FROM emp_attendance
			)	as cte 
	WHERE status='PRESENT'
	
UNION		

SELECT employee
	, FIRST_VALUE(dates) over(PARTITION BY employee, flag ORDER BY employee) AS from_date
	, LAST_VALUE(dates) over(PARTITION BY employee, flag ORDER BY  employee
							RANGE BETWEEN unbounded preceding AND unbounded following) AS to_date
	, status
FROM (

create or REPLACE table cte_absent as

		SELECT 	* 
			, ROW_NUMBER() over(PARTITION BY employee ORDER BY employee , dates) as rn_1
			,rn - ROW_NUMBER() over(PARTITION BY employee ORDER BY employee , dates) AS flag

		FROM (SELECT *, ROW_NUMBER() over(PARTITION BY employee ORDER BY employee , dates) AS rn
				FROM emp_attendance
				)	as cte 
		WHERE status='ABSENT'
	 ) as cte_absent


	 ---- consulta a tabla cte_absent

SELECT employee
	, FIRST_VALUE(dates) over(PARTITION BY employee, flag ORDER BY employee, dates) AS from_date
	, FIRST_VALUE(dates) over(PARTITION BY employee, flag ORDER BY  employee, dates asc) AS to_date
	, status
FROM cte_absent



/* nuevo proceso por no poder usar last_value */


WITH cte AS
			(SELECT *, ROW_NUMBER() over(PARTITION BY employee ORDER BY employee , dates) AS rn
			FROM emp_attendance
			),
		cte_present as
			(SELECT *, ROW_NUMBER() over(PARTITION BY employee ORDER BY employee , dates)
			,rn - ROW_NUMBER() over(PARTITION BY employee ORDER BY employee , dates) AS flag
			FROM cte WHERE status='PRESENT'
			),
		cte_absent as
			(SELECT *, ROW_NUMBER() over(PARTITION BY employee ORDER BY employee , dates) 
			,rn - ROW_NUMBER() over(PARTITION BY employee ORDER BY employee , dates) AS flag
			FROM cte WHERE status='ABSENT'	
			)
		
SELECT employee
	,FIRST_VALUE(dates) over(PARTITION BY employee, flag ORDER BY employee, dates) AS from_date
	,FIRST_VALUE(dates) over(PARTITION BY employee, flag ORDER BY employee, dates asc ) AS to_date
	, status
FROM cte_present
UNION 
SELECT employee
	, FIRST_VALUE(dates) over(PARTITION BY employee, flag ORDER BY employee, dates) AS from_date
	, FIRST_VALUE(dates) over(PARTITION BY employee, flag ORDER BY employee, dates asc ) AS to_date
	, status
FROM cte_absent
