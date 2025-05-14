-- Objective: Refactor complex queries to improve performance.
-- initial query that retrieves all bookings along with,
-- the user details, property details, and payment details
SELECT
    Booking.id,
    Booking.start_date,
    Booking.end_date,
    Booking.total_price,
    Booking.status,
    User.user_id,
    User.first_name,
    User.last_name,
    User.email,
    Property.property_id,
    Property.description,
    Property.location,
    Payment.payment_id,
    Payment.amount,
    Payment.payment_method,
    Payment.end_date
FROM
    Booking
INNER JOIN User ON Booking.user_id = User.user_id
INNER JOIN Property ON Booking.property_id = Property.property_id
LEFT JOIN Payment ON Booking.payment_id = Payment.payment_id