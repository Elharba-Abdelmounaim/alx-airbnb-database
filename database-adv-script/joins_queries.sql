-- 1. INNER JOIN to get bookings and respective users
SELECT 
    bookings.id AS booking_id,
    users.id AS user_id,
    users.name AS user_name,
    bookings.property_id,
    bookings.start_date,
    bookings.end_date
FROM bookings
INNER JOIN users ON bookings.user_id = users.id;

-- 2. LEFT JOIN to get properties and their reviews (even if no reviews)
SELECT 
    properties.id AS property_id,
    properties.name AS property_name,
    reviews.id AS review_id,
    reviews.comment,
    reviews.rating
FROM properties
LEFT JOIN reviews ON reviews.property_id = properties.id;

-- 3. FULL OUTER JOIN to get all users and all bookings (linked or not)
SELECT 
    users.id AS user_id,
    users.name AS user_name,
    bookings.id AS booking_id,
    bookings.property_id,
    bookings.start_date
FROM users
FULL OUTER JOIN bookings ON users.id = bookings.user_id;
