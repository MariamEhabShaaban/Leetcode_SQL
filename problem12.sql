select s.student_id,s.student_name,sb.subject_name,count(e.subject_name) as attended_exams
from students s
cross join 
Subjects sb
left join
examinations e
on s.student_id=e.student_id and e.subject_name=sb.subject_name 
group by s.student_id,s.student_name,sb.subject_name