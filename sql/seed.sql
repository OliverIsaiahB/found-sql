-- A relational database stores data in TABLES: rows and named, typed columns.
-- This is the books table for a small bookstore.
CREATE TABLE books (
    id        INTEGER PRIMARY KEY,   -- a unique id for each book
    title     TEXT    NOT NULL,      -- the book's title (required)
    genre     TEXT    NOT NULL,      -- 'fiction' | 'tech' | 'history'
    price     REAL    NOT NULL,      -- price in USD
    year      INTEGER NOT NULL,      -- year published
    in_stock  INTEGER NOT NULL       -- copies currently in stock
);

INSERT INTO books (id, title, genre, price, year, in_stock) VALUES
    (1, 'The Quiet River',     'fiction', 14.99, 2019, 12),
    (2, 'Deep Learning Now',   'tech',    49.99, 2021,  3),
    (3, 'A Short History',     'history', 19.99, 2015,  0),
    (4, 'Rust in Practice',    'tech',    39.99, 2022,  7),
    (5, 'The Long Road',       'fiction',  9.99, 2018, 20),
    (6, 'Ancient Empires',     'history', 24.99, 2017,  5),
    (7, 'Async Patterns',      'tech',    44.99, 2023,  0),
    (8, 'Letters Home',        'fiction', 11.99, 2020, 15);

-- A second table: each sale refers to a book by its id (a FOREIGN KEY).
CREATE TABLE sales (
    id        INTEGER PRIMARY KEY,
    book_id   INTEGER NOT NULL,      -- points at books.id
    quantity  INTEGER NOT NULL,
    FOREIGN KEY (book_id) REFERENCES books(id)
);

INSERT INTO sales (id, book_id, quantity) VALUES
    (1, 2, 3),
    (2, 2, 1),
    (3, 5, 4),
    (4, 1, 2),
    (5, 4, 5),
    (6, 5, 1);
