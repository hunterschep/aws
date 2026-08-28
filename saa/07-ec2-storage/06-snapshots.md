# EBS Snapshots

- Point-in-time backup of an EBS volume
- Stored in AWS-managed Amazon S3; not visible in S3 buckets
- Standard-tier snapshots are incremental after the first snapshot
- Snapshot encryption matches the source volume
- Create a volume from a snapshot in any AZ in the same Region
- Copy a snapshot to another Region for migration or disaster recovery
- Pause writes or stop the instance when application consistency matters

## Snapshot Features

- Archive tier: Lower cost for rarely accessed, long-term snapshots; restore before use
- Recycle Bin: Retains deleted snapshots that match a retention rule
- Fast Snapshot Restore: Fully initializes new volumes and removes first-read latency; enabled per snapshot and AZ at extra cost
