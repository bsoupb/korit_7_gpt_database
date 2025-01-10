select
	*
from
	books
	left outer join category_tb on category_name = 카테고리;

select 
	*
from
	books
    left outer join author_tb on author_name = 저자명;

select
	*
from
	books
    left outer join publisher_tb on publisher_name = 출판사;

select
	*
from
	books b
    left outer join author_tb at on at.author_name = b.저자명
    left outer join category_tb ct on ct.category_name = b.카테고리
    left outer join publisher_tb pt on pt.publisher_name = b.출판사;
    
update 
	books b
    left outer join author_tb at on at.author_name = b.저자명
    left outer join category_tb ct on ct.category_name = b.카테고리
    left outer join publisher_tb pt on pt.publisher_name = b.출판사
set
	카테고리 = ct.category_id,
    저자명 = at.author_id,
    출판사 = pt.publisher_id;
    
select * from books;