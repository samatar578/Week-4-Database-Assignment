-- Week 4 Database Assignment: Advanced SQL Queries and Aggregations
-- File: answers.sql

USE sales;

-- Question 1: Total payment amount for each payment date (top 5 latest)
SELECT paymentDate, SUM(amount) AS totalAmount
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;

-- Question 2: Average credit limit per customer
SELECT customerName, country, AVG(creditLimit) AS averageCreditLimit
FROM customers
GROUP BY customerName, country;

-- Question 3: Total price of products ordered
SELECT productCode, quantityOrdered, SUM(quantityOrdered * priceEach) AS totalPrice
FROM orderdetails
GROUP BY productCode, quantityOrdered;

-- Question 4: Highest payment amount per check number
SELECT checkNumber, MAX(amount) AS highestAmount
FROM payments
GROUP BY checkNumber;