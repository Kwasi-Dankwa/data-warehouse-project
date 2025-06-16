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





