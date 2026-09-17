# Amazon Relational Database Service (RDS)

Managed relational database service using SQL.

## Engines

- PostgreSQL
- MySQL
- MariaDB
- Oracle
- Microsoft SQL Server
- IBM Db2
- Amazon Aurora: AWS-built, MySQL- and PostgreSQL-compatible

## Managed Capabilities

- Automated provisioning, database patching, backups, and monitoring
- Vertical compute and storage scaling
- Read replicas for read scaling
- Multi-AZ deployments for high availability
- Defined maintenance windows
- Storage generally backed by EBS; Aurora uses shared cluster storage
- No host access or SSH; RDS Custom is the exception
- Customer still manages schema, queries, indexes, and application data

## Storage Auto Scaling

- Automatically increases allocated storage under sustained storage pressure
- Requires a maximum storage threshold
- Does not automatically shrink allocated storage
