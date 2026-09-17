# Choosing an AWS Data Store

## Selection Questions

- Data model, relationships, and required query patterns
- Read/write ratio, throughput, latency, and item size
- Transactions, consistency, availability, and disaster recovery
- Scaling pattern, operational effort, compliance, and cost
- Existing engine compatibility versus application refactoring

## Quick Service Map

- Relational OLTP: RDS or Aurora
- Key-value/document with known access patterns: DynamoDB
- In-memory cache: ElastiCache
- MongoDB-compatible documents: DocumentDB
- Graph relationships/traversals: Neptune
- Cassandra-compatible wide-column: Keyspaces
- Object storage/data lake/archive: S3 and S3 Glacier storage classes
- Data warehouse/OLAP: Redshift
- Serverless SQL over S3: Athena
- Big data processing: EMR
- Search/log analytics: OpenSearch Service
- Time series: Timestream services

## Lifecycle Notes

- QLDB reached end of support on July 31, 2025; no longer an active choice
- Timestream for LiveAnalytics is closed to new customers; see the Timestream note
