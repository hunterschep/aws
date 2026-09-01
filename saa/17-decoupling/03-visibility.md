# SQS Visibility Timeout

- A received message becomes invisible to other consumers
- Default: 30 seconds; configurable from 0 seconds to 12 hours
- Consumer must delete the message before the timeout expires
- If processing runs long, call `ChangeMessageVisibility` to extend the timeout
- Too short: duplicate processing; too long: slow retries after failure
- Use idempotent processing because SQS provides at-least-once delivery
