# Performance Monitoring and Refinement Report

## Overview

This report covers the continuous monitoring and refinement of database performance for the Airbnb database project. The focus is on analyzing query execution plans, identifying bottlenecks, and implementing improvements.

---

## 1. Monitoring Query Performance

### Query Example 1: Fetch all bookings with user and property details

```sql
EXPLAIN ANALYZE
SELECT b.booking_id, u.user_name, p.property_name, b.start_date, b.end_date
FROM bookings b
JOIN users u ON b.user_id = u.user_id
JOIN properties p ON b.property_id = p.property_id
WHERE b.start_date >= '2025-01-01';
