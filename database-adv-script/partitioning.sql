-- Creating parent partitioned table
CREATE TABLE Booking_partitioned (
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    property_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    status VARCHAR(20),
    payment_id INT
) PARTITION BY RANGE(start_date);

-- Creating partition by year. ex: 2024 and 2025
CREATE TABLE Booking_2024 PARTITION OF Booking_partitioned
    FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

-- Test the performance of queries on the partitioned table (e.g., fetching bookings by date range).
EXPLAIN ANALYZE
SELECT * FROM Booking_partitioned
WHERE start_date BETWEEN '2024-05-14' AND '2024-11-14';