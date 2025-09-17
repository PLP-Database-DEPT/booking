-- Create Database
CREATE DATABASE trainbookingDB;

-- Use the database
USE trainbookingDB;
-- ===================================================
-- PASSENGER TABLE
-- ===================================================
-- Description: The passenger table stores personal and login details 
-- for passengers using the system. Each record includes the passenger's 
-- name, email address, and password. This table is used for identifying 
-- users and managing authentication.
-- ===================================================

CREATE TABLE passenger (
    id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email_address VARCHAR(100),
    password VARCHAR(100)
);
