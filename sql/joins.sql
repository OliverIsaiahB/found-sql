-- INNER JOIN matches rows from two tables on a shared key.
-- Each sale row is paired with the book it points at.
SELECT
    books.title,
    sales.quantity
FROM sales
JOIN books ON sales.book_id = books.id;

-- Join + aggregate: total quantity sold per book title.
SELECT
    books.title,
    SUM(sales.quantity) AS units_sold
FROM sales
JOIN books ON sales.book_id = books.id
GROUP BY books.title
ORDER BY units_sold DESC;
