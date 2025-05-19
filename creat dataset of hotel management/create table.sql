
-- Sample Data

INSERT INTO Hotels VALUES (1, 'Grand Palace', 'New York', 4.5);
INSERT INTO Hotels VALUES (2, 'Sea View Resort', 'Miami', 4.2);
INSERT INTO Hotels VALUES (3, 'Mountain Retreat', 'Denver', 4.8);

INSERT INTO Rooms VALUES (101, 1, '101', 'Deluxe', 200.00, TRUE);
INSERT INTO Rooms VALUES (102, 1, '102', 'Standard', 150.00, TRUE);
INSERT INTO Rooms VALUES (201, 2, '201', 'Suite', 300.00, TRUE);
INSERT INTO Rooms VALUES (301, 3, '301', 'Deluxe', 250.00, TRUE);

INSERT INTO Guests VALUES (1, 'John Doe', 'john@example.com', '1234567890');
INSERT INTO Guests VALUES (2, 'Jane Smith', 'jane@example.com', '0987654321');

INSERT INTO Bookings VALUES (1, 1, 101, '2024-06-01', '2024-06-05', 800.00);
INSERT INTO Bookings VALUES (2, 2, 201, '2024-06-10', '2024-06-12', 600.00);
