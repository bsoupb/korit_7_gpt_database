-- TCP School 참고

select
	lpad('123', 5, 0);	-- 총 5자리 나머지는 0으로 왼쪽부터 채우기
    
select
	year(now()),
    month('2022-08-02'),
    day(now()),
    hour(now()),
    minute(now()),
    second(now());
    
-- date format
select
	date_format(now(), '%Y년 %m월 %d일');

-- 날짜 계산 알아두기