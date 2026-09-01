# AWS Step Functions

Visual state machines for orchestrating Lambda and AWS service integrations

- Defined with Amazon States Language (ASL)
- States: Task, Choice, Wait, Parallel, Map, Pass, Succeed, Fail
- Built-in retries, catches, timeouts, and error paths
- Supports human approval/callback tasks with task tokens
- Keep large payloads in S3; state input/output limit is 256 KiB

## Workflow Types

### Standard

- Durable, auditable workflows lasting up to one year
- Exactly-once workflow execution unless retry behavior is configured
- Priced by state transitions

### Express

- High-volume workflows lasting up to five minutes
- Asynchronous Express: at-least-once execution
- Synchronous Express: at-most-once execution
- Priced by executions, duration, and memory

Step Functions orchestrates a known workflow; SQS buffers independent work items
