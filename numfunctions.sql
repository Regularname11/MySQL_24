USE people;

-- Function 1 : ROUND 
-- 'ROUND' function is used for rounding a Number

-- n+1 (>= n.5) next val , n < n.5 least
SELECT ROUND(4.5);

select round(4.4);
select round(4.6);

/*note*/
-- if the decimal value is >= 0.5 'ROUND' converts it into the closest greater number ,
-- if decimal value < 0.5 'ROUND' converts it into the closest least number .

-- 'ROUND' function also has an additional parameters called 'precision'

SELECT ROUND(4.6,2);

-- --------------------------------------------------------------------

-- Function 2 : TRUNCATE  
-- 'TRUNCATE' function is used to remove the digits in decimal value after the precision 

SELECT TRUNCATE(4.436,3);

-- keep the digits in decimal till 2 places and truncate/remove the rest 

-- --------------------------------------------------------------------

-- Function 3 : CEILING
-- 'CEILING'  returns the smallest integer that is greater than or equal to a given number 

SELECT CEILING(4.1);
select ceiling(4.7);

-- --------------------------------------------------------------------

-- Function 4 : FLOOR
-- 'FLOOR' is exact oppose to 'CEILING'
-- 'FLOOR' returns the largest integer that is smaller than or equal to a given number 

SELECT FLOOR(4.9);
select floor(4.1);

-- --------------------------------------------------------------------
 
-- Function 4 : ABS
-- 'ABS' stands for 'ABSOLUTE' value 
-- 'ABS' function returns , positive version of the number you give to it 

SELECT ABS(10); -- output is 10
SELECT ABS(-10); -- output is 10

-- --------------------------------------------------------------------

-- Function 5 : RAND 
-- 'RAND' function returns a random floating point value between the range 0 to 1

SELECT CEILING(RAND()*100);
SELECT RAND();

-- Exercise
-- Fetch id , first_name , last_name , salary of the person from citizens table 
-- where the salary field should be rounded to 1 decimal point 

SELECT id, first_name , last_name , ROUND(salary , 1) as 'Salary'
FROM Citizen;

select id, first_name, last_name, round(salary, 2) as salaries
from citizen;

-- Challenge 
-- Write an SQL query to fetch id , first_name , last_name , salary of the person
-- from citizens table where the salary field should be CEILED

SELECT id, first_name , last_name , CEILING(salary) as salary
FROM Citizen;

-- adding new link for more resources about numerical functions:
-- https://dev.mysql.com/doc/refman/8.3/en/numeric-functions.html