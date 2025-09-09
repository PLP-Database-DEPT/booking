-- Create Database
CREATE DATABASE trainbookingDB;

-- Use the database
USE trainbookingDB;

-- Phase 1: Core Tables Creation
-- Create Customers table
CREATE TABLE customers (
  customer_id INT PRIMARY KEY AUTO_INCREMENT,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  email VARCHAR(100) UNIQUE NOT NULL,
  phone VARCHAR(15),
  date_of_birth DATE,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Create Trains table
CREATE TABLE trains (
  train_id INT PRIMARY KEY AUTO_INCREMENT,
  train_number VARCHAR(20) UNIQUE NOT NULL,
  train_name VARCHAR(100) NOT NULL,
  total_seats INT NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create Stations table
CREATE TABLE stations (
  station_id INT PRIMARY KEY AUTO_INCREMENT,
  station_code VARCHAR(10) UNIQUE NOT NULL,
  station_name VARCHAR(100) NOT NULL,
  city VARCHAR(50) NOT NULL,
  state VARCHAR(50),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);