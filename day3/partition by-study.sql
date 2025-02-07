# row_number(), rank() 에서의 partition by

select
	row_number() over(partition by category_id order by author_id),
    book_tb.*
from
	book_tb
where
	book_name like '%가%';
    
# 흐름제어
# CASE, IF, IFNULL, NULLIF
select
	case 
		when 5 > 5 then '5보다 큽니다' 
		when 5 > 4 then '4보다 큽니다' 
		when 5 > 3 then '3보다 큽니다' 
		else '5보다 작습니다' 
	end,	-- 여러 조건
if(10 > 5, '5보다 큽니다', '5보다 작습니다');	-- 단일 조건

select
	*, 
    if(trim(isbn) = '', 'O', 'X') as oAndX,
    case
		when category_id < 100 then '0 ~ 99'
		when category_id < 200 then '100 ~ 199'
		when category_id < 300 then '200 ~ 299'
        else '300 ~'
	end as scope,
    ifnull(category_id, '40') as ifnull,
    nullif(category_id, 37) as nullif	-- category_id, 37 값이 동일하면 null로 변경
from 
	book_tb;

select
	*
from
	book_tb;

update
	book_tb
set
	category_id = null
where
	category_id between 40 and 49;
    
update
	book_tb
set
	category_id = case 
		when category_id % 3 = 0 then 3000
		when category_id % 2 = 0 then 2000
	end;
    
select
	*
from
	book_tb
where
	category_id is not null;
    
update
	book_tb
set
	category_id = ifnull(category_id, 4000);
    
