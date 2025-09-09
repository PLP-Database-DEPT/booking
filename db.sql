-- Create Database
CREATE DATABASE trainbookingDB;

-- Use the database
USE trainbookingDB;

CREATE TABLE train_station(
  id INT AUTO_INCREMENT PRIMARY KEY,
  station_name VARCHAR(255) NOT NULL
);
