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