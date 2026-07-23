# Window function
#----------------

#A window function performs calculations across a set of rows while keeping every row in the result.

#this functions are particularly used in calculating running totals, rankings or other analytical calculations that require context  from surrounding rows.

#key concepts:
#-------------

#window - set of rows a window function operates on defined by an OVER CLAUSE
#current row - row on which the window function being is the evaluated
#over clause - specifies how to define the window,including options like PARTITION BY(for grouping rows) and order by (for sorting within the window) 

#Types of Window functions
#--------------------------

#1.aggregate window functions
#----------------------------
# sum, avg, min, max, count

#2.non - aggregate window functions
#------------------------------------

#1. analytical - lag,lead,first_value,last_value,ntile
#2. ranking - rank,dence_rank,row_number

#Unlike GROUP BY, it does not combine rows into one row.

#Without Window Function (GROUP BY)
#-------------------------------------

select student_name,city,count(*) from students group by city;

select * from students;
use rsa;
select sum(fees) as Total_fees from students;

# with window function (GROUP BY)
#-------------------------------
select student_name,city,count(*) over(partition by city) from students; 

# 1.SUM()
#-------------
#Running Total

select student_name,fees,sum(fees) over(order by student_id) as Total_fees from students;

#2. AVG() 
#------------
#average fee

select student_name,fees,avg(fees) over() as avg_fees from students;

#3. COUNT()
#--------------
#count students in each city

select student_name,city,count(*) over(partition by city) as total_students from students; 

#4. Max()
#-----------
#highest fee in each city

select student_name,fees,max(fees) over(partition by city) as max_fee from students;

#5.MIN()
#----------
#lowest fee in each city

select student_name,fees,min(fees) over(partition by city) as min_fee from students;

#1. ROW_NUMBER
#----------------------
#Assigns a unique number to each row

select student_name,fees,row_number() over(order by fees desc) as row_no from students;

#2.RANK()
#----------
#same values receive the same rank

select student_name,fees,rank() over(order by fees desc) as ranking from students;
 
 #Notice rank 2 and 3 are skipped
 
 #3.DENSE_RANK()
 #---------------
 #No skipped ranks
 
 select student_name,fees,dense_rank() over(order by fees desc) as ranking from students;
 
 #4.LAG()
 #------------
 #previous student's fee.
 
 select student_name,fees,LAG(fees) over(order by student_id) as previous_fee from students;
 
 #5.LEAD()
 #------------------
 #Next student's fee
 
 select student_name,fees,lead(fees) over(order by student_id) as next_fee from students;
 
 #6.FIRST_VALUE()
 #-------------------
 #highest fee
 
 select student_name,fees,first_value(fees) over(order by fees desc) as highest_fee from students;
 
 #.LAST_VALUE()
 #-------------------------
 #lowest fee
 
  select student_name,fees,last_value(fees) 
  over(order by fees desc
  rows between unbounded preceding and unbounded following) as lowest_fee from students;

select student_name, last_value(fees) over(order by fees) as lowest_fee from students;