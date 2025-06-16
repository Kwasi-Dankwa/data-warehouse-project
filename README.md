# data-warehouse-project

# Architecture

#### Medallion Architecture
Bronze-Layer to store raw and unprocessed data - Extract
Object type - Tables
Load Method - Full Load (truncate and insert)
Data Transformation - None
Data Modelling - Start Schema

#### Silver Layer
Stores clean and standardized data for data analysis - Transform
Object type - Tables
Load Method - Full Load (truncate and insert)
Data Transformation - Standardization, Cleaning, Normaliation

#### Gold-layer - Load
Stores business ready data for reporting and analytics
Object type - Views
Load Method - None
Data Transformation - Integration, Aggregation, Business logic and rules
Data Modelling - Start Schema, Aggregated Objects, Flat tables


# 📖 Project Overview
This project involves:

1. Data Architecture: Designing a Modern Data Warehouse Using Medallion Architecture Bronze, Silver, and Gold layers.
2. ETL Pipelines: Extracting, transforming, and loading data from source systems into the warehouse.
3. Data Modeling: Developing fact and dimension tables optimized for analytical queries.
4. Analytics & Reporting: Creating SQL-based reports and dashboards for actionable insights.

🎯 This repository is an excellent resource for professionals and students looking to showcase expertise in:
* SQL Development
* Data Architect
* Data Engineering
* ETL Pipeline Developer
* Data Modeling
* Data Analytics





