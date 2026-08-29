# RDS and Aurora Security

## Encryption

- At-rest encryption uses AWS KMS
- Covers database storage, automated backups, snapshots, and read replicas
- Cannot encrypt an existing database in place
- Unencrypted database: snapshot -> encrypted snapshot copy -> restore
- Cross-Region encrypted copies use a KMS key in the destination Region
- In-transit encryption uses TLS and the AWS database CA certificate

## Access

- IAM policies control AWS API and resource-management actions
- Security groups control network access
- Database users and grants control data access
- IAM database authentication is available for supported engines
- Secrets Manager can store and rotate database credentials
- No SSH access except with RDS Custom

## Logging

- Supported database and audit logs can be exported to CloudWatch Logs
