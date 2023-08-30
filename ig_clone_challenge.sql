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
