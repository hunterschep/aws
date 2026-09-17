# Big Data Ingestion Pipeline

Example: Streaming IoT data, durable S3 storage, SQL queries, dashboards

- Ingest: IoT producers -> Kinesis Data Streams -> Amazon Data Firehose -> S3
- Catalog: Glue crawler -> Glue Data Catalog
- Analyze: Athena queries S3 using catalog metadata -> QuickSight dashboards
- Optional processing: S3 event -> SQS -> Lambda, independent of the query path
- Firehose buffers delivery; near real time, not instant
- Parquet, compression, and partitions reduce Athena scan costs
- For real-time stateful analytics, add Flink as a Kinesis consumer
