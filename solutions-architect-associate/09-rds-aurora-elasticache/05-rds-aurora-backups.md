# RDS and Aurora Backups

## Amazon RDS

- Automated backups: initial full snapshot, then incremental snapshots
- Transaction logs uploaded about every five minutes
- Retention: 1-35 days; setting 0 disables automated backups
- Point-in-time recovery to any second within the retention window
- Manual snapshots persist until explicitly deleted
- Restores create a new DB instance
- For long-term idle databases: snapshot, delete, and restore later
- Snapshots still incur storage charges

## Amazon Aurora

- Continuous, incremental automated backups to Amazon S3
- Retention: 1-35 days; automated backups cannot be disabled
- No performance interruption while backup data is written
- Manual snapshots persist until explicitly deleted
- Restores create a new Aurora cluster

## Importing MySQL Backups from S3

- Create a physical backup with Percona XtraBackup
- Store the backup files in Amazon S3
- Restore into a new RDS for MySQL instance or Aurora MySQL cluster

## Aurora Database Cloning

- Fast clone of an existing Aurora cluster
- Copy-on-write, so unchanged pages share storage
- Faster and more space-efficient than snapshot restore

## Aurora Backtrack

- Aurora MySQL only
- Rewinds the whole cluster without restoring to a new cluster
- Must be enabled when the cluster is created
- Not a replacement for backups or point-in-time recovery
