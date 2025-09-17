-- Create Database
CREATE DATABASE trainbookingDB;

-- Use the database
USE trainbookingDB;

CREATE TABLE carriage_class (
id INT PRIMARY KEY,                 
class_name VARCHAR(255) NOT NULL,
seating_capacity INT NOT NULL
);

CREATE TABLE booking_status (
    id INT PRIMARY KEY,          
    name VARCHAR(50) NOT NULL    
);

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


CREATE TABLE train_journey (
    id INT AUTO_INCREMENT PRIMARY KEY,
    schedule_id INT,
    name VARCHAR(255),
    FOREIGN KEY (schedule_id) REFERENCES schedule(id)
);

CREATE TABLE train_station(
  id INT AUTO_INCREMENT PRIMARY KEY,
  station_name VARCHAR(255) NOT NULL
);
CREATE TABLE journey_station (
    journey_id INT,
    station_id INT,
    stop_order INT,
    departure_time DATETIME,
    FOREIGN KEY (journey_id) REFERENCES train_journey(journey_id), 
    FOREIGN KEY (station_id) REFERENCES train_station(station_id) 
);

CREATE TABLE schedule (
	id INT PRIMARY KEY,
    name VARCHAR (50)
);

CREATE TABLE passenger (
    id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email_address VARCHAR(100),
    password VARCHAR(100)
);

CREATE TABLE carriage_price (
  schedule_id INT NOT NULL,
  carriage_class_id INT NOT NULL,
  price DECIMAL(10, 2) NOT NULL,
  FOREIGN KEY (schedule_id) REFERENCES schedule(schedule_id),
  FOREIGN KEY (carriage_class_id) REFERENCES carriage_class(carriage_class_id)
);
