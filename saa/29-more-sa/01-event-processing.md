# Event Processing

## SQS -> Lambda

- Lambda polls the queue and invokes the function with batches of messages
- Messages remain in SQS but are hidden during the visibility timeout
- Success: Lambda deletes processed messages; failure: Messages become visible again after the timeout
- By default, a failed batch is retried in full; partial batch responses can retry only failed records
- Configure the source queue's DLQ / `maxReceiveCount` for repeatedly failing messages
- At-least-once processing: Make the function idempotent

## SNS -> Lambda

- SNS invokes Lambda asynchronously; Lambda handles retries after accepting the event
- Lambda on-failure destination / DLQ captures events that exhaust processing retries or expire
- SNS subscription DLQ handles delivery failures to Lambda, not errors inside the function

## Architecture Patterns

- Fan-out: Application -> SNS -> Separate SQS queue for each consumer
- Each queue buffers independently; multiple consumers of one queue compete for messages
- S3 event notifications: Trigger Lambda, SNS, or SQS, e.g. thumbnail generation after upload
- S3 -> EventBridge: Enable bucket integration for richer filtering and routing to multiple targets
- Audit alert: DynamoDB `DeleteTable` -> CloudTrail -> EventBridge rule -> SNS notification
- Streaming ingestion: Client -> API Gateway -> Kinesis Data Streams -> Amazon Data Firehose -> S3
