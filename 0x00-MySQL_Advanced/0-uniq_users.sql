-- Script that creates a table users
CREATE IF NOT EXISTS TABLE users (
    id INT NOT NULL AUTOINCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    name VARCHAR(255)
);
