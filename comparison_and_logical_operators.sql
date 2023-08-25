-- Comparison & Logical Operators
-- NOT EQUAL
SELECT 
    *
FROM
    books
WHERE
    released_year != 2017;

-- NOT LIKE
SELECT 
    *
FROM
    books
WHERE
    title NOT LIKE '%e%';

-- GREATER THAN
SELECT 
    *
FROM
    books
WHERE
    released_year > 2005;
 
SELECT 
    *
FROM
    books
WHERE
    pages > 500;

-- LESS THAN OR EQUAL TO
SELECT 
    *
FROM
    books
WHERE
    pages < 200;
 
SELECT 
    *
FROM
    books
WHERE
    released_year < 2000;
 
SELECT 
    *
FROM
    books
WHERE
    released_year <= 1985;
    
-- Logical AND
SELECT 
    title, author_lname, released_year
FROM
    books
WHERE
    released_year > 2010
        AND author_lname = 'Eggers';
 
SELECT 
    title, author_lname, released_year
FROM
    books
WHERE
    released_year > 2010
        AND author_lname = 'Eggers'
        AND title LIKE '%novel%';

-- LOGICAL OR
SELECT 
    title, pages
FROM
    books
WHERE
    CHAR_LENGTH(title) > 30 AND pages > 500;
 
SELECT 
    title, author_lname
FROM
    books
WHERE
    author_lname = 'Eggers'
        AND released_year > 2010;
 
SELECT 
    title, author_lname, released_year
FROM
    books
WHERE
    author_lname = 'Eggers'
        OR released_year > 2010;
 
 
SELECT 
    title, pages
FROM
    books
WHERE
    pages < 200 OR title LIKE '%stories%';

-- BETWEEN
SELECT 
    title, released_year
FROM
    books
WHERE
    released_year <= 2015
        AND released_year >= 2004;
 
SELECT 
    title, released_year
FROM
    books
WHERE
    released_year BETWEEN 2004 AND 2014;

-- COMPARING DATES
SELECT 
    *
FROM
    people
WHERE
    birthtime BETWEEN CAST('12:00:00' AS TIME) AND CAST('16:00:00' AS TIME);
 
 
SELECT 
    *
FROM
    people
WHERE
    HOUR(birthtime) BETWEEN 12 AND 16;

-- THE IN OPERATORS
SELECT 
    title, author_lname
FROM
    books
WHERE
    author_lname = 'Carver'
        OR author_lname = 'Lahiri'
        OR author_lname = 'Smith';
 
SELECT 
    title, author_lname
FROM
    books
WHERE
    author_lname IN ('Carver' , 'Lahiri', 'Smith');
 
SELECT 
    title, author_lname
FROM
    books
WHERE
    author_lname NOT IN ('Carver' , 'Lahiri', 'Smith');
 
 
SELECT 
    title, released_year
FROM
    books
WHERE
    released_year >= 2000
        AND released_year % 2 = 1;

-- CASE
SELECT 
    title,
    released_year,
    CASE
        WHEN released_year >= 2000 THEN 'modern lit'
        ELSE '20th century lit'
    END AS genre
FROM
    books;
 
 
SELECT 
    title,
    stock_quantity,
    CASE
        WHEN stock_quantity BETWEEN 0 AND 40 THEN '*'
        WHEN stock_quantity BETWEEN 41 AND 70 THEN '**'
        WHEN stock_quantity BETWEEN 71 AND 100 THEN '***'
        WHEN stock_quantity BETWEEN 101 AND 140 THEN '****'
        ELSE '*****'
    END AS stock
FROM
    books;
 
 
SELECT 
    title,
    stock_quantity,
    CASE
        WHEN stock_quantity <= 40 THEN '*'
        WHEN stock_quantity <= 70 THEN '**'
        WHEN stock_quantity <= 100 THEN '***'
        WHEN stock_quantity <= 140 THEN '****'
        ELSE '*****'
    END AS stock
FROM
    books;

-- EXERCISE
/* Select all the book written before 1980 non inclusive */
SELECT 
    *
FROM
    books
WHERE
    released_year < 1980
        AND released_year != 1980;

/* select all books written by eggers or chabon */
SELECT 
    *
FROM
    books
WHERE
    author_lname IN ('Eggers' , 'Chabon');

/* Select all books written by leahiri published after 2000 */
SELECT 
    *
FROM
    books
WHERE
    author_lname = 'Lahiri'
        AND released_year > 2000;

/* Select all books with a page count between 100 and 200 */
SELECT 
    *
FROM
    books
WHERE
    pages BETWEEN 100 AND 200;

/* Select all books where the author_lname starts with a 'C' or 'S' */
SELECT 
    *
FROM
    books
WHERE
    author_lname LIKE 'C%'
        OR author_lname LIKE 'S%';
        
-- Case Statement
SELECT 
    title,
    author_lname,
    CASE
        WHEN title LIKE '%stories%' THEN 'Short Stories'
        WHEN
            title = 'Just Kids'
                OR title = 'A Heartbreaking Work of Staggering Genius'
        THEN
            'Memoir'
        ELSE 'Novel'
    END AS Type
FROM
    books;


SELECT author_fname, author_lname,
    CASE
        WHEN Number_of_Books = 1 THEN '1 Book'
        WHEN Number_of_Books = 2 THEN '2 Books'
        ELSE '3 Books'
    END AS Count
FROM (
    SELECT author_fname, author_lname, COUNT(*) AS Number_of_Books
    FROM books
    GROUP BY author_fname, author_lname
) AS subquery_alias;