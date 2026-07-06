create database rsa; # database creation

show databases; #database show

use rsa;
CREATE TABLE student(
   s_no int auto_increment primary key,
   student_id int not null unique,
   student_name varchar(50),
   age int,
   gender varchar(10),
   city varchar(50),
   phone bigint,
   course varchar(50),
   fees int);

desc student;
select*from student;

insert into student 
(student_id,student_name,age,gender,city,phone,course,fees) 
values (101,'sharmila',19,'female','chennai',6547874690,'AI with Python',25000);

select*from student;
insert into student 
(student_id,student_name,age,gender,city,phone,course,fees) 
values (102,'hema',21,'female','tirchy',6547784690,'Data Analytics',30000),
(103,'nisha',20,'female','chennai',6874578047,'Data Science',20000),
(104,'kishore',23,'male','madurai',8923064746,'Gen AI',45000),
(105,'arun',21,'male','tirchy',67458934,'AI with Python',25000),
(106,'preethi',20,'female','madurai',637283990,'Gen AI',45000),
(107,'nandhini',18,'female','tirchy',8967457889,'Data Analytics',30000),
(108,'raj',25,'male','madurai',9034576880,'Data Science',20000),
(109,'karthi',23,'male','chennai',8567458967,'AI with Python',25000),
(110,'revathi',22,'female','madurai',6283495078,'Gen AI',45000);

select*from student;

#1.display all records
#-----------------------
select*from student;

#2.display student name only
#---------------------------
select student_name from student;

#3.display name and course
#-------------------------
select student_name,course from student;

#4.display all female students
#-------------------------------
select*from student where gender='female';
select student_name,gender from student where gender='female';

#5.display all male students
#-----------------------------
select * from student where gender='male';
select count(*) from student where gender='male';
select count(*) as Total_male_students from student where gender='male';

#6.students from chennai
#---------------------------
select student_name,city from student where city='chennai';
select student_name,city from student where city='tirchy';

#7.students aged above 22
#-------------------------
select * from student where age>22;

#8.students aged below 22
#--------------------------
select*from student where age<22;

#9.students who choose AI with Python
#----------------------------------
select student_name,course from student where course='AI with Python';

#10.students who pay fees greater than 30,000
# -----------------------------------------
select student_name,fees from student where fees>30000;

#11.students who pay fees lesser than 30,000
#-------------------------------------------
select student_name,fees from student where fees<30000;

#12.find the maximum age
#----------------------
select max(age) from student;

#13.find the minimum age
#------------------------
select min(age) from student;

#14.find the average age
#----------------------
select avg(age) from student;

#15.find total fees collected
#---------------------------
select sum(fees) from student;

#16.find the maximum fees
#------------------------
select max(fees) from student;

#17.find the minimum fees
#-------------------------
select min(fees) from student;

#18.find the average fees
#-----------------------
select avg(fees) from student;

#19.display top 5 students
#------------------------
select * from student limit 5;

#20.display students from chennai and female
#------------------------------------------
select * from student where city='chennai'and gender='female';

#21.display students from chennai or madurai
#---------------------------------------------
select * from students where city='chennai' or city= 'madurai';

#22.display age 20 - 24
#-----------------------
select * from student where age between 20 and 24;

#23.students whose fees are between 25000 and 35000
#--------------------------------------------------
select * from student where fees between 25000 and 35000;

#24.students whose names starts with 's'
#---------------------------------------
select * from student where student_name like's%';

#25.students whose names ends with 'a'
#--------------------------------------
select * from student where student_name like'%a';

#26.count students in each city
#------------------------------
select city,count(*) from students group by city;

#27.count students in each course
#-------------------------------
select course_name,count(*) as total_enrolled from students group by course_name;

#28.display unique courses
#-------------------------
select distinct course from student ;

#29.average fees by course
#--------------------------
select course,avg(fees) from student group by course ; 

#30.display city wise total fees
#-------------------------------
select city,sum(fees) from student group by city;

#31.display students sorted by name
#------------------------------------
select * from students order by student_name;

#32.display students sorted by age descending
#---------------------------------------------
select * from students order by age desc;

#33.highest fees student
#-----------------------
select * from student;
select * from student order by fees desc;
select * from student order by fees desc limit 1;

#34.lowest fees student
#-----------------------
select * from student order by fees limit 1;

#35.students not from chennai
#-----------------------------
select * from student where city !='chennai'; 
select * from student where city <>'chennai'; 

#36.students not studying data analytics
#----------------------------------------
select * from student where course !='Data Analytics';
select * from student where course <>'Data Analytics';

