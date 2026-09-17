# AWS Glue

Serverless data integration and ETL: Prepare and transform data for analytics

- S3 -> Glue ETL -> Redshift
- S3 -> Glue ETL -> Parquet in S3 for cheaper Athena queries

## Data Catalog

- Central metadata repository, not the underlying dataset
- Crawlers discover schemas / partitions and populate catalog tables
- Used by Athena, Redshift Spectrum, EMR, and other analytics services

## Features

- Job bookmarks: Track processed input for supported batch sources
- DataBrew: Visual data cleaning with prebuilt transformations
- Glue Studio: Visual editor to create, run, and monitor ETL jobs
- Streaming ETL: Continuously process Kinesis Data Streams, MSK, or Kafka
- Streaming jobs use checkpoints, not job bookmarks
