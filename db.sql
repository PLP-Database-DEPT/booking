-- Create Database
CREATE DATABASE trainbookingDB;

-- Use the database
USE trainbookingDB;

-- Creating the journey_Station table
CREATE TABLE journey_station (
    journey_id INT,
    station_id INT,
    stop_order INT,
    departure_time DATETIME,
    FOREIGN KEY (journey_id) REFERENCES train_journey(journey_id), -- foreign key to the journey_id in the train_journey table
    FOREIGN KEY (station_id) REFERENCES train_station(station_id) -- foreign key to the station_id in the train_station table
);

-- creating the schedule table
CREATE TABLE schedule (
	id INT PRIMARY KEY,
    name VARCHAR (50)
);