-- 1. INNER JOIN to get bookings and respective users
SELECT
    bookings.id AS booking_id,
    bookings.property_id,
    bookings.booking_date,
    users.id AS user_id,
    users.name AS user_name,
    users.email
FROM
    bookings
INNER JOIN
    users ON bookings.user_id = users.id;


-- 2. LEFT JOIN to get properties and their reviews (even if no reviews)
SELECT
    properties.id AS property_id,
    properties.name AS property_name,
    reviews.id AS review_id,
    reviews.rating,
    reviews.comment
FROM
    properties
LEFT JOIN
    reviews ON properties.id = reviews.property_id;
ORDER BY
    properties.id;


-- 3. FULL OUTER JOIN to get all users and all bookings (linked or not)
SELECT
    users.id AS user_id,
    users.name AS user_name,
    bookings.id AS booking_id,
    bookings.property_id,
    bookings.booking_date
FROM
    users
FULL OUTER JOIN
    bookings ON users.id = bookings.user_id;

