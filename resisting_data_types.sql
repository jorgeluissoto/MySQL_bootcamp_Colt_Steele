-- Revisiting Data Types

CREATE TABLE people (
    name VARCHAR(100),
    birthdate DATE,
    birthtime TIME,
    birthdt DATETIME
);
 
INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Elton', '2000-12-25', '11:00:00', '2000-12-25 11:00:00');
 
INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Lulu', '1985-04-11', '9:45:10', '1985-04-11 9:45:10');
 
INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Juan', '2020-08-15', '23:59:00', '2020-08-15 23:59:00');

SELECT 
    *
FROM
    people;
    
-- Current Time & Date
SELECT CURTIME();
 
SELECT CURDATE();
 
SELECT NOW();
 
INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Hazel', CURDATE(), CURTIME(), NOW());

SELECT 
    *
FROM
    people;
    
-- Date Functions
SELECT 
    birthdate,
    DAY(birthdate),
    DAYOFWEEK(birthdate),
    DAYOFYEAR(birthdate)
FROM
    people;
 
SELECT 
    birthdate, MONTHNAME(birthdate), YEAR(birthdate)
FROM
    people;

-- Time Fuction
SELECT 
    birthtime, HOUR(birthtime), MINUTE(birthtime)
FROM
    people;
 
SELECT 
    birthdt,
    MONTH(birthdt),
    DAY(birthdt),
    HOUR(birthdt),
    MINUTE(birthdt)
FROM
    people;

-- Formatting Dates
SELECT 
    birthdate, DATE_FORMAT(birthdate, '%a %b %D')
FROM
    people;
 
SELECT 
    birthdt, DATE_FORMAT(birthdt, '%H:%i')
FROM
    people;
 
SELECT 
    birthdt, DATE_FORMAT(birthdt, 'BORN ON: %r')
FROM
    people;

-- Date Math
SELECT 
    birthdate
FROM
    people;

SELECT 
    DATEDIFF(CURDATE(), birthdate)
FROM
    people;

SELECT DATE_ADD(CURDATE(), INTERVAL 1 YEAR);

SELECT DATE_SUB(CURDATE(), INTERVAL 1 MONTH);

-- When will I turn 18 so I can vote
SELECT 
    birthdate, DATE_ADD(birthdate, INTERVAL 18 YEAR)
FROM
    people;
    
-- How long have I been awake
SELECT TIMEDIFF(CURTIME(), '7:00:00');

-- When did someone turn 18 from todays date
SELECT NOW() - INTERVAL 18 YEAR;

-- Is someone 21 years old today
SELECT 
    name, birthdate, birthdate + INTERVAL 21 YEAR
FROM
    people;
    
SELECT 
    name,
    birthdate,
    YEAR(birthdate + INTERVAL 21 YEAR) AS Will_be_21
FROM
    people;

-- Default & ON UPDATE Timestamps
CREATE TABLE captions (
    text VARCHAR(150),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO captions (text) VALUES ('just me and the kids');

SELECT 
    *
FROM
    captions;

-- On UPDATE
CREATE TABLE captions2 (
    text VARCHAR(150),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO captions2 (text) VALUES ('just love kids');

SELECT 
    *
FROM
    captions2;

SET sql_safe_updates = 0;

UPDATE captions2 
SET 
    text = 'i love my kids';

SELECT 
    *
FROM
    captions2;

SET sql_safe_updates = 1;

-- EXERCISE
/* Good use case for CHAR */
SELECT CURTIME();

-- Print out current date
SELECT CURDATE();

-- Current day of week
SELECT DAYOFWEEK(CURDATE());

SELECT DAYOFWEEK(NOW());

-- Current day of the week
SELECT DAYNAME(NOW());

-- Print out the current day and time in this format mm/dd/yyyy
SELECT DATE_FORMAT(CURDATE(), '%c/%d/%Y');

-- Create a tweets table
/* the Tweet content, A username, and time it was creates */
CREATE TABLE tweets (
    text VARCHAR(140),
    user_name VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
    
INSERT INTO tweets (text,user_name) VALUES
	('Hello Elon', 'jls');

SELECT 
    *
FROM
    tweets;
