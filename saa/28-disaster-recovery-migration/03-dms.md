# Database Migration Service (DMS)

Managed database migration with minimal downtime; source can remain available during replication

- Homogeneous migration: Same engine, e.g. MySQL -> MySQL
- Heterogeneous migration: Different engines, e.g. SQL Server -> Aurora PostgreSQL
- Full load: Copy existing data
- Change data capture (CDC): Replicate ongoing changes; can combine with full load
- Uses an AWS-managed replication instance or DMS Serverless, not a self-managed EC2 instance
- Configure source / target endpoints and network access between them
- Multi-AZ replication instance: Standby for replication availability, not extra migration throughput

## Schema Conversion

- AWS Schema Conversion Tool (SCT): Convert schemas / database code between different engines
- DMS Schema Conversion: Managed alternative to the desktop SCT
- Schema conversion and data replication are separate tasks; unsupported objects may need manual changes
- Same-engine migrations generally do not need schema conversion
