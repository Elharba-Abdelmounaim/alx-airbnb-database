# Partitioning Performance Report

## Overview
We implemented range partitioning on the `Booking` table based on the `start_date` column to improve query performance on date-based filters.

## Approach
- Created a partitioned table `partitioned_bookings` partitioned by date ranges per year.
- Migrated existing data from the original `bookings` table.
- Ran sample queries filtering bookings by date ranges to measure performance improvements.

## Observations
- Query performance improved significantly for date range filters due to partition pruning.
- The database engine scans only the relevant partition(s) instead of the entire table.
- Reduced query execution time observed in EXPLAIN ANALYZE outputs.
- Maintenance tasks like backups and deletes can now be done on individual partitions, improving operational efficiency.

## Conclusion
Partitioning large tables by date columns is an effective strategy to optimize query performance for time-based data retrieval in large datasets.

---

*This report is part of the ALX Airbnb Database Module project.*
