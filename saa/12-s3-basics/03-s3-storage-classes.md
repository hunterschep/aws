# S3 Storage Classes

## Frequently Accessed

### S3 Standard

- At least three AZs, millisecond access, and no minimum storage duration
- General-purpose data, websites, streaming, and analytics

### S3 Express One Zone

- Single AZ directory bucket with single-digit millisecond access
- Latency-sensitive workloads with compute in the same AZ

## Infrequently Accessed

### S3 Standard-IA

- At least three AZs, 30-day minimum, 128 KB minimum billable size
- Retrieval fee; backups and disaster recovery

### S3 One Zone-IA

- One AZ, 30-day minimum, 128 KB minimum billable size
- Lower cost for re-creatable data or secondary backups

## Archive

### S3 Glacier Instant Retrieval

- Millisecond retrieval, 90-day minimum, 128 KB minimum billable size

### S3 Glacier Flexible Retrieval

- 90-day minimum; restore before access
- Expedited: 1-5 minutes; Standard: 3-5 hours; Bulk: 5-12 hours

### S3 Glacier Deep Archive

- Lowest-cost long-term archive, 180-day minimum
- Standard restore within 12 hours; Bulk within 48 hours

## S3 Intelligent-Tiering

- Automatically moves objects according to access patterns
- No retrieval fees or minimum storage duration
- Per-object monitoring and automation charge
- Objects under 128 KB remain in Frequent Access and are not monitored
- Optional Archive and Deep Archive tiers require restoration
