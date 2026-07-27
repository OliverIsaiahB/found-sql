-- ORDER BY sorts the result rows. Default is ascending (smallest first).
SELECT title, price
FROM books
ORDER BY price;

-- DESC flips it to descending — biggest first.
SELECT title, price
FROM books
ORDER BY price DESC;

-- LIMIT caps how many rows return — combine with ORDER BY for "top N".
SELECT title, price
FROM books
ORDER BY price DESC
LIMIT 3;

-- Sort by more than one column: genre alphabetically, then price high-to-low.
SELECT genre, title, price
FROM books
ORDER BY genre ASC, price DESC;
