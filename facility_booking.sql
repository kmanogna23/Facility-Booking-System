/*CREATE DATABASE facility_booking;

USE facility_booking;

CREATE TABLE users(

    staff_no VARCHAR(10) PRIMARY KEY,

    name VARCHAR(50),

    password VARCHAR(50),

    role VARCHAR(20)

);

CREATE TABLE facility(

    facility_code VARCHAR(10) PRIMARY KEY,

    facility_name VARCHAR(50),

    facility_type VARCHAR(30),

    location VARCHAR(50),

    capacity INT,

    facilities_available VARCHAR(100),

    status VARCHAR(20)

);

CREATE TABLE bookings(

    booking_id INT PRIMARY KEY AUTO_INCREMENT,

    facility_code VARCHAR(10),

    staff_no VARCHAR(10),

    booked_date DATE,

    from_time TIME,

    to_time TIME,

    purpose VARCHAR(50),

    priority_type VARCHAR(20),

    status VARCHAR(20),

    FOREIGN KEY(facility_code)
    REFERENCES facility(facility_code),

    FOREIGN KEY(staff_no)
    REFERENCES users(staff_no)

);

INSERT INTO users
VALUES
('1001','Admin User','admin123','Admin'),

('1002','Manogna','user123','User');

INSERT INTO facility
VALUES

('FC001',
'Conference Hall',
'Conference Room',
'Block A',
100,
'Projector, AC',
'Available'),

('FC002',
'Computer Lab',
'Lab',
'Block B',
60,
'Systems, AC',
'Available');
*/
SELECT * FROM users;
/*
SHOW TABLES;
SELECT * FROM facility;

SELECT * FROM bookings;
*/
