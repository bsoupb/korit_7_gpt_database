# select
select
	* 
from 
	student_tb;
    
select
	student_name,
	student_year
from
	student_tb;
    
# where 조건
select
	*
from
	student_tb
where
-- 	student_year = 3 or student_year = 4;
-- 	student_year in(3, 4);
-- 	student_year between 2 and 4;
--  student_year > 2 and student_year < 5;
-- 	student_year >= 3 and student_year <= 4;
    student_id between 3 and 4;
    
select 
	10 as num,
	20 as num2,
    '이름' as name
union 
select
	30 as num,
	40 as num2,
    '이름2' as name;
-- union 중복 불가, union all 중복 가능
-- union 사용시 컬럼 갯수가 일치해야 함

select
	1 as id,
    '월' as day
union all
select
	2 as id,
    '화' as day
union all
select
	3 as id,
    '수' as day;


select
    student_name
from
	student_tb
union
select
	row_number() over(order by instructor_name) as number,
    instructor_name
from
	instructor_tb;
    
select
	row_number() over(order by student_name) as num,
	student_name
from
	student_tb;
    
select
	*
from
	student_tb
order by
	student_year desc,
    student_name;
    
select
	row_number() over(order by name) as `index`,
	name
from
	(select
		student_name as name
	from
		student_tb
	union
	select
		instructor_name
	from
		instructor_tb) as name_tb;