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
SELECT title, rental_rate,
		round(rental_rate * 0.30, 2) AS amount_increased, 
        round(rental_rate * 1.30, 2) AS new_rental_rate 
FROM film
WHERE round(rental_rate * 0.30, 2) >= 0.50
ORDER BY amount_increased DESC;

/****************************************************************************************************
Clay Rasmussen
Query 4: Write a query that reports the following:
- payment amount and date (MM-DD-YYYY)
- filter by payment date greater than 01-01-2006 inclusively and payment amount greater than 1.00
- sort the query by payment amount
- Note: to thoroughly test the query comment out the WHERE clause to verify the filter is working correctly
****************************************************************************************************/
SELECT amount, DATE_FORMAT(payment_date, '%m-%d-%y') AS 'payment_date'
FROM payment
WHERE payment_date >= '2006-01-01' && amount > '1.00'
ORDER BY amount;


