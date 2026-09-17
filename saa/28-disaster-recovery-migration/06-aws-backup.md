# AWS Backup

Managed, centralized backup policies across supported AWS services and on-premises workloads

- Supports services such as EC2 / EBS, RDS / Aurora, DynamoDB, EFS, FSx, and S3
- Backup plans: Schedule, retention, lifecycle, and backup-copy rules
- Assign resources directly or by tags; recovery points stored in backup vaults
- On-demand / scheduled backups; continuous backups with point-in-time recovery for supported resources
- Cross-Region / cross-account copies for isolation and recovery; support varies by resource type
- Protect backups with encryption and access policies; test restores, not just backup completion

## Vault Lock

- Write once, read many (WORM): Prevent early deletion and changes to backup retention
- Governance mode: Users with sufficient IAM permissions can remove the lock
- Compliance mode: After the grace period, even root / AWS cannot remove the lock while recovery points remain
- Backups still expire according to their retention period; Vault Lock does not automatically mean permanent retention
