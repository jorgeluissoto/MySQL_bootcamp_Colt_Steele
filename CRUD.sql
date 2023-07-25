-- Intro. CRUD
-- CREATE (INSERT INTO), READ (SELECT), UPDATE (), DELETE ()

-- New DataSet
DROP TABLE cats;

CREATE TABLE cats (
    cat_id INT AUTO_INCREMENT,
    name VARCHAR(100),
    breed VARCHAR(100),
    age INT,
    PRIMARY KEY (cat_id)
); 

INSERT INTO cats(name, breed, age) 
VALUES ('Ringo', 'Tabby', 4),
       ('Cindy', 'Maine Coon', 10),
       ('Dumbledore', 'Maine Coon', 11),
       ('Egg', 'Persian', 4),
       ('Misty', 'Tabby', 13),
       ('George Michael', 'Ragdoll', 9),
       ('Jackson', 'Sphynx', 7);

SELECT 
    *
FROM
    cats;

-- WHERE clause
SELECT 
    *
FROM
    cats
WHERE
    age = 4;

SELECT 
    name
FROM
    cats
WHERE
    age = 4;
    
-- case insentative
SELECT 
    *
FROM
    cats
WHERE
    name = 'egg';

-- Alias
SELECT 
    cat_id AS id, name
FROM
    cats;

-- UPDATE
UPDATE cats 
SET 
    breed = 'Shorthair'
WHERE
    breed = 'Tabby';

UPDATE cats 
SET 
    age = 14
WHERE
    name = 'Misty';

-- Update Exercise
SELECT 
    *
FROM
    cats;

UPDATE cats 
SET 
    name = 'Jack'
WHERE
    name = 'Jackson';
    
UPDATE cats 
SET 
    breed = 'British Shorthair'
WHERE
    name = 'Ringo'

UPDATE cats 
SET 
    age = 12
WHERE
    breed = 'Maine Coon'; 

-- DELETE
DELETE FROM cats 
WHERE
    name = 'Egg';

-- this code deletes all records but not the table
DELETE FROM cats;
