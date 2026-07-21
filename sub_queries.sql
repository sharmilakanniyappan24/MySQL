use rsa;
#sub queries
#------------

#1.find students whose age is greater than average age
#---------------------------------------------------
select student_name,age from students;
select avg(age) from students;
select * from students where age > (select avg(age) from students); 

#2.find the oldest student
#-------------------------
select student_name,age from students  where age = (select max(age) from students);

#3.find the youngest student
#----------------------------
select student_name,age from students where age = (select min(age) from students);

#4.find students from the same city as 'sharmila'
#-----------------------------------------------
select student_name,city from students where city= (select city  from students where student_name='sharmila');

#5.find students who are older than 'hema'
#------------------------------------------
select * from students where age >(select age from students where student_name='hema');

#6.find students who join after average joining date
#-----------------------------------------------------
select * from students where joining_date > (select avg(joining_date) from students);
select avg(joining_date) from students;

#7.find students having maximun fees
#----------------------------------
select * from students where fees = (select max(fees) from students);

#8.find the students having minimum fees
#----------------------------------------
select * from students where fees = (select min(fees) from students);

#9.find students enrolled AI with Python
#---------------------------------------
select * from students where course_name = (select course_name from course where course_name='AI with Python'); 
select * from students;
select * from course;
#10.find students from chennai
#------------------------------
select * from students where city in (select city from students where city='chennai');

#11.find course with highest fees
#---------------------------------
select * from course where fees = (select max(fees) from course);

#12.find course with lowest fees
#--------------------------------
select * from course where fees=(select min(fees)from course);

#13.find longest duration course
#---------------------------------
select * from course where course_duration = (select max(course_duration) from course);

#14.findd shortest duration course
#----------------------------------
select * from course where course_duration =(select min(course_duration) from course);

#15.find students who selected highest fee course
#------------------------------------------------
select * from course;
select * from students;
select * from students where course_name =(
select  course_name from course where fees=(select max(fees) from course)
);

#16.finds students who paid more than average payment
#----------------------------------------------------
select * from student_payment_table;
select * from student_payment_table where amount >(select avg(amount) from student_payment_table);

#17.find highest payment
#------------------------
select * from student_payment_table where amount = (select max(amount) from student_payment_table);

#18.find lowest payment
#-----------------------
select * from student_payment_table where amount = (select min(amount) from student_payment_table);

#19. find students who fully paid
#---------------------------------
select * from students where student_id in (
select student_id from student_payment_table where fee_status='fully paid'
);

#20.find students with pending fees
#------------------------------------
select * from students where student_id in(
select student_id  from student_payment_table where fee_status ='pending'
);

#21.find students who paid using upi
#-----------------------------------
select * from students where student_id in(
select student_id  from student_payment_table where payment_mode ='upi'
);
select * from student_payment_table;

#22.find total payment greater than 20,000
#-----------------------------------------
select * from student_payment_table where amount >(
select amount from student_payment_table where amount= 20000
);

select * from student_payment_table where amount >(
select 20000
);

#23.find selected students
#---------------------------
select * from students where student_id in(
select student_id from placement where placement_status='selected'
);

#24. find not selected students
#------------------------------
select * from students where student_id in(
select student_id from placement where placement_status='not selected'
);

#25.find students placed in 'zoho'
#--------------------------------
select * from students where student_id in(
select student_id from placement where company_name='zoho'
);

#26.find highest package
#------------------------
select * from placement where package =(
select max(package) from placement
);
select * from placement;

select * from placement where cast(substring_index(package,' ',1) as decimal(5,2)) = (
select max(cast(substring_index(package,' ',1) as decimal(5,2)))from placement
);

#27.find lowest package
#-----------------------
select * from placement where package =(
select min(package) from placement
);

select * from placement where cast(substring_index(package,' ',1) as decimal(5,2)) = (
select min(cast(substring_index(package,' ',1) as decimal(5,2)))from placement
);