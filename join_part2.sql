use rsa;
select * from students;
select * from course;
select * from student_payment_table;
select * from placement;

#joins
#------

#1.inner join
#------------
select s.student_id,s.student_name,s.fees,p.amount,p.payment_mode,p.fee_status from students s
inner join student_payment_table p on s.student_id=p.student_id;

#2.student name,company,package,placement status
#------------------------------------------------
select s.student_name,p.company_name,p.package,p.placement_status from students s
inner join placement p on s.student_id = p.student_id;

#left join
#----------
select s.student_name,p.amount,p.fee_status from students s
left join student_payment_table p  on s.student_id = p.student_id;

#right join
#-----------
select s.student_name,p.amount,p.fee_status from student_payment_table p 
right join students s  on s.student_id = p.student_id;

select s.student_name,p.amount,p.fee_status from students s
right join student_payment_table p  on s.student_id = p.student_id;

#union join
#-----------
select s.student_name,p.amount,p.fee_status from students s
left join student_payment_table p  on s.student_id = p.student_id
union
select s.student_name,p.amount,p.fee_status from student_payment_table p 
right join students s  on s.student_id = p.student_id;

# cross join
#------------
select s.student_name,c.course_name from students s cross join course c;
select * from course;

#self join
#---------
select s1.student_name as s1,s2.student_name as s2, s1.city from students s1 join students s2 on s1.city = s2.city and s1.student_id <> s2.student_id ;

