# Amazon CloudWatch Logs

Collect, store, search, and analyze application / service logs

- Log group: Related streams with shared retention and access settings
- Log stream: Events from one source, e.g., an instance or container
- Configurable retention; no expiration by default
- Encrypted at rest; customer-managed KMS keys supported

## Queries and Filters

- Logs Insights: Query and aggregate log data
- Metric filters: Turn matching log events into CloudWatch metrics
- Subscription filters: Forward matching logs in near real time
- Destinations: Kinesis Data Streams, Amazon Data Firehose, Lambda
- S3 export is batch-oriented; use subscriptions for near-real-time processing

## CloudWatch Agent

- EC2 application / OS logs are not sent automatically
- Agent collects log files and additional system metrics on EC2 or on-premises
- Requires appropriate IAM permissions and network access
