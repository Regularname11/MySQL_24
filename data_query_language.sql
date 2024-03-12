USE people;

SELECT * FROM citizen;

-- Challenge 1 : using the 'citizen' table inside 'people' database , retrieve the highest salary 
 select MAX(salary) from Citizen; 
 select min(salary) from citizen;
 
SELECT MAX(salary)
FROM Citizen;

-- Challenge 2 : retrieve the records of top 5 highest salaries in the citizen table
select * from citizen 
order by salary asc
limit 5;


SELECT *
FROM Citizen
ORDER BY salary DESC
LIMIT 5;

-- Exercise 1 : fetch the top 5 least salaries of citizens from country 'CHINA'
-- HINT - make use of WHERE , ORDER BY and LIMIT clauses 

SELECT *
FROM Citizen
WHERE country = 'China'
ORDER BY salary
LIMIT 5;

select * from citizen
where country = 'china' 
order by salary desc
limit 10;

select * from citizen 
where country = 'finland'
order  by salary
limit 5;

-- Challenge 3 : retrieve all the names of all countries inside citizens table

SELECT DISTINCT(country) as 'Countries in this table'
FROM citizen;

select country from citizen;
select distinct(country) as 'countries' from citizen
order by country  asc;

/*
Challenge 4 : Using the Citizens table ,  fetch the names of first 50 unique countries in a sorted order .  
HINT - In this challenge , you have to apply ORDER BY on the country field . 
	   The result will be sorted according to the alphabetical order . 
*/

SELECT DISTINCT(country)
FROM Citizen
ORDER BY country
LIMIT 50;