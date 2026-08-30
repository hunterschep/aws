# AWS DataSync

Managed online transfer service for moving large datasets.

- Sources include NFS, SMB, HDFS, object storage, and supported cloud services
- AWS locations include Amazon S3, Amazon EFS, and Amazon FSx
- Agent required for most on-premises, self-managed, or other-cloud storage
- Same-account transfers between AWS storage services generally need no agent
- Transfers use TLS; same-account AWS-to-AWS copies stay on the AWS network
- Preserves supported metadata, ownership, permissions, and timestamps
- Supports scheduling, filtering, bandwidth limits, and data verification

## Exam Notes

- Use for migration or scheduled synchronization
- Use Storage Gateway when applications need ongoing hybrid storage access
- Charges depend on data moved and task mode; storage requests and network transfer can also cost
