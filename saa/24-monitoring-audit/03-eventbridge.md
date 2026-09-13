# Amazon EventBridge

Serverless event routing between applications and AWS services

- AWS services / custom apps / SaaS -> event bus -> matching rules -> targets
- JSON events; rules filter by event pattern
- Targets include Lambda, SQS, SNS, Step Functions
- Default bus for AWS events; custom / partner buses for other event sources
- Resource policies allow controlled cross-account access to event buses
- Archive and replay events for reprocessing

## Scheduling

- EventBridge Scheduler: One-time, rate-based, or cron schedules
- Example: Invoke Lambda every hour
- Legacy scheduled rules also exist on the default event bus

## Schema Registry

- Discover event structure and generate code bindings for applications
