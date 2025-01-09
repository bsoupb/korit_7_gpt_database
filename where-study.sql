# where 와일드 카드(like) -> 검색할 때 사용
select
	*
from
	instructor_tb
where
	instructor_name like '%교%';

select
	*
from
	instructor_tb
where
	instructor_name like '__교_';
