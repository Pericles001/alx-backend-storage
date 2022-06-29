-- Script that creates a table users
CREATE IF NOT EXISTS TABLE users (
    id INT NOTNULL AUTOINCREMENT PRIMARY KEY,
    email VARCHAR(255) NOTNULL UNIQUE,
    name VARCHAR(255),
    country ENUM('US', 'CO', 'TN') NOTNULL
);
