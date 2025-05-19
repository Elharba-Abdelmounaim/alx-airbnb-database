# ALX Airbnb Database Module - Advanced SQL Queries

## Overview

This project is part of the ALX Airbnb Database module and focuses on mastering advanced SQL techniques, including different types of JOINs and Subqueries. These skills are essential for retrieving and analyzing complex data relationships in a simulated Airbnb database.

---

## Part 1: Advanced SQL Joins

### Queries Implemented

1. **INNER JOIN - Bookings with Users**  
   Retrieves all bookings along with the users who made those bookings. Only bookings linked to a user are returned.

2. **LEFT JOIN - Properties with Reviews**  
   Retrieves all properties and their associated reviews. Properties without any reviews are included as well, with NULL values in the review fields.

3. **FULL OUTER JOIN - Users and Bookings**  
   Retrieves all users and all bookings. This includes users without bookings and bookings not linked to any user.

### Learning Outcomes

- Understand how to combine data from multiple tables using INNER JOIN, LEFT JOIN, and FULL OUTER JOIN.
- Learn the differences and use cases for each type of join.
- Apply joins in real-world database scenarios for meaningful data retrieval.

---

## Part 2: Practice Subqueries

### Tasks

1. **Find Properties with Average Rating Greater Than 4.0**  
   Write a non-correlated subquery to calculate the average rating for each property and retrieve those with an average rating above 4.0.

2. **Find Users with More Than 3 Bookings**  
   Write a correlated subquery to count the number of bookings per user and retrieve users who have made more than 3 bookings.

### Example Queries

```sql
-- Find properties with average rating > 4.0
SELECT p.id, p.name
FROM properties p
WHERE (
  SELECT AVG(r.rating)
  FROM reviews r
  WHERE r.property_id = p.id
) > 4.0;

-- Find users with more than 3 bookings
SELECT u.id, u.name, u.email
FROM users u
WHERE (
  SELECT COUNT(*)
  FROM bookings b
  WHERE b.user_id = u.id
) > 3;
