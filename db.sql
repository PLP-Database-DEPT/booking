-- Create Database
CREATE DATABASE trainbookingDB;

-- Use the database
USE trainbookingDB;

-- Create Table for Carriage Prices with Foreign Key Constraints
CREATE TABLE carriage_price (
  schedule_id INT NOT NULL,
  carriage_class_id INT NOT NULL,
  price DECIMAL(10, 2) NOT NULL,
  -- Foreign key constraints
  FOREIGN KEY (schedule_id) REFERENCES schedule(schedule_id),
  FOREIGN KEY (carriage_class_id) REFERENCES carriage_class(carriage_class_id)
);