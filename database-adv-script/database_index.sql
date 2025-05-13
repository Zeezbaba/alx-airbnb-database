-- User table indexes
CREATE UNIQUE INDEX idx_user_email ON User(email);
CREATE INDEX idx_user_id ON User(id);

-- Booking table indexes
CREATE INDEX idx_booking_user_id ON Booking(user_id);
CREATE INDEX idx_booking_property_id ON Booking(property_id)
CREATE INDEX idx_booking_dates ON Booking(start_date, end_date);

-- Property table indexes
CREATE INDEX idx_property_id ON Property(id);
CREATE INDEX idx_property_location ON Property(location);
CREATE INDEX Idx_property_host_id ON Property(host_id);