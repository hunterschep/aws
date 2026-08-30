# S3 Lifecycle Rules

Automate storage-class transitions and object expiration.

- Filter by prefix, object tags, object size, or a combination
- Transition current or noncurrent versions to cheaper storage classes
- Expire current versions, noncurrent versions, or expired delete markers
- Abort incomplete multipart uploads to stop storage charges
- Respect each destination class's minimum duration and minimum billable size
- Transition and early-deletion charges can outweigh savings for short-lived data

## S3 Requester Pays

- Bucket owner still pays storage charges
- Requester pays request and data-transfer charges
- Requester must authenticate and include the requester-pays header
- Anonymous access is not supported
