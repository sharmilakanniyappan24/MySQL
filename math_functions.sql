# math functions
#-----------------

select mod(23,7);
select pow(5,3);
select sqrt(189);
#cbrt -----> not exist in mysql
select round(12.6);
select round(12.35645,2);
select ceil(13.6);
select floor(13.9);
select log10(1000);

# string functions
#------------------
select length('sharmila');  -- length (returns the length of a string(in bytes))

select char_length('sharmila k'); -- character length (returns the number of characters)

select upper('sharmila');  -- converts uppercase

select lower('SHARMILA');  -- converts lowercase

select concat('shar','mila'); -- concatenate

select concat_ws('-',2026,'salem','01'); -- concatenate with separator

select left('sharmila',4); -- left characters

select right('sharmila',4);  -- right characters

select substring('sharmila',2,6); -- substring  ( extracts part of a string )

select reverse('sharmila'); -- reverse a string

select replace('i am a bad boy','bad','good'); -- replace text

select trim(' sharmila '); -- trim spaces

select ltrim(' sharmila ');  -- left trim spaces

select rtrim(' sharmila '); -- right trim spaces

select instr('myself sharmila','sharmila'); -- find position(finds position of first occurence)

select locate('sharmila','myself sharmila'); -- locate string(finds position of substring)

select position('h'in 'sharmila'); -- position function

select lpad('123','6','0'); -- left padding

select rpad('123','6','0'); -- right padding

select repeat('hlo','4'); -- repeat string

select concat('shar',space(3),'mila');  -- space function

select ascii(A); -- ascii value

select char(65); -- character from ascii 

select format (123456.89167,2); -- number formatting
