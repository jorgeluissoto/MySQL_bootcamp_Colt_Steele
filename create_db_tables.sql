show databases;

-- Creating databases
CREATE DATABASE pet_shop;
CREATE DATABASE SlimeStore;

-- Drop databases
DROP DATABASE pet_shop;

-- Use and selecting databases
USE SlimeStore;

-- Tables: Hold the data "a collection of related data held in a sturucture format"
USE pet_shop;

CREATE TABLE cats (
    name VARCHAR(100),
    age INT
);

CREATE TABLE dogs (
    name VARCHAR(100),
    bread VARCHAR(50),
    age INT
);

SELECT *
FROM cats;

SELECT *
FROM dogs;

-- How do we know it worked?
SHOW TABLES;

SHOW COLUMNS 
FROM cats;

DESC cats;

-- Dropping Tables
DROP TABLE cats;

-- Exercise: Create a pastries table
	-- it should include 2 columns: name and quantity. Name is 50 characters max.
    -- inspect your table/ column
    -- delete your table
CREATE TABLE pastries(
	name VARCHAR(50),
    quantity int);
    
SHOW TABLES;

DESC pastries;

DROP TABLES pastries;
