# Amazon Redshift

SQL data warehouse for OLAP and BI, not an OLTP database

- PostgreSQL-based, but not a PostgreSQL server
- Columnar storage, compression, massively parallel processing (MPP)
- Provisioned clusters or Redshift Serverless
- Redshift: Data warehousing and complex analytics
- Athena: Ad hoc SQL directly on S3

## Provisioned Clusters

- Leader node: Query planning and coordination
- Compute nodes: Execute queries in parallel
- Choose node types / capacity; Reserved Instances can lower costs
- Single-AZ or supported Multi-AZ deployments

## Snapshots and Loading

- Snapshots stored in S3; cross-Region copies for disaster recovery
- COPY loads data from S3 in parallel
- Amazon Data Firehose -> S3 staging -> COPY into Redshift

## Redshift Spectrum

- Query S3 data without loading it into Redshift tables
- Join external S3 tables with warehouse tables; Glue catalog holds metadata
- Spectrum offloads S3 query processing for supported provisioned clusters
- Serverless can also query S3, using its own compute capacity
