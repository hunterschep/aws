# RDS / Aurora Migrations

## RDS for MySQL -> Aurora MySQL

- Snapshot restore: Restore an RDS MySQL snapshot into a new Aurora cluster; plan downtime / cutover around the snapshot
- Aurora read replica: Replicate from RDS MySQL, then promote to an independent Aurora cluster
- For cutover: Stop source writes, wait for replication lag to reach zero, promote, and redirect the application
- Supported source / target versions required; replica-based migration reduces downtime

## External MySQL -> Aurora MySQL

- Physical backup: Percona XtraBackup -> S3 -> Restore into a new Aurora MySQL cluster
- Logical export / import: Use `mysqldump`, then load the dump into Aurora
- DMS full load + CDC: Copy existing data while replicating changes to reduce cutover downtime
- Check engine / backup-tool compatibility; validate migrated data before switching traffic
