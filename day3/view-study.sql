# view table
create view book_view as (
	select
		bt.book_id,
		bt.book_name,
		bt.isbn,
		bt.author_id,
		at.author_id as at_author_id,
		at.author_name,
		bt.publisher_id,
		pt.publisher_id as pt_publisher_id,
		pt.publisher_name,
		bt.category_id,
		ct.category_id as ct_category_id,
		ct.category_name,
		bt.book_img_url
	from
		book_tb bt
		left outer join category_tb ct on ct.category_id = bt.category_id
		left outer join author_tb `at` on `at`.author_id = bt.author_id
		left outer join publisher_tb pt on pt.publisher_id = bt.publisher_id
);

select 
	* 
from 
	book_view;
    
# with 공통 테이블 표현식(common table expression, cte)

set @searchData = '불멸';

with publisher_count_cte as (
	select
		publisher_id,
        count(publisher_id) as publisher_count
	from
		book_tb
	group by 
		publisher_id
),
author_count_cte as (
	select
		author_id,
        count(author_id) as author_count
	from
		book_tb
	group by
		author_id
)

select 
	*
from
	book_tb bt
	left outer join publisher_count_cte pcc on(pcc.publisher_id = bt.publisher_id)
    left outer join author_count_cte acc on(acc.author_id = bt.author_id)
where 
	bt.book_name like concat('%', @searchData, '%');





