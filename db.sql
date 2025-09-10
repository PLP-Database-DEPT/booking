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

-- Create the booking table
CREATE TABLE booking (
    id INT PRIMARY KEY,
    passenger_id INT,
    position INT,
    status_id INT,
    booking_date DATE,
    starting_station_id INT,
    ending_station_id INT,
    train_journey_id INT,
    ticket_class_id INT,
    amount_paid DECIMAL(10, 2),
    ticket_no INT,
    seat_no INT,
    FOREIGN KEY (passenger_id) REFERENCES passenger(id),
    FOREIGN KEY (status_id) REFERENCES booking_status(id)
    FOREIGN KEY (starting_station_id) REFERENCES station(id),
    FOREIGN KEY (ending_station_id) REFERENCES station(id),
    FOREIGN KEY (train_journey_id) REFERENCES train_journey(id),
    FOREIGN KEY (ticket_class_id) REFERENCES ticket_class(id)
);

-- Create the carriage_price table
CREATE TABLE carriage_price (
    schedule_id INT,
    carriage_class_id INT,
    price DECIMAL(10, 2),
    PRIMARY KEY (schedule_id, carriage_class_id),
    FOREIGN KEY (schedule_id) REFERENCES schedule(id),
    FOREIGN KEY (carriage_class_id) REFERENCES carriage_class(id)
);

-- Create the journey_carriage table with the following columns:
-- journey_id (int) – Foreign Key
-- carriage_class_id (int) – Foreign Key
-- position (int)
-- Set appropriate foreign key relationships for journey_id and carriage_class_id.
CREATE TABLE journey_carriage (
    journey_id INT,
    carriage_class_id INT,
    position INT,
    PRIMARY KEY (journey_id, carriage_class_id),
    FOREIGN KEY (journey_id) REFERENCES train_journey(id),
    FOREIGN KEY (carriage_class_id) REFERENCES carriage_class(id)
);

-- Create the carriage_class table 
CREATE TABLE carriage_class (
    id INT PRIMARY KEY,
    class_name VARCHAR(50),
    seating_capacity INT
);

-- Create the schedule table 
CREATE TABLE schedule (
    id INT PRIMARY KEY,
    name VARCHAR(100)
);