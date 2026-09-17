# S3 Encryption

All new S3 uploads are encrypted at rest with SSE-S3 by default.

## Server-Side Encryption

### SSE-S3

- S3 owns and manages the keys
- AES-256 encryption
- No additional KMS request cost

### SSE-KMS and DSSE-KMS

- AWS KMS key provides access control and CloudTrail auditing
- Requires KMS permissions in addition to S3 permissions
- KMS API calls add cost and can encounter request quotas
- S3 Bucket Keys reduce KMS request traffic and cost
- DSSE-KMS applies two independent encryption layers

### SSE-C

- Customer supplies the key with every request
- S3 encrypts the object but does not store the key
- HTTPS required

## Client-Side Encryption

- Client encrypts before upload and decrypts after download
- Client owns the encryption process and key management

## Encryption in Transit

- Use HTTPS with TLS
- Bucket policy can deny requests when `aws:SecureTransport` is `false`

## Default Encryption vs. Bucket Policy

- Default encryption encrypts new objects when no encryption header is supplied
- Bucket policy can reject uploads without the required algorithm or KMS key
- Changing default encryption does not re-encrypt existing objects
- Use S3 Batch Operations to copy and re-encrypt existing objects
