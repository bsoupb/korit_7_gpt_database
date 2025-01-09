insert into category_tb
select 
	distinct
	0,
    카테고리
from
	books;

select * from category_tb order by category_id;
select * from author_tb order by author_id;
select * from publisher_tb order by publisher_id;

select length(저자명) from books;

# author(저자), publisher(출판사) 정규화
insert into author_tb
select 
	distinct
    0,
    저자명
from
	books;
    
insert into publisher_tb
select
	distinct
    0,
    출판사
from
	books;