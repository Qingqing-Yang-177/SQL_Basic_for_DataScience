-- Module 1 Coding Assign solutions

/* The database that we are using is Chinook database, 
Run `Chinook_MySql.sql`, get a `New Terminal`, 
Type `mysql< Chinook_MySql.sql` to create the Chinook database with all the tables and data required for the assignments
Type `mysql` to get into the mysql prompt 
Type `use Chinook` to start.

-- Retrieve all the records from the Employees table.

SELECT *
From Employees;

-- Retrieve the FirstName, LastName, Birthdate, Address, City, and State from the Employees table.

SELECT FirstName, LastName, Birthdate, Address, City, State 
From Employees;

-- Retrieve all the columns from the Tracks table, but only return 20 rows.
SELECT *
From Tracks
Limit 20;

