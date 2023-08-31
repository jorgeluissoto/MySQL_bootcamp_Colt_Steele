-- IG Data challenge

SELECT 
    *
FROM
    users
ORDER BY created_at
LIMIT 5;

/* What day of the week do most users register on?
We need to figure out when to schedule an ad campaign */
SELECT 
    COUNT(id) AS users, DAYNAME(created_at) AS day_of_week
FROM
    users
GROUP BY 2
ORDER BY 1 DESC
LIMIT 2;

/* We want to target our inactive users with an email campaign.
Find the users who have never posted a photo */
SELECT 
    username
FROM
    users
        LEFT JOIN
    photos ON users.id = photos.user_id
WHERE
    photos.id IS NULL;
    
/* we are running a new contest to see who can get the most likes on a single photo
who won? */
SELECT 
    username,
    photos.id,
    photos.image_url,
    photos.id,
    COUNT(*) AS total
FROM
    photos
        INNER JOIN
    likes ON likes.photo_id = photos.id
        INNER JOIN
    users ON photos.user_id = users.id
GROUP BY photos.id
ORDER BY total DESC
LIMIT 1;

/* Our investors want to know. How many times does the average
user post? */
SELECT 
    (SELECT 
            COUNT(*)
        FROM
            photos) / (SELECT 
            COUNT(*)
        FROM
            users) AS avg; 

/* A brand wants to know which hashtags to use in a post
What are the top 5 most commonly used hastags? */
SELECT *
FROM tags;

SELECT *
FROM photo_tags;

SELECT 
    tag_name, COUNT(*) AS number_of_tags
FROM
    photo_tags
        JOIN
    tags ON tag_id = tags.id
GROUP BY 1
ORDER BY 2 DESC
LIMIT 5;

/* We have a small problem with bots on our site...
Find users who have liked every single photo on the site */
SELECT 
    COUNT(*) AS num_likes, username
FROM
    likes
        JOIN
    users ON users.id = user_id
GROUP BY 2
HAVING num_likes = (SELECT 
        COUNT(*)
    FROM
        photos);
