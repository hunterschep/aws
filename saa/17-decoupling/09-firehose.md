# Amazon Data Firehose

Formerly Kinesis Data Firehose

- Fully managed, auto-scaling delivery service for streaming data
- Buffers by size or time, so delivery is near real time
- Optional Lambda transformation, compression, and format conversion
- Destinations: S3, Redshift through S3, OpenSearch, Splunk, and HTTP endpoints
- Can read from Kinesis Data Streams or accept records directly
- Not a replayable stream; use Kinesis Data Streams when consumers need replay

## Quick Comparison

- SQS: pull queue; one consumer processes each message, then deletes it
- SNS: push pub/sub; every matching subscriber receives a copy
- Kinesis Data Streams: retained stream; replay and ordered records per shard
- Data Firehose: buffered delivery into analytics and storage destinations
