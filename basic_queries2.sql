use rsa;
select * from students;

#1. add email column
#--------------------
alter table student add email varchar(30);
desc student;
select * from student;
update student set email ='sharmila@gmail.com' where student_id=101;
update student set email='hema@gmail.com'where student_id=102;
update student set email ='nisha@gmail.com' where student_id=103;
update student set email='kishore@gmail.com' where student_id=104;
update student set email='arun@gmail.com' where student_id=105;
update student set email='preethi@gmail.com' where student_id=106;
update student set email='nandhini@gmail.com' where student_id=107;
update student set email='raj@gmail.com' where student_id=108;
update student set email='karthi@gmail.com'where student_id=109;
update student set email='revathi@gmail.com' where student_id=110;

#2.add joining date column
#---------------------------
alter table student add joining_date date;
desc student;
select * from student;
update student set joining_date='2026-06-26' where student_id=101;
update student set joining_date='2025-02-18' where student_id=102;
update student set joining_date='2025-11-01' where student_id=103;
update student set joining_date='2026-08-15' where student_id=104;
update student set joining_date='2025-09-23' where student_id=105;
update student set joining_date='2026-04-02' where student_id=106;
update student set joining_date='2025-01-31' where student_id=107;
update student set joining_date='2026-03-27' where student_id=108;
update student set joining_date='2025-10-20' where student_id=109;
update student set joining_date='2026-12-21'where student_id=110;

desc students;
select * from students;
insert into students(student_id,student_name,age,gender,city,phone,course_name,fees,email,joining_date,course_duration)
values(111,'kumar',21,'male','chennai',8967457889,'AI with Python',25000,'kumar@gmail.com','2026-05-11',3);
#3.add course duration column
#-----------------------------
alter table student add course_duration int;
desc student;
select * from student;
set sql_safe_updates = 0;
update student set course_duration= 3 where course ='AI with Python';
update student set course_duration= 4 where course ='Data Analytics';
update student set course_duration= 5 where course='Data Science';
update student set course_duration= 6 where course='Gen AI';
desc student;

#4.modify email data type length
#-------------------------------
alter table student modify email varchar(50);

#5.rename column course to course_name
#------------------------------------
alter table student rename column course to course_name;

#6.rename table
#---------------
alter table student rename to students;
select * from students;


