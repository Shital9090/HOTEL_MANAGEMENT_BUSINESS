
-- Hotels
INSERT INTO Hotels (hotel_id, name, location, rating) VALUES
(1, 'Grand Palace Hotel', 'New York', 4.5),
(2, 'Seaside Resort', 'Miami', 4.2),
(3, 'Mountain View Inn', 'Denver', 4.0);

-- Rooms
INSERT INTO Rooms (room_id, hotel_id, room_number, room_type, price_per_night, availability) VALUES
(1, 1, '101', 'Deluxe', 150.00, TRUE),
(2, 1, '102', 'Standard', 100.00, TRUE),
(3, 2, '201', 'Suite', 200.00, FALSE),
(4, 3, '301', 'Standard', 90.00, TRUE);

-- Guests
INSERT INTO Guests (guest_id, full_name, email, phone_number) VALUES
(1, 'John Doe', 'john.doe@example.com', '1234567890'),
(2, 'Jane Smith', 'jane.smith@example.com', '0987654321');

-- Bookings
INSERT INTO Bookings (booking_id, guest_id, room_id, check_in_date, check_out_date, total_amount) VALUES
(1, 1, 1, '2025-06-01', '2025-06-05', 600.00),
(2, 2, 4, '2025-06-10', '2025-06-12', 180.00);

-- Payments
INSERT INTO Payments (payment_id, booking_id, payment_date, amount_paid, payment_method) VALUES
(1, 1, '2025-06-01', 600.00, 'Credit Card'),
(2, 2, '2025-06-10', 180.00, 'Cash');

-- Employees
INSERT INTO Employees (employee_id, hotel_id, full_name, position, salary) VALUES
(1, 1, 'Alice Johnson', 'Manager', 55000.00),
(2, 2, 'Bob Lee', 'Receptionist', 35000.00),
(3, 3, 'Carlos Gomez', 'Chef', 40000.00);

-- Services
INSERT INTO Services (service_id, hotel_id, service_name, service_cost) VALUES
(1, 1, 'Room Cleaning', 25.00),
(2, 1, 'Spa', 100.00),
(3, 2, 'Breakfast Buffet', 15.00),
(4, 3, 'Gym Access', 10.00);

-- Guest Services
INSERT INTO GuestServices (guest_service_id, guest_id, service_id, service_date) VALUES
(1, 1, 1, '2025-06-02'),
(2, 1, 2, '2025-06-03'),
(3, 2, 4, '2025-06-11');
