insert into student_tb
values 
(default, '최석현', 3, '남', 1),
(default, '백진우', 4, '남', 1),
(default, '박소율', 3, '여', 2),
(default, '정현영', 4, '여', 1);

insert into course_registering_tb
value
	(default, 1, 1),
	(default, 1, 2),
	(default, 1, 3),
	(default, 1, 4),
	(default, 2, 2),
	(default, 2, 4),
	(default, 3, 1),
	(default, 3, 3),
	(default, 4, 1),
	(default, 4, 2),
	(default, 4, 3),
	(default, 5, 1),
	(default, 5, 2),
	(default, 6, 1),
	(default, 6, 2),
	(default, 6, 3);


select (select (select course_name from course_tb as ct where ct.course_id = crit.course_id) course_id from course_registering_information_tb as crit 
where crit.course_registering_information_id = crt.course_registering_information_id ) as course_name
from course_registering_tb as crt
where student_id = (
	select student_id from student_tb where student_name = '백진우'
);


-- 운영체제 과목을 듣고 있는 학생
select (select student_id from course_tb where course_name='데이터베이스론') from course_registering_tb where course_registering_information_id =(select course_id from course_tb where course_name = '데이터베이스론');







select 
	(select 
		student_name 
	from 
		student_tb 
	where 
		student_id = (select 
						student_id 
					from 
						course_tb 
					where 
						course_name='데이터베이스론')) 
							from course_registering_tb 
								where 
									course_registering_information_id =
								(select 
									course_id 	
								from 
									course_tb 
								where 
									course_name = '데이터베이스론');


select (select course_name from course_tb where course_registering_information_id = course_id) as course_name from course_registering_tb where student_id = (select student_id from student_tb where student_name = '백진우');