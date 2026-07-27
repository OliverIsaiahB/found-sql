-- HAVING filters GROUPS by an aggregate — after GROUP BY has run.
SELECT genre, COUNT(*) AS books
FROM books
GROUP BY genre
HAVING COUNT(*) > 2;

-- WHERE and HAVING together: WHERE filters rows first, HAVING filters groups.
SELECT genre, AVG(price) AS avg_price
FROM books
WHERE year >= 2018          -- keep only recent books (per-row filter)
GROUP BY genre
HAVING AVG(price) > 20.0    -- keep only genres averaging over $20 (per-group)
ORDER BY avg_price DESC;
