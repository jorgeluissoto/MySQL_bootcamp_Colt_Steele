-- Aggregate Functions

SELECT 
    COUNT(*)
FROM
    books;
 
SELECT 
    COUNT(author_lname)
FROM
    books;
 
SELECT 
    COUNT(DISTINCT author_lname)
FROM
    books;

-- Group By
SELECT 
    author_lname, COUNT(*)
FROM
    books
GROUP BY author_lname;
 
SELECT 
    author_lname, COUNT(*) AS books_written
FROM
    books
GROUP BY author_lname
ORDER BY books_written DESC;

-- MIN and MAX
SELECT 
    MAX(pages)
FROM
    books;
 
SELECT 
    MIN(author_lname)
FROM
    books;

-- Subqueries
SELECT 
    title, pages
FROM
    books
WHERE
    pages = (SELECT 
            MAX(pages)
        FROM
            books);
 
SELECT 
    MIN(released_year)
FROM
    books;
 
SELECT 
    title, released_year
FROM
    books
WHERE
    released_year = (SELECT 
            MIN(released_year)
        FROM
            books);

-- Grouping by multiple columns
SELECT 
    author_fname, author_lname, COUNT(*)
FROM
    books
GROUP BY author_lname , author_fname;
 
 
SELECT 
    CONCAT(author_fname, ' ', author_lname) AS author, COUNT(*)
FROM
    books
GROUP BY author;

-- Min and Max with GROUP BY
SELECT 
    author_lname, MIN(released_year)
FROM
    books
GROUP BY author_lname;
 
SELECT 
    author_lname, MAX(released_year), MIN(released_year)
FROM
    books
GROUP BY author_lname;
 
SELECT 
    author_lname,
    COUNT(*) AS books_written,
    MAX(released_year) AS latest_release,
    MIN(released_year) AS earliest_release,
    MAX(pages) AS longest_page_count
FROM
    books
GROUP BY author_lname;
 
SELECT 
    author_lname,
    author_fname,
    COUNT(*) AS books_written,
    MAX(released_year) AS latest_release,
    MIN(released_year) AS earliest_release
FROM
    books
GROUP BY author_lname , author_fname;

-- Sum
SELECT 
    SUM(pages)
FROM
    books;
 
SELECT 
    author_lname, COUNT(*), SUM(pages)
FROM
    books
GROUP BY author_lname;

-- AVG
SELECT 
    AVG(pages)
FROM
    books;
 
SELECT 
    AVG(released_year)
FROM
    books;
 
SELECT 
    released_year, AVG(stock_quantity), COUNT(*)
FROM
    books
GROUP BY released_year;

-- Exercise
-- Print the number of books in the database
SELECT 
    COUNT(*)
FROM
    books;
    
-- Print out how many books were released in each year
SELECT 
    released_year, COUNT(*)
FROM
    books
GROUP BY released_year;

-- Print out the total number of books in stock
SELECT 
    SUM(stock_quantity) AS books_in_stock
FROM
    books;

-- Find the avg release year for each author
SELECT 
    author_fname, author_lname, AVG(released_year)
FROM
    books
GROUP BY 1 , 2;

-- Find the full name of the author that wrote the longest book
SELECT 
    author_fname, author_lname, pages
FROM
    books
WHERE
    pages = (SELECT 
            MAX(pages)
        FROM
            books);
