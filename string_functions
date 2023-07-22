-- String Functions

-- Create database
CREATE SCHEMA books;

CREATE TABLE books (
    book_id INT AUTO_INCREMENT,
    title VARCHAR(100),
    author_fname VARCHAR(100),
    author_lname VARCHAR(100),
    released_year INT,
    stock_quantity INT,
    pages INT,
    PRIMARY KEY (book_id)
);
 
INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES
('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);

SELECT 
    *
FROM
    books;

-- CONCAT
SELECT 
    CONCAT(author_fname,' ', author_lname) AS author_name
FROM
    books;
    
-- CONCAT_WS
SELECT 
    CONCAT_WS('-', title, author_fname, author_lname)
FROM
    books;

-- Substring
-- SELECT SUBSTRING('Hello World',start_positon,lenght_of_substring)
SELECT SUBSTRING('Hello World', 1, 4);

-- start at this point and run till the end
SELECT SUBSTRING('Hello World', 7);

-- negative number starts from the end of the string
SELECT SUBSTRING('Hello World', - 3, 1);

-- return the first 15 characters of the title
SELECT 
    SUBSTRING(title, 1, 15)
FROM
    books;

-- first chracter of author last name
SELECT 
    SUBSTRING(author_lname, 1, 1), author_lname
FROM
    books;

-- Combining string functions
SELECT 
    CONCAT(SUBSTRING(title, 1, 10), '...') AS Short_Title
FROM
    books;

-- REPLACE
-- REPLACE(str, from_str, to_str);
SELECT REPLACE('Hello World', 'Hell', '%$#@');
 
SELECT REPLACE('Hello World', 'l', '7');
 
SELECT REPLACE('Hello World', 'o', '0');
 
SELECT REPLACE('HellO World', 'o', '*');
 
SELECT 
    REPLACE('cheese bread coffee milk',
        ' ',
        ' and ');
 
SELECT 
    REPLACE(title, 'e ', '3')
FROM
    books;
 
SELECT 
    REPLACE(title, ' ', '-')
FROM
    books;

-- Reverse
SELECT REVERSE('Hello World');

SELECT CONCAT(author_fname, REVERSE(author_fname)) FROM books;

-- Char Length
SELECT CHAR_LENGTH('Hello World');
 
SELECT CHAR_LENGTH(title) as length, title FROM books;
 
SELECT author_lname, CHAR_LENGTH(author_lname) AS 'length' FROM books;
 
SELECT CONCAT(author_lname, ' is ', CHAR_LENGTH(author_lname), ' characters long') FROM books;

-- UPPER & LOWER
SELECT UPPER('Hello World');
 
SELECT LOWER('Hello World');
 
SELECT UPPER(title) FROM books;

SELECT CONCAT('I LOVE ',UPPER(title),' !!!')
FROM books;

-- Other String Functions
SELECT REPEAT('ha', 4);
 
SELECT TRIM('  pickle  ');

SELECT INSERT('Hello Bobby', 6, 0, 'There'); 

SELECT LEFT('omghahalol!', 3);

SELECT RIGHT('omghahalol!', 4);

-- String Functions Exercise

/* Reverse and Uppercase the following sentence */
SELECT REVERSE(UPPER('Why does cat look at me with such hurted'));

/* replace space with -> */
SELECT REPLACE(title, ' ' ,'->') AS Title
FROM books;

SELECT author_lname, REVERSE(author_lname)
FROM books;

SELECT CONCAT(UPPER(author_fname), '  ', UPPER(author_lname))
FROM books;

SELECT CONCAT(title, ' was released in ', released_year)
FROM books;

SELECT title, CHAR_LENGTH(title) AS character_count
FROM books;

SELECT 
	CONCAT(LEFT(title,10), '...') AS short_title,
    CONCAT(author_lname, ',', author_fname) AS author,
    CONCAT(stock_quantity, ' in stock') AS quantity
FROM books;
