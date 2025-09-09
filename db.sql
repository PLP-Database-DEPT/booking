-- Create Database
CREATE DATABASE trainbookingDB;

-- Use the database
USE trainbookingDB;

--booking table stores and ticket details
CREATE  TABLE booking (
    -> id INT AUTO_INCREMENT PRIMARY KEY,
    -> passenger_id INT NOT NULL,
    -> position INT NOT NULL,
    -> status_id INT NOT NULL,
    -> booking_date DATE,
    -> starting_station_id INT,
    -> ending_station_id INT,
    -> train_journey_id INT,
    -> ticket_class_id INT,
    -> amount_paid DECIMAL(10,2) NOT NULL,
    -> ticket_no INT NOT NULL,
    -> seat_no INT NOT NULL,
    -> -- Foreign Key relationships
    -> FOREIGN KEY (passenger_id) REFERENCES passenger(id),
    -> FOREIGN KEY (status_id) REFERENCES booking_status(id),
    -> );
