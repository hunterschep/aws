# Amazon Kinesis Data Streams

Real-time ingestion and durable storage for streaming data

- Use cases: clickstreams, IoT, metrics, logs
- Multiple independent consumers can read and replay the same records
- Retention: 24 hours by default; up to 365 days
- Individual records cannot be deleted; they expire after retention
- Ordering guaranteed within a shard for the same partition key
- Poor partition-key distribution can create a hot shard

## Capacity Modes

- Provisioned: choose and manage shard count
- On-demand: AWS manages shard capacity as traffic changes
- Per shard: 1 MB/s or 1,000 records/s writes; 2 MB/s reads

Producers -> Kinesis Data Streams -> Lambda, KCL apps, Data Firehose, analytics

- Encryption in transit with HTTPS and at rest with AWS KMS
