This project uses dbt and DuckDB to build a simple customer churn reporting model.

The project includes:

Customer churn data
Zip code population data
Staging models for cleaning and renaming columns
A customer churn reporting model
A churn summary with basic KPIs

Tools:
Python, SQL, dbt, DuckDB

Pipeline:

CSV files → dbt Seeds → Staging Models → Reporting Models

Main reporting metrics include total customers, churned customers, churn rate, average monthly charge, and average customer tenure.
