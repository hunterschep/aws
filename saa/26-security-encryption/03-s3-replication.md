# Encrypted S3 Replication and AMI Sharing

## S3 Replication

- Requires replication rules, an IAM role, and versioning on both buckets
- Eligible unencrypted, SSE-S3, and SSE-C objects replicate under normal replication rules
- Existing objects require S3 Batch Replication
- SSE-KMS / DSSE-KMS: Explicitly opt in to replication of KMS-encrypted objects
- Specify the destination KMS key in the destination Region
- Replication role needs source-key `kms:Decrypt` and destination-key `kms:Encrypt`
- Key policies must allow access; cross-account KMS replication needs a customer-managed destination key

## Encrypted AMI Sharing

- Grant the target account launch permission on the AMI
- Allow the target account to use the customer-managed keys encrypting its EBS snapshots
- Target principal also needs IAM permissions for the required EC2 / KMS operations
- Cannot share AMIs encrypted with the default AWS managed key
- Sharing the AMI for launch does not require separate snapshot sharing
- Copying a shared AMI additionally requires access to its backing snapshots
