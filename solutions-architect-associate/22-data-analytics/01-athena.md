# Amazon Athena

Serverless SQL queries on data in S3, without loading it into a database

- Use cases: Ad hoc analysis, BI, ALB logs, CloudTrail logs
- Uses the Glue Data Catalog for table schemas and metadata
- On-demand SQL pricing based on data scanned
- QuickSight can visualize query results

## Performance and Cost

- Columnar formats: Parquet / ORC; scan only required columns
- Compress data and partition by common filters, e.g., date
- Combine small files to reduce overhead
- Glue ETL can convert source data to Parquet

## Federated Queries

- Query other AWS, on-premises, or external data sources
- Lambda-based connectors access the source on Athena's behalf
- Example: Athena -> Lambda connector -> external database
