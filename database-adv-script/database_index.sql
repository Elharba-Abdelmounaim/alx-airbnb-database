-- Measure performance before adding indexes
EXPLAIN ANALYZE
SELECT * FROM bookings WHERE user_id = 123;

-- Create indexes to improve performance
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Measure performance after adding indexes
EXPLAIN ANALYZE
SELECT * FROM bookings WHERE user_id = 123;
