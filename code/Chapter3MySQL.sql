/*****************************************************************
Names: Clay Rasmussen, Michael Szigethy
Date: 09-17-2026
Chapter 3 Assignment
GitHub URL: https://github.com/Clay-Rasmussen/MySQL_Chapter3
*****************************************************************/

/****************************************************************************************************
Clay Rasmussen
Query 1: Write a query that reports the following:
 - inactive customers
 - sorted by name (NOTE: if not stated, all order by clauses are the default ascending)
 - Note: to thoroughly test the query, temporarily change the WHERE clause to report active customers
****************************************************************************************************/
SELECT 
     customer_id, 
	 CONCAT(last_name, ', ', first_name) AS cust_name,
     email,
	 active
FROM customer
WHERE active = 0
ORDER BY last_name, first_name; 

/****************************************************************************************************
Clay Rasmussen
Query 2: Write a query that reports the following:
 - All customers with INVALID email addresses. A valid email address is the first name,
   a period, the last name, and @sakilacustomer.org. Example: debbie.johnson@sakilacustomer.org 
 - Note: to thoroughly test this query, temporarily change the WHERE clause to report VALID emails
****************************************************************************************************/
SELECT customer_id, first_name, last_name, email, active, create_date
FROM customer
WHERE email != CONCAT(first_name, '.', last_name, '@sakilacustomer.org');

/****************************************************************************************************
Michael Szigethy
Query 3: Write a query that reports the following:
- the current rental rate, what a 30% increase would be, and the new rental rate
- only report the ones that have a rental rate that increased by over $0.50
- order the report by amount increased descending
- round all calculated values to 2 decimal positions
- Note: to fully test this query, temporarily comment out the WHERE clause
****************************************************************************************************/
SELECT 
