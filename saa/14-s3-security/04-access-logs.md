# S3 Access Logging

Records requests made to a bucket for security and operational analysis.

## Server Access Logging

- Destinations: CloudWatch Logs, an S3 bucket, or both
- S3 destination must be a general purpose bucket in the same account and Region
- Delivery is best effort, can be delayed, duplicated, or incomplete
- Query S3-delivered logs with Amazon Athena
- Do not use the source bucket as its own S3 log destination

## CloudTrail Data Events

- Records object-level API activity such as `GetObject` and `PutObject`
- Disabled by default and incurs additional charges
