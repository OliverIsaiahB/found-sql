-- Aggregate functions collapse MANY rows into ONE summary value.
SELECT COUNT(*) AS total_books FROM books;

-- SUM adds a column; AVG averages it; AS names the result column.
SELECT
    SUM(price)  AS total_price,
    AVG(price)  AS avg_price,
    MIN(price)  AS cheapest,
    MAX(price)  AS priciest
FROM books;

-- Aggregates respect WHERE: summarize only the rows that pass the filter.
SELECT COUNT(*) AS tech_books, AVG(price) AS avg_tech_price
FROM books
WHERE genre = 'tech';
