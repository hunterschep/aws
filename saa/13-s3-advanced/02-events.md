# S3 Event Notifications

Trigger workflows for object creation, removal, restore, replication, and other events.

## Direct Destinations

- Amazon SNS Standard topic
- Amazon SQS Standard queue
- AWS Lambda function
- Filter notifications by object-key prefix and suffix
- Destination must allow S3 through its resource policy
- SNS, SQS, and Lambda destinations must be in the bucket's Region
- Use EventBridge when the target is an SQS FIFO queue

## Amazon EventBridge

- When enabled, receives all supported events from the bucket
- Rules provide advanced filtering and multiple targets
- Supports archive, replay, and broader service integrations

## Exam Notes

- Delivery is at least once, so handle duplicates and out-of-order events
- Make consumers idempotent
- Avoid loops when a destination writes back to the triggering bucket
