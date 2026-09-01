# Amazon RDS

Managed relational databases using familiar SQL engines

- Engines: PostgreSQL, MySQL, MariaDB, Oracle, SQL Server, and Db2
- AWS manages provisioning, patching, backups, monitoring, and hardware replacement
- You manage schema, queries, indexes, instance sizing, and access controls
- EBS-backed storage with storage autoscaling and Provisioned IOPS options

## Availability and Scaling

- Multi-AZ: synchronous standby/instances for high availability and automatic failover
- Traditional Multi-AZ DB instance standby does not serve read traffic
- Read replicas: asynchronous copies for read scaling; separate endpoints
- Read replicas can be cross-Region and promoted to standalone databases
- Vertical scaling: change DB instance class; may require downtime

## Backups

- Automated backups enable point-in-time recovery within the retention window
- Manual snapshots persist until deleted and can be copied across Regions/accounts

## Exam Cues

- Multi-AZ = availability; read replicas = read scaling
- Use RDS for SQL, joins, transactions, and exact engine compatibility
- RDS Proxy pools connections for Lambda and other highly concurrent clients
