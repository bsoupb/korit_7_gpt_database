select * from course_tb;
select * from major_tb;

select
	row_number() over(order by name) as `index`,
    name
from
    (select 
		major_name as name
    from
		major_tb
	union
	select
		course_name
	from
		course_tb) as name_tb;
        
select
	row_number() over(order by name desc) as `index`,
    name
from
	(select
		major_name as name
	from
		major_tb
	union
    select
		course_name
	from
		course_tb
	) as name_tb;

-- row_number()
select
	row_number() over(order by `id`) as num,
    name_tb.*
from
	(select
		course_id as `id`,
        course_name as `name`
	from
		course_tb
	union
	select
		major_id,
        major_name
	from 
		major_tb) as name_tb;

-- rank()
select
	rank() over(order by `id`) as num,
    name_tb.*
from
	(select
		course_id as `id`,
        course_name as `name`
	from
		course_tb
	union
	select
		major_id,
        major_name
	from 
		major_tb) as name_tb;

-- dense_rank()
select
	dense_rank() over(order by `id`) as num,
    name_tb.*
from
	(select
		course_id as `id`,
        course_name as `name`
	from
		course_tb
	union
	select
		major_id,
        major_name
	from 
		major_tb) as name_tb;