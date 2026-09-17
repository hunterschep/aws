# S3 Presigned URLs

Temporary bearer URLs for a specific S3 operation.

- Commonly used for private downloads or uploads
- No AWS credentials required by the recipient
- Cannot grant more access than the signing principal has
- Valid only for the signed bucket, key, operation, and expiration
- Temporary credentials can make the URL expire earlier than requested
- Protect the URL like a credential until it expires
