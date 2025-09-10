-- Create Database
CREATE DATABASE trainbookingDB;

-- Use the database
USE trainbookingDB;

-- Create train_journey table
-- This table represents a single journey of a train, starting from one station 
-- at a specific time and ending at another station at a different time.
-- It stores key information about each journey including the schedule, 
-- name of the journey, and a unique identifier.
CREATE TABLE train_journey (
    id INT AUTO_INCREMENT PRIMARY KEY,
    schedule_id INT,
    name VARCHAR(255),
    FOREIGN KEY (schedule_id) REFERENCES schedule(id)
);
