# HOTEL_MANAGEMENT_BUSINESS
# Hotel Management System - SQL Project

This project is a mini hotel management system implemented using SQL. It provides a comprehensive schema for managing hotel data, including hotels, rooms, guests, bookings, payments, employees, and services. It also includes sample data and commonly used queries for data analysis.

## 📁 Project Structure

- `create table.sql` - Contains SQL `INSERT` statements for sample data.
- `insert.sql` - Contains the full schema with `CREATE TABLE` statements.
- `hotel magement query.txt` - Includes 10 practical SQL queries for data retrieval and reporting.
- `scema.png` - Schema diagram for visual understanding (ERD).

## 🏨 Database Schema Overview

### Tables

- **Hotels**: Basic hotel info (ID, name, location, rating).
- **Rooms**: Each room's details linked to a hotel.
- **Guests**: Guest contact info.
- **Bookings**: Booking details connecting guests to rooms.
- **Payments**: Records of payments per booking.
- **Employees**: Staff working at hotels.
- **Services**: Extra services offered at hotels.
- **GuestServices**: Logs of services used by guests.

## 🧪 Sample Data

Example entries for hotels, rooms, guests, and bookings are provided in the `create table.sql` file to help with testing queries and exploring the schema.

## 🧾 Example SQL Queries

Some useful analytics and reporting queries include:

1. Guests with bookings and check-in dates.
2. Total bookings per hotel.
3. Guests without bookings.
4. Revenue per hotel.
5. Most popular room type.
6. Guests with high-value payments.
7. Booking history per guest.
8. Available rooms (not booked).
9. Room count per type per hotel.
10. Total spending per guest.

These are available in `hotel magement query.txt`.

## 🖼️ Schema Diagram

Refer to `scema.png` for a visual representation of table relationships.

## 💡 Getting Started

1. Create the database schema using `insert.sql`.
2. Populate with sample data using `create table.sql`.
3. Run queries from `hotel magement query.txt` to interact with the data.

