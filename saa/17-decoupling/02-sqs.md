# Amazon SQS

Fully managed queue that buffers messages between producers and consumers

## Standard Queues

- Very high, nearly unlimited throughput and queue depth
- At-least-once delivery: duplicates are possible
- Best-effort ordering
- Message size: up to 1 MiB; store larger payloads in S3 and send a reference
- Retention: 4 days by default; 1 minute to 14 days
- Delay queues/message timers: up to 15 minutes

## Producers and Consumers

1. Producer sends a message; SQS stores it redundantly
2. Consumer polls up to 10 messages at once
3. Message becomes temporarily invisible while processed
4. Consumer deletes it only after successful processing

- Consumers: EC2, containers, Lambda, or on premises
- Add consumers horizontally to increase processing throughput
- Use idempotent consumers because messages can be delivered more than once
- Dead-letter queue (DLQ): isolate messages after repeated failures

## Long Polling

- Waits for messages instead of returning an immediate empty response
- `WaitTimeSeconds`: 1 to 20 seconds
- Reduces empty API calls and often lowers latency

## Security

- Encryption in transit with HTTPS
- At-rest encryption with SSE-SQS or AWS KMS
- IAM policies for callers; queue policies for cross-account/service access
