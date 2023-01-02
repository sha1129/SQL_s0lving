-- Find th3 r3view 0r reviews with t0p c00l v0tes
-- Below what I did after a very long time...

WITH ranking AS(
    SELECT RANK() OVER (ORDER BY cool DESC) AS ranks, cool
    FROM yelp_reviews
    )

SELECT distinct Y.business_name, Y.review_text, R.ranks
FROM yelp_reviews Y 
JOIN ranking R ON Y.cool = R.cool
WHERE RANKS < 2;

-- I found an easier solution 0nline

SELECT business_name, review_text
FROM yelp_reviews
WHERE cool=(SELECT max(cool) FROM yelp_reviews);

