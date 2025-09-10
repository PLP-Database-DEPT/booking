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

-- Creating journey_carriage table
CREATE TABLE journey (
id INT PRIMARY KEY,
journey_date DATE NOT NULL
);

CREATE TABLE journey_carriage (
    journey_id INT NOT NULL,           
    carriage_class_id INT NOT NULL,    
    position INT NOT NULL,             
    FOREIGN KEY (journey_id) REFERENCES journey(id),
    FOREIGN KEY (carriage_class_id) REFERENCES carriage_class(id)
);


