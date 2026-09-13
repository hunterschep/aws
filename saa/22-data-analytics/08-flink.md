# Amazon Managed Service for Apache Flink

Managed framework for stateful, real-time stream processing

- Sources include Kinesis Data Streams and MSK / Apache Kafka
- Transform, aggregate, join streams, and calculate time-windowed results
- Managed scaling, checkpoints, and snapshots for recovery
- Kinesis / MSK -> Flink application -> destination, e.g., S3 or OpenSearch
- Flink processes streams; Firehose mainly delivers buffered data to destinations
