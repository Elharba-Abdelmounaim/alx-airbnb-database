# Optimization Report for Complex Bookings Query

## Initial Query
The initial query joins four tables: bookings, users, properties, and payments to retrieve comprehensive booking details.

## Performance Analysis
- Using `EXPLAIN` on the initial query revealed:
  - Multiple nested loop joins causing high execution time.
  - Sequential scans on large tables (especially bookings and payments).
  - Lack of indexes on foreign key columns increased query cost.

## Identified Inefficiencies
- Missing indexes on `bookings.user_id`, `bookings.property_id`, and `payments.booking_id`.
- Joining all tables even when some booking records may not have matching payments.

## Optimization Steps
1. Created indexes on foreign key columns:

```sql
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
CREATE INDEX idx_payments_booking_id ON payments(booking_id);
