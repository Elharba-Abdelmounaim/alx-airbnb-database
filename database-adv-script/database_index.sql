-- Create index on user_id in bookings table to optimize JOIN and WHERE queries
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Create index on property_id in bookings table to speed up property-related queries
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Create index on email in users table for faster lookups by email
CREATE INDEX idx_users_email ON users(email);

-- Create index on city in properties table to improve search performance by city
CREATE INDEX idx_properties_city ON properties(city);
