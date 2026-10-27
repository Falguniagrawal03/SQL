select t1.student_id, t1.student_name, t2.subject_name, count(t3.subject_name) as attended_exams
from students as t1
cross join subjects as t2
left join examinations as t3
on t1.student_id = t3.student_id AND t2.subject_name = t3.subject_name
group by student_id, subject_name
order by student_id, subject_name
