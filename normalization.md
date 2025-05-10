# Normalization of Airbnb Database to 3NF

This document outlines the normalization process applied to the Airbnb database to achieve Third Normal Form (3NF).

## Step 1: First Normal Form (1NF)

- Ensured that all attributes contain atomic values (no multi-valued attributes).
- Ensured that each record has a unique identifier (Primary Key).

## Step 2: Second Normal Form (2NF)

- Removed partial dependencies by ensuring that non-primary attributes fully depend on the primary key.

## Step 3: Third Normal Form (3NF)

- Eliminated transitive dependencies by ensuring that non-primary attributes depend only on the primary key and not on other non-primary attributes.

## Changes Made

- **Table A**: Removed attribute `X` that depended on a non-primary attribute.
- **Table B**: Split into two tables to remove partial dependency.

## Final Design

After applying the normalization process, the database schema is now in 3NF.
