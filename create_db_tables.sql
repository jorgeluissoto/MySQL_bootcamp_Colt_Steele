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
