# Index Performance Report

## Overview
This document summarizes the impact of creating indexes on query performance in the Airbnb database.

## Indexes Created
- idx_bookings_user_id on bookings(user_id)
- idx_bookings_property_id on bookings(property_id)
- idx_users_email on users(email)
- idx_properties_city on properties(city)

## Query Performance Before Indexing
- Example query: Retrieve bookings by user_id
- Execution plan showed a sequential scan on the bookings table, which is slow on large datasets.

## Query Performance After Indexing
- The query used the idx_bookings_user_id index.
- Execution time improved significantly, as the database performed index scans instead of full table scans.

## Conclusion
Creating indexes on frequently used columns in WHERE and JOIN clauses improves query performance and is essential for large-scale applications.
