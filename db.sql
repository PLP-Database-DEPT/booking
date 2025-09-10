-- Create Database
CREATE DATABASE trainbookingDB;

-- Use the database
USE trainbookingDB;

-- Creating carriage_class table
CREATE TABLE carriage_class (
id INT PRIMARY KEY,                 -- Unique identifier for each carriage class
class_name VARCHAR(255) NOT NULL,
seating_capacity INT NOT NULL
);


