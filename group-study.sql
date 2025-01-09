select
	도서명,
    저자명,
    isbn,
    표지url
from
	books
group by
	도서명,
    저자명,
    isbn,
    표지url;