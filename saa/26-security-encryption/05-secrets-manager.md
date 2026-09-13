# AWS Secrets Manager

Managed storage and lifecycle management for secrets, e.g., database credentials

- Encryption at rest with KMS; IAM / resource policies control access
- Automatic rotation is optional, not forced
- Service-managed rotation for supported integrations, or Lambda-based rotation
- Rotation updates both the stored secret and the target database / service
- Cross-Region replicas receive updates from the primary secret, including rotations
- Compared with Parameter Store: Purpose-built secret rotation and replication
