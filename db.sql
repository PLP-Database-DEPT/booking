-- Create Database
CREATE DATABASE trainbookingDB;

-- Use the database
USE trainbookingDB;

-- Create Table for Passenger
CREATE TABLE passenger (
    id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email_address VARCHAR(100),
    password VARCHAR(100)
);

-- create booking_status table
CREATE TABLE booking_status (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);