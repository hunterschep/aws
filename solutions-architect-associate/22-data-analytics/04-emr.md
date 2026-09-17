# Amazon EMR

Managed big-data processing with frameworks such as Spark, Hadoop, Hive, and Flink

- Use cases: ETL, large-scale analytics, ML, web indexing
- EMR on EC2: AWS provisions and configures clusters; you choose capacity
- EMR Serverless: Run supported Spark / Hive jobs without managing clusters
- S3 provides durable storage independent of cluster lifetime

## EC2 Node Types

- Primary (master): Coordinates jobs and monitors cluster health
- Core: Runs tasks and stores HDFS data
- Task: Runs tasks only; no HDFS storage, good fit for Spot

## Purchasing

- On-Demand: Predictable capacity without Spot interruptions
- Reserved Instances: Savings for steady EC2 usage
- Spot: Lower cost, but interruptible; use for fault-tolerant work
- Losing core nodes can lose HDFS data; be cautious with Spot there
