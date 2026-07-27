-- A NORMALIZED design: each real-world thing gets its own table, and
-- relationships are expressed with foreign keys — no duplicated facts.

-- Authors live in ONE place. Edit a name here and every book follows.
CREATE TABLE authors (
    id    INTEGER PRIMARY KEY,
    name  TEXT NOT NULL,
    country TEXT
);

-- Each book points at its author via a foreign key (a one-to-many link:
-- one author, many books).
CREATE TABLE books (
    id         INTEGER PRIMARY KEY,
    title      TEXT    NOT NULL,
    genre      TEXT    NOT NULL,
    price      REAL    NOT NULL,
    author_id  INTEGER NOT NULL,
    FOREIGN KEY (author_id) REFERENCES authors(id)
);

-- Sales still point at a book — a second one-to-many relationship.
CREATE TABLE sales (
    id        INTEGER PRIMARY KEY,
    book_id   INTEGER NOT NULL,
    quantity  INTEGER NOT NULL,
    FOREIGN KEY (book_id) REFERENCES books(id)
);
