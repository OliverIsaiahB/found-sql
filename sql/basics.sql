-- SELECT chooses which COLUMNS to return; * means all columns.
SELECT * FROM books;

-- Choose specific columns by listing them.
SELECT title, price FROM books;

-- WHERE filters which ROWS come back — only the ones matching the condition.
SELECT title, price
FROM books
WHERE genre = 'tech';

-- Conditions can compare numbers, too.
SELECT title, price
FROM books
WHERE price < 20.0;
