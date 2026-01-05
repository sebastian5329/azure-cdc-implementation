# Azure Change Data Capture (CDC) using Azure Data Factory

## Overview
This project demonstrates a basic Change Data Capture (CDC) implementation using Azure SQL Database and Azure Data Factory. The goal is to track incremental data changes (INSERT, UPDATE, DELETE) from a source table and process them using ADF CDC.

## Technologies Used
- Azure SQL Database
- Azure Data Factory (CDC – Preview)
- T-SQL

## CDC Implementation
- CDC enabled at database level using `sp_cdc_enable_db`
- CDC enabled at table level using `sp_cdc_enable_table`
- Insert, update, and delete operations performed on source table
- Azure Data Factory CDC configured to read and write incremental changes

## Validation
- Captured changes verified using Azure Data Factory CDC monitoring
- Successful read and write of CDC events confirmed

## Screenshots
Screenshots are included to demonstrate:
- CDC enablement using SQL
- CDC execution in Azure Data Factory

## Notes
This project was implemented purely for learning and demonstration purposes using Azure trial resources.
