# Amazon DynamoDB

Fully managed, serverless key-value and document database

- Multi-AZ by default with single-digit millisecond performance at scale
- Table -> items -> attributes; flexible schema except for key attributes
- Primary key: partition key, or partition key + sort key
- Maximum item size: 400 KB, including attribute names
- Design tables around known access patterns; avoid expensive table scans

## Capacity Modes

- On-demand: pay per request; automatically handles variable traffic
- Provisioned: configure RCU/WCU; supports Auto Scaling and reserved capacity
- Eventually consistent reads by default; strong reads available where supported

## Indexes

- GSI: different partition/sort key; add later; eventually consistent reads
- LSI: same partition key, alternate sort key; create with table; strong reads; 10 GB per partition-key value

## Advanced Features

### DAX

- Managed in-memory DynamoDB cache with microsecond reads
- Does not cache strongly consistent reads

### DynamoDB Streams

- Time-ordered item changes retained for 24 hours; ordering preserved per item
- Commonly triggers Lambda for event-driven processing

### Global Tables

- Active-active, multi-Region tables for local reads/writes and regional resilience

### Data Management

- TTL: asynchronously removes expired items
- Transactions: all-or-nothing reads/writes across items
- Point-in-time recovery and on-demand backups restore to a new table
- Import/export with S3; exported data can be queried with Athena
