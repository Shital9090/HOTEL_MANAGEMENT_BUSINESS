
-- 1. List all available rooms along with their hotel names and prices.
SELECT R.room_number, R.room_type, R.price_per_night, H.name AS hotel_name
FROM Rooms R
JOIN Hotels H ON R.hotel_id = H.hotel_id
WHERE R.availability = TRUE;

-- 2. Which guests have booked rooms, and what are their check-in and check-out dates?
SELECT G.full_name, B.check_in_date, B.check_out_date
FROM Guests G
JOIN Bookings B ON G.guest_id = B.guest_id;

-- 3. What is the total amount paid by each guest?
SELECT G.full_name, SUM(P.amount_paid) AS total_paid
FROM Guests G
JOIN Bookings B ON G.guest_id = B.guest_id
JOIN Payments P ON B.booking_id = P.booking_id
GROUP BY G.full_name;

-- 4. Which services were used by guest 'John Doe'?
SELECT S.service_name, GS.service_date
FROM Guests G
JOIN GuestServices GS ON G.guest_id = GS.guest_id
JOIN Services S ON GS.service_id = S.service_id
WHERE G.full_name = 'John Doe';

-- 5. What are the details of employees working at the hotel 'Seaside Resort'?
SELECT E.full_name, E.position, E.salary
FROM Employees E
JOIN Hotels H ON E.hotel_id = H.hotel_id
WHERE H.name = 'Seaside Resort';

-- 6. Find the average rating of all hotels.
SELECT AVG(rating) AS average_rating
FROM Hotels;

-- 7. Which rooms are booked and not currently available?
SELECT R.room_number, R.room_type, H.name AS hotel_name
FROM Rooms R
JOIN Hotels H ON R.hotel_id = H.hotel_id
WHERE R.availability = FALSE;

-- 8. How many guests have used spa services?
SELECT COUNT(DISTINCT GS.guest_id) AS spa_users
FROM GuestServices GS
JOIN Services S ON GS.service_id = S.service_id
WHERE S.service_name = 'Spa';

-- 9. List the total income generated from bookings for each hotel.
SELECT H.name AS hotel_name, SUM(B.total_amount) AS total_income
FROM Hotels H
JOIN Rooms R ON H.hotel_id = R.hotel_id
JOIN Bookings B ON R.room_id = B.room_id
GROUP BY H.name;

-- 10. Which guest has spent the most on room bookings?
SELECT G.full_name, SUM(B.total_amount) AS total_spent
FROM Guests G
JOIN Bookings B ON G.guest_id = B.guest_id
GROUP BY G.full_name
ORDER BY total_spent DESC
LIMIT 1;
