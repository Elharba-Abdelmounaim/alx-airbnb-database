# ALX Airbnb Database Module - Advanced SQL Queries

## Overview

This project covers advanced SQL querying and optimization techniques applied on a simulated Airbnb database. The goal is to gain practical skills in writing complex SQL queries, optimizing performance, and designing efficient database schemas suitable for large-scale applications.

---

## Task 0: Complex Queries with Joins

### Description:
Master SQL JOINs by combining data from multiple tables to retrieve meaningful insights.

### Queries Implemented:
- **INNER JOIN**: Retrieve all bookings and the users who made those bookings.
- **LEFT JOIN**: Retrieve all properties and their reviews, including properties without any reviews.
- **FULL OUTER JOIN**: Retrieve all users and all bookings, including users without bookings and bookings not linked to any user.

---

## Task 1: Practice Subqueries

### Description:
Use correlated and non-correlated subqueries for advanced data filtering and analysis.

### Queries Implemented:
- Find all properties where the average rating is greater than 4.0 using a subquery.
- Find users who have made more than 3 bookings using a correlated subquery.

---

## Task 2: Apply Aggregations and Window Functions

### Description:
Analyze data using aggregation functions and window functions for ranking.

### Queries Implemented:
- Count the total number of bookings made by each user (`COUNT` with `GROUP BY`).
- Rank properties based on the total number of bookings they have received using `RANK()` window function.

---

## How to Use

- Run each SQL script on the Airbnb database.
- Analyze results to understand user behavior, property performance, and booking trends.
- Experiment by modifying queries to deepen your understanding of SQL capabilities.

---

## Learning Outcomes

- Write complex JOIN queries to combine and retrieve related data.
- Utilize subqueries to perform advanced filtering and calculations.
- Apply aggregation functions to summarize data effectively.
- Use window functions to rank and analyze data partitions.
- Think critically about query optimization and performance tuning.

---

## Files

- `joins_queries.sql` — Contains JOIN queries.
- `subqueries.sql` — Contains subquery examples.
- `aggregations_and_window_functions.sql` — Contains aggregation and window function queries.
- `README.md` — This documentation.

---

*This README is part of the ALX Airbnb Database Advanced SQL project.*
