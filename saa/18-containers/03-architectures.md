# ECS Architecture Patterns

## Event-Driven Task

Client -> S3 -> EventBridge -> ECS `RunTask` -> process object -> DynamoDB

- Good for work that exceeds Lambda limits or needs a custom container runtime

## Scheduled Task

EventBridge Scheduler -> ECS `RunTask` -> batch process

- Runs a standalone task on a cron/rate schedule

## Queue Workers

Producer -> SQS -> ECS service workers -> downstream system

- Workers poll SQS; service auto scales from queue backlog or a custom metric

## Task State Events

ECS task state change -> EventBridge rule -> SNS/Lambda

- Detect stopped or failed tasks and notify operators
