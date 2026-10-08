# bed_and_breakfast_sql_analysis
A MySQL project modelling a small B&amp;B's bookings, guests and rooms, with SQL queries to answer business questions.

## Project Overview

This is my second SQL portfolio project, created to practise designing and building a relational database and using SQL to answer business questions.

I created a fictional seven-room B&B in York, with a database to manage guest information, room details and bookings, including accommodation rates, parking charges and payment information.

After creating the database and populating it with sample data, I worked through a series of requests from the fictional B&B owner, using SQL to investigate repeat guests, accommodation booking values and outstanding payments.

After completing my first guided SQL project, I wanted to put what I'd learned into practice and challenge myself to build a database from scratch, as independently as possible. I used AI as a learning resource when I needed guidance or clarification, while taking responsibility for the database design, implementation and SQL analysis.

The project was built using MySQL and MySQL Workbench.

## Database Structure

I designed the database around three tables:

- **guest** – Contains information about each guest, including their contact details and VIP status.
- **rooms** – Contains the seven rooms available at the B&B and their categories.
- **bookings** – Connects guests to their reservations and records the dates, prices, parking requests and payment details.

I used primary and foreign keys to connect the tables, so that guests can make multiple bookings and rooms can be booked by different guests over time.

I also added constraints to prevent certain errors, such as duplicate email addresses or room numbers, invalid payment statuses and check-out dates that come before check-in dates.

One decision I made was to store the nightly rates in the bookings table rather than the rooms table. This means that if the B&B changes its prices, previous bookings will still show the rates originally agreed.

### Entity Relationship Diagram

This is the EER diagram I created to plan the database and its relationships.

![B&B Entity Relationship Diagram](bandb_EER_diagram.png)

## SQL Analysis

After creating and populating the database, I worked through four business questions from the fictional B&B owner:

1. **Returning guests:** Identify guests who have made more than one booking.
2. **Accommodation value by room:** Calculate the total value of accommodation booked for each room, excluding parking charges.
3. **Outstanding payments:** Identify unpaid bookings and calculate the accommodation amount outstanding for each.
4. **Accommodation value by guest:** Calculate each guest's total accommodation booking value and number of bookings.

To answer these questions, I used SQL techniques including joins, filtering with WHERE, aggregation with COUNT and SUM, GROUP BY, HAVING, ORDER BY and calculated fields using DATEDIFF.

The analysis helped me practise turning business questions into SQL queries and presenting the results in a way that would be useful to a business owner.

## Key Findings

The SQL queries revealed a few interesting things about the B&B's bookings:

- **Most valuable room:** Room 104 generated the highest total accommodation booking value at £945.
- **Outstanding payments:** Five bookings had outstanding accommodation payments. The largest amounts were £525 and £520.
- **Guest booking value:** Cat Chat and Etc Ekta both had £780 in total accommodation bookings, but Cat Chat made two bookings while Etc Ekta made only one.
- **Returning guests:** Four of the six guests had made more than one booking, although booking frequency did not always correspond to higher total booking values.

These findings helped me understand the importance of looking beyond the numbers. For example, while Cat Chat and Etc Ekta had the same total booking value, Etc Ekta had a higher average value per booking. This doesn't necessarily make one customer more valuable overall, but it shows how different ways of measuring customer value can tell different stories.

## Skills Practised

- **Database design and data modelling:** Creating an EER diagram, identifying table relationships and using primary and foreign keys.
- **MySQL:** Creating tables, defining constraints and populating a relational database.
- **SQL querying:** SELECT, WHERE, JOIN, GROUP BY, HAVING and ORDER BY.
- **Data aggregation and calculations:** COUNT, SUM, DATEDIFF and calculated fields.
- **Data validation and troubleshooting:** Investigating unexpected results, correcting queries and testing the database from scratch.
- **Business analysis and reporting:** Translating business questions into SQL queries and communicating findings clearly.
- **Tools:** MySQL Workbench and GitHub.
  
## Challenges and Learning

The biggest challenge for me was designing and modelling the database from scratch. Unlike my first SQL project, where I had a guided structure to follow, this time I needed to decide which tables were necessary and how they should relate to each other.

Understanding the relationships was particularly tricky. I initially found myself overcomplicating the design with unnecessary bridge tables, before learning to step back and consider how the B&B would actually operate.

Once the database was built, I really enjoyed writing the queries and using them to answer the owner's questions.

One interesting problem came up when I was calculating accommodation values. My first query ran successfully, but the results were much higher than expected. After investigating, I realised I had been subtracting dates directly instead of calculating the number of nights between them. I corrected this using DATEDIFF().

This was a useful reminder that a query running without errors doesn't necessarily mean the results are correct, and that it's important to check whether the numbers actually make sense.

Overall, this project helped me become more confident in building a database independently, understanding table relationships, troubleshooting SQL and translating business questions into queries.

## How to Run the Project

To recreate the database, you will need MySQL and MySQL Workbench (or another MySQL-compatible SQL editor).

1. Download or clone this repository.
2. Open MySQL Workbench and connect to your MySQL server.
3. Run `bandb_schema.sql` to create the database and its tables.
4. Run `bandb_data.sql` to populate the tables with sample data.
5. Run `bandb_analysis.sql` to execute the four analytical queries.

The scripts should be run in this order, using a fresh database to avoid duplicate records or conflicts with existing tables.

The repository also includes the EER diagram showing the database structure and relationships.

**Note:** All guest information and bookings are fictional and were created for learning purposes.
