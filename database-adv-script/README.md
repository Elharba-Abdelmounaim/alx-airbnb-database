# ALX Airbnb Database — Advanced Joins

## Task 0: Write Complex Queries with Joins

### Objective
- Practice advanced SQL JOIN operations.
- Retrieve meaningful insights from multiple related tables.
- Understand the difference between INNER JOIN, LEFT JOIN, and FULL OUTER JOIN.

---

### Queries Implemented

#### 1. INNER JOIN — Bookings and Users
Retrieve all bookings along with the users who made them.

```sql
SELECT 
    bookings.id AS booking_id,
    users.id AS user_id,
    users.name AS user_name,
    bookings.property_id,
    bookings.start_date,
    bookings.end_date
FROM bookings
INNER JOIN users ON bookings.user_id = users.id;
