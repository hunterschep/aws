# Amazon Aurora

- AWS-built relational database compatible with MySQL and PostgreSQL
- Up to 5x MySQL and 3x PostgreSQL throughput in AWS benchmarks
- Shared storage grows automatically
- Up to 15 Aurora Replicas with typically low replica lag
- Built-in high availability and fast failover
- Usually costs more than standard RDS for a comparable instance

## High Availability and Read Scaling

- Six storage copies across three AZs
- Storage quorum: four copies for writes, three for reads
- Self-healing storage with peer-to-peer replication
- Compute is separate from the shared cluster volume
- One writer instance; replicas serve reads and can be failover targets
- Failover typically completes in under 60 seconds, often under 30

## Endpoints

- Cluster endpoint: connects to the current writer
- Reader endpoint: balances new read connections across replicas
- Reader balancing is per connection, not per SQL statement
- Instance endpoint: connects to one specific DB instance
- Custom endpoint: connects to a chosen subset of instances

## Replica Auto Scaling

- Adds or removes Aurora Replicas based on read demand
- Reader endpoint automatically includes eligible replicas

## Aurora Serverless

- Automatically scales compute capacity in Aurora Capacity Units
- Good for intermittent, unpredictable, or variable workloads
- Reduces capacity planning; clients use stable cluster endpoints

## Aurora Global Database

- One primary write Region and up to 10 read-only secondary Regions
- Storage-level cross-Region replication, typically under one second
- Low-latency global reads and cross-Region disaster recovery
- Up to 16 read-only instances per secondary Region
- Planned switchover or unplanned failover can move the primary Region

## Other Features

- Aurora ML: invoke SageMaker or Comprehend from SQL
- Babelfish for Aurora PostgreSQL: supports SQL Server T-SQL and wire protocols
- AWS SCT converts schemas; AWS DMS migrates data
