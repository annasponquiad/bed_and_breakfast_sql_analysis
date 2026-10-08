# bed_and_breakfast_sql_analysis
A MySQL project modelling a small B&amp;B's bookings, guests and rooms, with SQL queries to answer business questions.

## Project Overview

This is my second SQL portfolio project, created to practise designing and building a relational database and using SQL to answer business questions.

I created a fictional seven-room B&B in York, with a database to manage guest information, room details and bookings, including accommodation rates, parking charges and payment information.

After creating the database and populating it with sample data, I worked through a series of requests from the fictional B&B owner, using SQL to investigate repeat guests, accommodation booking values and outstanding payments.

After completing my first guided SQL project, I wanted to put what I'd learned into practice and challenge myself to build a database from scratch, as independently as possible. I used AI as a learning resource when I needed guidance or clarification, while taking responsibility for the database design, implementation and SQL analysis.

The project was built using MySQL and MySQL Workbench.

## Database Structure

The database contains three related tables:

- **guest** – Stores guest details, including contact information and VIP status.
- **rooms** – Stores the seven available rooms, their room numbers and categories.
- **bookings** – Records each reservation, linking guests to rooms and storing stay dates, accommodation rates, parking requests and payment information.

The tables are connected through primary and foreign keys, allowing a guest to make multiple bookings and a room to be booked multiple times.

I also included constraints to help maintain data integrity, such as unique guest email addresses and room numbers, permitted payment statuses and a rule ensuring that check-out dates are later than check-in dates.

Accommodation and parking rates are stored in the bookings table so that each reservation retains the price agreed at the time, even if room rates change later.

### Entity Relationship Diagram

The EER diagram below illustrates the database structure and relationships.

![B&B Entity Relationship Diagram](bandb_EER_diagram.png)

## SQL Analysis

After creating and populating the database, I worked through four business questions from the fictional B&B owner:

1. **Returning guests:** Identify guests who have made more than one booking.
2. **Accommodation value by room:** Calculate the total value of accommodation booked for each room, excluding parking charges.
3. **Outstanding payments:** Identify unpaid bookings and calculate the accommodation amount outstanding for each.
4. **Accommodation value by guest:** Calculate each guest's total accommodation booking value and number of bookings.

To answer these questions, I used SQL techniques including joins, filtering with WHERE, aggregation with COUNT and SUM, GROUP BY, HAVING, ORDER BY and calculated fields using DATEDIFF.

The analysis helped me practise turning business questions into SQL queries and presenting the results in a way that would be useful to a business owner.
