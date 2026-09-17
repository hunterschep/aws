# SQS FIFO Queues

First-in, first-out queues for ordering and deduplication

- Queue name ends in `.fifo`
- Ordering guaranteed within each `MessageGroupId`
- Different message groups can be processed in parallel
- Deduplication ID prevents duplicate sends within a 5-minute window
- Content-based deduplication can derive the ID from the message body
- Baseline: 300 API calls/s per action, or 3,000 messages/s with batches of 10
- High-throughput mode scales across message groups with Region-specific quotas
- Deduplication does not remove the need for idempotent business logic
