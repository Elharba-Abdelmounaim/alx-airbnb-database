## 📁 Project: ALX Airbnb Database — Advanced Joins

### 📌 Task: Complex Queries with Joins

This task demonstrates the use of different types of SQL JOINs to extract and relate data from multiple tables in the simulated Airbnb database.

---

### ✅ Objective
- Practice advanced SQL JOIN operations.  
- Retrieve meaningful insights from multiple related tables.  
- Understand the difference between INNER JOIN, LEFT JOIN, and FULL OUTER JOIN.

---

### 🛠️ Queries Implemented

#### 1. `INNER JOIN` — Bookings and Users  
**Query Goal**: Retrieve all bookings along with the users who made them.

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
