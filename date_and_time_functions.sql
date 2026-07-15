#Date and time functions
#------------------------
use rsa;
select * from students;
select day(joining_date) from students;
select dayname(joining_date) from students;
select dayofyear(joining_date) from students;
select month(joining_date) from students;
select monthname(joining_date) from students;
select week(joining_date) from students;
select year(joining_date) from students;
select yearweek(joining_date) from students;

#display the current date
#-------------------------
select current_date();
select curdate();

#display current time
#----------------------
select current_time();
select curtime();

#display current date and time
#-----------------------------
select now();

#display current year
#---------------------
select year(current_date());

#display all students name along with the joining year
#------------------------------------------------------
select student_name,year(joining_date) from students;

#display all students name along with the joining month
#-------------------------------------------------------
select  student_name ,month(joining_date) from students;

#display all students name along with the joining month name
#-----------------------------------------------------------
select  student_name ,monthname(joining_date) as month_name from students;

#display the joining day of each student
#----------------------------------------
select student_name, day(joining_date) from students;

#display the joining day name of each student
#--------------------------------------------
select student_name, dayname(joining_date) from students;

# find students who joined in the year 2025
#-------------------------------------------
select * from students where year(joining_date) = 2025;

#find students who joined in april
#----------------------------------
select * from students where month(joining_date) = 4;

# find students who joined on monday
#------------------------------------
select * from students where dayname(joining_date) = 'monday';

# display the number of days since each student joined
#-----------------------------------------------------
select student_name, datediff(curdate(),joining_date) from students;

# display today's date after adding 30 days
#-------------------------------------------
select date_add(curdate(),interval 30 day);

# display today date before 15 days
#----------------------------------
select date_sub(curdate(),interval 15 day);

#display the joining date in 'DD-MM-YYYY' format
#-----------------------------------------------
select student_name,date_format(joining_date,'%d-%m-%y') as joining_date from students;

#display the joining date in 'MM-DD-YYYY' format
#------------------------------------------------
select student_name,date_format(joining_date,'%M-%d-%y') as joining_date from students; -- %m shows the month in number format ,%M shows the month in name 
select student_name,date_format(joining_date,'%M-%D-%Y') as joining_date from students;

# find students who joined between last 365 days
#-----------------------------------------------
select * from students where joining_date>=date_sub(curdate(),interval 365 day);

#display the last day of joining month 
#--------------------------------------
select student_name, last_day(joining_date) from students;

# calculate how many months each student has scheduled
#-----------------------------------------------------
select student_name, timestampdiff(month,joining_date,curdate()) from students;
select student_name, timestampdiff(day,joining_date,curdate()) from students;

#display the quarter of the joining date
#----------------------------------------
select student_name, quarter(joining_date) from students;
