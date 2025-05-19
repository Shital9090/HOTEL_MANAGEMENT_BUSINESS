
-- Extended Schema for Hotel Management System

CREATE TABLE Hotels (
    hotel_id INT PRIMARY KEY,
    name VARCHAR(100),
    location VARCHAR(100),
    rating DECIMAL(2,1)
);

CREATE TABLE Rooms (
    room_id INT PRIMARY KEY,
    hotel_id INT,
    room_number VARCHAR(10),
    room_type VARCHAR(50),
    price_per_night DECIMAL(10,2),
    availability BOOLEAN,
    FOREIGN KEY (hotel_id) REFERENCES Hotels(hotel_id)
);

CREATE TABLE Guests (
    guest_id INT PRIMARY KEY,
    full_name VARCHAR(100),
    email VARCHAR(100),
    phone_number VARCHAR(15)
);

CREATE TABLE Bookings (
    booking_id INT PRIMARY KEY,
    guest_id INT,
    room_id INT,
    check_in_date DATE,
    check_out_date DATE,
    total_amount DECIMAL(10,2),
    FOREIGN KEY (guest_id) REFERENCES Guests(guest_id),
    FOREIGN KEY (room_id) REFERENCES Rooms(room_id)
);

CREATE TABLE Payments (
    payment_id INT PRIMARY KEY,
    booking_id INT,
    payment_date DATE,
    amount_paid DECIMAL(10,2),
    payment_method VARCHAR(50),
    FOREIGN KEY (booking_id) REFERENCES Bookings(booking_id)
);

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    hotel_id INT,
    full_name VARCHAR(100),
    position VARCHAR(50),
    salary DECIMAL(10,2),
    FOREIGN KEY (hotel_id) REFERENCES Hotels(hotel_id)
);

CREATE TABLE Services (
    service_id INT PRIMARY KEY,
    hotel_id INT,
    service_name VARCHAR(100),
    service_cost DECIMAL(10,2),
    FOREIGN KEY (hotel_id) REFERENCES Hotels(hotel_id)
);

CREATE TABLE GuestServices (
    guest_service_id INT PRIMARY KEY,
    guest_id INT,
    service_id INT,
    service_date DATE,
    FOREIGN KEY (guest_id) REFERENCES Guests(guest_id),
    FOREIGN KEY (service_id) REFERENCES Services(service_id)
);
