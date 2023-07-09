-- INSERT: The Basics
INSERT INTO cats (name, age)
VALUES ('Jetson', 7);

INSERT INTO cats (name, age)
VALUES ('Danny', 5);

SELECT 
    *
FROM
    cats;

-- Multi-Inserts
INSERT INTO cats (name, age)
VALUES 
	("Betty", 3),
	("Turkey", 1),
	("Potato Face", 6);
    
SELECT 
    *
FROM
    cats;

-- EXERCISE INSERTING VALUES
CREATE TABLE people (
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    age INT
);

INSERT INTO people (first_name, last_name, age)
VALUES
	('John','Smith',45),
    ('Jorge','Soto',38),
    ('Danny','Jackson',30);

DROP TABLE people;

-- Working with NOT NULL
CREATE TABLE cats2
(
	name VARCHAR(100) NOT NULL,
    age INT NOT NULL
);

-- Adding DEFAULT Values
CREATE TABLE cats3 (
    name VARCHAR(100) DEFAULT 'unnamed',
    age INT DEFAULT 99
);

INSERT INTO cats3 () VALUES();

SELECT 
    *
FROM
    cats3;

-- Protect against NULL values
CREATE TABLE cats4 (
    name VARCHAR(100) NOT NULL DEFAULT 'unnamed',
    age INT NOT NULL DEFAULT 99
);

-- Intro Primary Keys: Unnique Identifier
CREATE TABLE unique_cats (
    cati_id INT NOT NULL PRIMARY KEY,
    name VARCHAR(100),
    age INT
);
