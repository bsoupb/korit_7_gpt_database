select
	row_number() over(order by student_name) as number
    , student_name
from
	student_tb
union
select
	row_number() over(order by instructor_name)
    , instructor_name
from
	instructor_tb;
    
select 
	*
from
	data1_tb
left outer join data2_tb on data1_tb.data2_id = data2_tb.data2_id;
    