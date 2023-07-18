CREATE TABLE shirts (
    shirt_id INT PRIMARY KEY AUTO_INCREMENT,
    article VARCHAR(20),
    color VARCHAR(20),
    shirt_size VARCHAR(5),
    last_worn INT
);
    
SELECT 
    *
FROM
    shirts;

INSERT INTO shirts (article, color, shirt_size,last_worn)
VALUES
('t-shirt', 'white', 'S', 10),
('t-shirt', 'green', 'S', 200),
('polo shirt', 'black', 'M', 10),
('tank top', 'blue', 'S', 50),
('t-shirt', 'pink', 'S', 0),
('polo shirt', 'red', 'M', 5),
('tank top', 'white', 'S', 200),
('tank top', 'blue', 'M', 15);

INSERT INTO shirts (article, color, shirt_size,last_worn)
VALUES
('t-shirt', 'purple', 'M', 50);

-- Select onlt article and color
SELECT 
    article, color
FROM
    shirts;

-- return only medium size
SELECT 
    article, color, shirt_size, last_worn
FROM
    shirts
WHERE
    shirt_size = 'M';
    
-- Update all polo shirts to Large
UPDATE shirts SET shirt_size = 'L' WHERE article = 'polo shirt';

-- Update the shirt last worn 15 days ago to 0
UPDATE shirts SET last_worn = 0 WHERE last_worn = 15;

-- Update all white shirts to XS and color 'off white
UPDATE shirts SET shirt_size = 'XS' and color = 'off white' WHERE color = 'white';

-- Delete all old shirts last worn 200 days ago
DELETE FROM shirts WHERE last_worn = 200;

-- Delete all tank tops
DELETE FROM shirts WHERE article = 'tank top';

DROP TABLE shirts;
