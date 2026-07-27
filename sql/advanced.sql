-- LEFT JOIN keeps EVERY book, even ones with no sales (quantity is NULL there).
SELECT
    books.title,
    sales.quantity
FROM books
LEFT JOIN sales ON books.id = sales.book_id;

-- Find books that have NEVER sold: their sale side is NULL after a LEFT JOIN.
SELECT books.title
FROM books
LEFT JOIN sales ON books.id = sales.book_id
WHERE sales.id IS NULL;

-- A SUBQUERY: a query nested inside another. Books that HAVE sold,
-- via a list of distinct book_ids from the sales table.
SELECT title
FROM books
WHERE id IN (SELECT DISTINCT book_id FROM sales);
