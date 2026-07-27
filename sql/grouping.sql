-- GROUP BY buckets rows by a key, then aggregates WITHIN each bucket.
SELECT genre, COUNT(*) AS book_count
FROM books
GROUP BY genre;

-- Several aggregates per group: count, average price, total stock per genre.
SELECT
    genre,
    COUNT(*)       AS books,
    AVG(price)     AS avg_price,
    SUM(in_stock)  AS total_stock
FROM books
GROUP BY genre
ORDER BY books DESC;
