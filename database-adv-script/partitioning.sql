-- 1. Create a new partitioned table 'partitioned_bookings' partitioned by RANGE on 'start_date'

CREATE TABLE partitioned_bookings (
    booking_id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    property_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    booking_date TIMESTAMP NOT NULL
) PARTITION BY RANGE (start_date);

-- 2. Create partitions for specific date ranges

CREATE TABLE partition_2023 PARTITION OF partitioned_bookings
    FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');

CREATE TABLE partition_2024 PARTITION OF partitioned_bookings
    FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

CREATE TABLE partition_2025 PARTITION OF partitioned_bookings
    FOR VALUES FROM ('2025-01-01') TO ('2026-01-01');

-- 3. Migrate data from the original 'bookings' table to the new partitioned table

INSERT INTO partitioned_bookings (booking_id, user_id, property_id, start_date, end_date, booking_date)
SELECT booking_id, user_id, property_id, start_date, end_date, booking_date FROM bookings;

-- 4. Test query performance by selecting bookings within a date range using EXPLAIN ANALYZE

EXPLAIN ANALYZE
SELECT * FROM partitioned_bookings
WHERE start_date BETWEEN '2024-03-01' AND '2024-03-31';
