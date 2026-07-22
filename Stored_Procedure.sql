# stored procedure
#------------------

# A Stored procedure is a precompiled collection of one or more SQL statements that is stored in the database and can be executed whenever needed.

#How stored procedure work
#-------------------------
#1.create the procedure
#2. The database stores it
#3.Call it whenever needed
#4.The database executes the SQL statements inside it
#5.The result is returned to the caller

#step 1: create a stored procedure
#----------------------------------

DELIMITER $$

CREATE PROCEDURE CreateFoodTable()
BEGIN
     create table Food(
     Food_ID int primary key auto_increment,
     Food_Name varchar(100) not null,
	 Category varchar(50),
     Price decimal(10,2),
     Quantity int,
     Expiry_Date date,
     Supplier_Name varchar(100)
     );
END $$
DELIMITER ;

create database food;
use food;
show databases ;

drop database food;
#step 2: Execute the stored procedure
#------------------------------------
call CreateFoodTable();

#Step 3: verify the table
#-------------------------
show tables;
desc Food;

insert into Food
(Food_Name, Category, Price, Quantity, Expiry_Date, Supplier_Name)
values
('Rice','Grains', 60.00, 100, '2027-01-15','ABC Traders'),
('Milk','Dairy',45.00, 50, '2026-07-25','Aavin'),
('Apple','Fruits',120.00, 30, '2026-07-30','Fresh Farm'),
('Bread','Bakery',35.00, 40, '2026-07-24','Modern Foods'),
('Eggs','Poultry',6.50, 200, '2026-08-10','Local Farm');

select * from Food;

#1.Insert a New Food Item
#-------------------------
Delimiter $$
create procedure AddFood(
     In p_Food_Name varchar(100),
     In p_category varchar(50),
     In p_Price decimal (10,2),
     In p_Quantity int,
     In p_Expiry_Date date,
     In p_Supplier_Name varchar(100)
)
begin 
     insert into Food
     (Food_Name,Category, Price, Quantity, Expiry_Date, Supplier_Name)
     values
     (p_Food_name, p_Category, p_Price, p_Quantity, p_Expiry_Date, p_Supplier_Name);
end $$
delimiter ;

call AddFood('orange','Fruit',90,25,'2026-08-15','Fresh Farm');

select * from Food;

# 2. Display all food items
#--------------------------
delimiter $$
create procedure ShowAllFood()
begin 
    select * from Food; 
end $$
delimiter ;

call ShowAllFood();

# 3.display only the suppliers name
#----------------------------------
delimiter $$
create procedure suppliers()
begin
     select Supplier_Name from Food;
end $$
delimiter ;

call suppliers();

#4. display the record whose supplier_name is fresh farm
#-----------------------------------------------------
delimiter $$
create procedure category()
begin
     select  * from Food where Supplier_Name='Fresh Farm';
end $$
delimiter ;

call category();

#5.display the maximum food quantity 
#------------------------------------
delimiter $$
create procedure max_quantity()
begin
    select Food_Name,Quantity from Food where Quantity = (select max(Quantity) as max_quantity from Food);
end $$
delimiter ;

call max_quantity();

#6 .display the minimum food quantity 
#------------------------------------
delimiter $$
create procedure min_quantity()
begin
    select Food_Name,Quantity from Food where Quantity = (select min(Quantity) as min_quantity from Food);
end $$
delimiter ;

call min_quantity();

#7.display the sum of the price
#------------------------------
delimiter $$
create procedure sum_price()
begin
     select sum(Price) as Total_Price from Food;
end $$
delimiter ;

call sum_price();

#8.display the date in ascending order
#-------------------------------------
delimiter $$
create procedure date_asc()
begin
     select * from Food order by Expiry_Date;
end $$
delimiter ;

call date_asc();