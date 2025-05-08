-- Inserting sample Users
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at)
VALUES
    ('uuid-User-1', 'Azeez', 'Timi', 'Azeez@example.com', 'hashed_pwd1', '9032869793', 'host', DEFAULT),
    ('uuid-User-2', 'Dammy', 'Falade', 'Falade@example.com', 'hashed_pwd2', '7045984568', 'guest', DEFAULT),
    ('uuid-User-3', 'Gladys', 'Chi', 'Chi@example.com', 'hashed_pwd3', '8109786543', 'guest', DEFAULT);

-- Inserting sample properties
INSERT INTO Property (property_id, host_id, name, description, location, price_per_night, created_at, updated_at)
VALUES
    ('uuid-prop-1', 'uuid-User-1', 'Quillox', 'Luxury nightlife lounge and club', 'VI, Lagos', '500.00', DEFAULT, CURRENT_TIMESTAMP),
    ('uuid-prop-2', 'uuid-User-3', 'The Place', 'Lounge and Club', 'Ikeja, Lagos', '350.00', DEFAULT, CURRENT_TIMESTAMP);

-- Inserting sample bookings
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at)
VALUES
    ('uuid-book-1', 'uuid-prop-1', 'uuid-User-1', '2025-05-08', '2025-06-01', 3500.00, 'confirmed', DEFAULT),
    ('uuid-book-2', 'uuid-prop-2', 'uuid-User-3', '2025-06-08', '2025-07-01', 2000.00, 'pending', DEFAULT);

-- Inserting sample payment
INSERT INTO Payment (payment_id, booking_id, amount, payment_date, payment_method)
VALUES
    ('uuid-pay-1', 'uuid-book-1', 3500.00, '2025-04-28', 'credit_card'),
    ('uuid-pay-2', 'uuid-book-2', 2000.00, '2025-05-07', 'paypal');

-- Inserting sample reviews
INSERT INTO Review (review_id, property_id, user_id, rating, comment, created_at)
VALUES
    ('uuid-rev-1', 'uuid-prop-1', 'uuid-User-1', 4, 'Luxury lifestyle', DEFAULT),
    ('uuid-rev-2', 'uuid-prop-2', 'uuid-User-3', 5, 'Very soft and beautiful', DEFAULT);

-- Inserting sample message
INSERT INTO Message (message_id, sender_id, recipient_id, message_body, sent_at)
VALUES
    ('uuid-msg-1', 'uuid-User-1', 'uuid-User-2', 'Hi Dammy, Quilox is quite cool', DEFAULT),
    ('uuid-msg-1', 'uuid-User-2', 'uuid-User-1', 'Hi Azeez, The Place is hosting Asake this weekend', DEFAULT);