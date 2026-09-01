# Messaging and Decoupling

## Communication Models

- Synchronous: direct request/response; caller waits for the downstream service
- Asynchronous: producer -> queue/topic/stream -> consumer
- Async systems absorb traffic spikes and let components scale independently
- Decoupling improves fault isolation; consumers can recover and process a backlog

## AWS Options

- SQS: pull-based queue; one consumer processes each message
- SNS: push-based pub/sub; each matching subscriber receives a copy
- Kinesis Data Streams: retained, ordered stream with replay and independent consumers
