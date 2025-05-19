# Airbnb Database Schema

This file contains the SQL schema for the Airbnb database.

## Tables

1. **users**: Stores information about the users (hosts and guests).
2. **properties**: Stores information about the properties available for rent.
3. **bookings**: Stores information about the bookings made by users for properties.

## Indexes

Indexes are created on frequently queried columns to improve performance:
- **users.email**: Indexed for faster lookups of users by email.
- **properties.location**: Indexed for faster search by location.
- **bookings.property_id**: Indexed for faster queries related to bookings.

## Instructions

1. Run the `schema.sql` file to create the tables and indexes.
2. Ensure that all necessary foreign key relationships are respected when inserting data.
# ALX Airbnb Database Module - Advanced SQL Queries

## Overview

This directory contains advanced SQL scripts for the Airbnb database project, focusing on mastering different types of SQL JOINs to retrieve combined data from multiple tables.

## Queries Implemented

### 1. INNER JOIN - Bookings with Users

This query retrieves all bookings along with the users who made those bookings. Only bookings linked to a user are returned.

### 2. LEFT JOIN - Properties with Reviews

This query retrieves all properties and their associated reviews. Properties without any reviews are also included, with NULL values for the review fields.

### 3. FULL OUTER JOIN - Users and Bookings

This query retrieves all users and all bookings. It includes users without bookings and bookings not linked to any user.

## How to Use

- Run these queries on the Airbnb database to gain insights about bookings, users, properties, and reviews.
- Useful for analyzing booking patterns, user activity, and property feedback.

## Learning Outcome

Through these queries, learners will deepen their understanding of:

- How to combine data from multiple tables using different join strategies.
- The impact of each type of join on the resulting dataset.
- Practical usage of INNER JOIN, LEFT JOIN, and FULL OUTER JOIN in real-world database scenarios.

---

*This README is part of the ALX Database Advanced SQL project.*
