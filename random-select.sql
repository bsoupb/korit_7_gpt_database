select
	num,
    book_id,
    book_name,
    author_id,
    isbn,
    category_id,
    publisher_id,
    book_img_url
from
	(select
		row_number() over(partition by category_id order by book_id) as num,
        bt.*
	from
		book_tb bt) book_tb
where 
	num < 5;