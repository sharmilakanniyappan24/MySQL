use rsa;
create table course(
course_id int unique, course_name varchar(50), fees int, course_duration int);

insert into course( course_id,course_name,fees,course_duration)
values(1001,'AI with Python',25000,3),
(1002,'Data Science',20000,5),
(1003,'Data Analytics',30000,4),
(1004,'Gen AI',45000,6);

select * from course;

create table student_payment_table (
payment_id int unique, 
student_id int, 
amount int, 
fee_status varchar(30), 
payment_mode varchar(30),
payment_date date,
foreign key(student_id)references students(student_id)
);

desc student_payment_table;
select * from students;

insert into student_payment_table(payment_id,student_id,amount,fee_status,payment_mode,payment_date)
values (10001,101,25000,'fully paid','cash','2026-06-26');

select * from student_payment_table;

insert into student_payment_table(payment_id,student_id,amount,fee_status,payment_mode,payment_date)
values (10002,102,15000,'pending','upi','2025-02-17');

insert into student_payment_table(payment_id,student_id,amount,fee_status,payment_mode,payment_date)
values (10003,103,10000,'pending','upi','2025-11-02');

insert into student_payment_table(payment_id,student_id,amount,fee_status,payment_mode,payment_date)
values (10004,104,45000,'fully paid','cash','2026-08-15');

insert into student_payment_table(payment_id,student_id,amount,fee_status,payment_mode,payment_date)
values (10005,105,20000,'pending','cash','2025-09-24');

insert into student_payment_table(payment_id,student_id,amount,fee_status,payment_mode,payment_date)
values (10006,106,30000,'pending','upi','2026-04-01');

insert into student_payment_table(payment_id,student_id,amount,fee_status,payment_mode,payment_date)
values (10007,107,30000,'fully paid','upi','2025-01-31');

insert into student_payment_table(payment_id,student_id,amount,fee_status,payment_mode,payment_date)
values (10008,108,10000,'pending','cash','2026-03-27');

insert into student_payment_table(payment_id,student_id,amount,fee_status,payment_mode,payment_date)
values (10009,109,25000,'fully paid','upi','2025-10-20');

insert into student_payment_table(payment_id,student_id,amount,fee_status,payment_mode,payment_date)
values (10010,110,35000,'pending','cash','2026-12-21');

create table placement(
placement_id int unique,
student_id int,
company_name varchar(30),
package varchar(20),
placement_status varchar(30)
);

desc placement;

insert into placement(placement_id,student_id,company_name,package,placement_status)
values(100001,101,'zoho','15 LPA','Selected'),
(100002,102,'TCS','6 LPA','Not Selected'),
(100003,103,'cognizant','4.5LPA','Selected'),
(100004,104,'wipro','3 LPA','Not Selected'),
(100005,105,'google','10 LPA','Selected'),
(100006,106,'TCS','5 LPA','Not Selected'),
(100007,107,'zoho','12 LPA','Selected'),
(100008,108,'wipro','4 LPA','Not Selected'),
(100009,109,'TCS','6.5 LPA','Selected'),
(100010,110,'cognizant','8.5 LPA','Selected');

select * from placement;



