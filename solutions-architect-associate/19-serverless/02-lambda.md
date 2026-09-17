# AWS Lambda

Event-driven functions that run on demand and scale automatically

- Maximum execution time: 15 minutes
- Pay for requests and execution duration
- Managed runtimes, custom runtimes, or container images
- Common triggers: API Gateway, S3, EventBridge, SNS, SQS, Kinesis, DynamoDB Streams

## Common Architectures

- S3 upload -> Lambda -> thumbnail in S3 + metadata in DynamoDB
- EventBridge Scheduler -> Lambda for cron/rate jobs
- API Gateway -> Lambda -> DynamoDB for a serverless API

## Important Limits

- Memory: 128 MB to 10,240 MB; CPU scales with memory
- Timeout: up to 900 seconds
- Environment variables: 4 KB total
- `/tmp`: 512 MB to 10,240 MB
- Default account concurrency: 1,000 per Region; adjustable quota
- Zip package: 50 MB compressed, 250 MB uncompressed including layers
- Container image: up to 10 GB; maximum 5 layers for zip functions

## Invocation Models

- Synchronous: caller waits and handles function errors/retries
- Asynchronous: Lambda queues the event and retries function errors
- Poll-based: event source mapping polls SQS, Kinesis, or DynamoDB Streams
- Use destinations or a DLQ for failed asynchronous events
- Make handlers idempotent because events can be delivered more than once

## Concurrency

- Concurrency: number of requests currently executing
- Reserved concurrency: reserves account capacity and sets a function ceiling; no prewarming
- Reserved concurrency of `0`: stops the function from running
- Provisioned concurrency: pre-initialized environments on a version/alias; extra charge
- Traffic above provisioned capacity can use on-demand environments if concurrency remains

## Versions and Aliases

- Published versions are immutable snapshots
- Aliases point to versions and support weighted traffic shifting

## SnapStart

- Snapshots an initialized published version to reduce cold starts
- Supports Java 11+, Python 3.12+, and .NET 8+ managed runtimes
- Not supported with container images, provisioned concurrency, EFS, or `/tmp` over 512 MB
- Runtime-dependent charges may apply
