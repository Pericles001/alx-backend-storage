-- Script that creates a table users
CREATE TABLE IF NOT EXISTS users (
    id INT NOTNULL AUTOINCREMENT PRIMARY KEY,
    email VARCHAR(255) NOTNULL UNIQUE,
    name VARCHAR(255)
);
