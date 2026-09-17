# Amazon SNS

Managed publish/subscribe service for push-based fanout

Publisher -> SNS topic -> all matching subscriptions

## Subscribers

- SQS, Lambda, Amazon Data Firehose
- HTTP(S), email, SMS, and mobile push
- Subscription filter policies match message attributes or JSON message bodies
- Messages are not retained like a queue; use SQS when durable buffering is needed

## Topic Types

- Standard: high throughput, best-effort ordering, at-least-once delivery
- FIFO: ordering and deduplication for supported SQS subscriptions

## Security

- Encryption in transit with HTTPS; at rest with AWS KMS
- IAM policies for publishers; topic policies for cross-account/service access
