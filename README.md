# Swiggy-Advance-SQL-Project

## Project Overview
This project involves an in-depth exploratory data analysis (EDA) of a Swiggy-like delivery ecosystem using Advanced SQL. By querying a relational database containing customers, restaurants, orders, and delivery partners, the project uncovers actionable insights into consumer behavior, logistics efficiency, and market penetration.

## Repository Structure

swiggy database_queries.sql: The primary SQL script containing the database schema, table relationships, and all analytical queries used to derive insights.

SWIGGY.SQLPROJECT.pdf: A comprehensive presentation documenting the project objective, key query results, and visual interpretations of the data.

README.md: Full documentation of the project flow, technical stack, and business findings.

## Project Workflow (The Flow)

1. Database Architecture
The analysis is built on a relational structure designed to mimic a real-world delivery platform.

Schema Design: Tables were created for customers, restaurants, orders, and deliverypartners.

Data Integrity: Established primary and foreign key relationships to ensure seamless joins between order history and delivery logistics.

2. Analytical Phases
Phase A: Customer Segmentation & Demographics

Filtered user data to identify regional market share (e.g., isolating Delhi-based users).

Segmented customers based on order frequency to identify loyal users (e.g., those with exactly three orders).

Phase B: Logistics & Partner Performance

Analyzed delivery partner efficiency by calculating order volume per partner.

Identified "Top Reach" partners—those who have delivered to the highest number of unique customers.

Phase C: Behavioral Analysis & Social Clustering

Conducted advanced joins to find "Social Clusters"—customers in the same city ordering from the same restaurants on different dates.

Analyzed restaurant popularity based on order volume and customer ratings.

## Key Insights
Operational Efficiency: Identified a subset of delivery partners handling the bulk of the orders, suggesting a need for more balanced dispatch logic.

Customer Loyalty: A significant portion of the user base falls into the "occasional" category (3 orders), representing an opportunity for targeted retention campaigns.

Market Trends: Specific restaurants dominate the market in certain cities, highlighting the potential for localized partnership deals.

## Technical Stack
Database Engine: MySQL

Tooling: MySQL Workbench

SQL Concepts Used:

Multi-table Joins (Inner, Left)

Aggregate Functions (COUNT, SUM, AVG)

Filtering Logic (WHERE, HAVING)

Subqueries & Self-joins

Sorting and Limiting Results

## How to Use
Run the swiggy database_queries.sql script in your SQL editor to set up the database and see the queries in action.
Refer to the SWIGGY.SQLPROJECT.pdf for a visual breakdown of the findings and query outputs.

## Author
Divya Sharma Email: divya649sharma99@gmail.com GitHub: github.com/Divya9916 LinkedIn:www.linkedin.com/in/divya9916

## License
This project is licensed under the MIT License.

## Acknowledgements
References (Wscubetech)
