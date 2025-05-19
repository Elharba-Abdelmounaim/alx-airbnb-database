SELECT user_id, COUNT(*) AS total_bookings
FROM bookings
GROUP BY user_id;

--
SELECT property_id, total_bookings,
       ROW_NUMBER() OVER (ORDER BY total_bookings DESC) AS row_num
FROM (
    SELECT property_id, COUNT(*) AS total_bookings
    FROM bookings
    GROUP BY property_id
) AS property_bookings;

-- 
SELECT property_id, total_bookings,
       RANK() OVER (ORDER BY total_bookings DESC) AS rank_num
FROM (
    SELECT property_id, COUNT(*) AS total_bookings
    FROM bookings
    GROUP BY property_id
) AS property_bookings;
