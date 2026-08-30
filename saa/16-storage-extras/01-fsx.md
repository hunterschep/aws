# Amazon FSx

Fully managed file systems built on established file-system engines.

## FSx for Windows File Server

- Native Windows file system with SMB and NTFS
- Integrates with Microsoft Active Directory, ACLs, quotas, and DFS
- Accessible from Windows and supported Linux clients
- SSD or HDD storage; Single-AZ or Multi-AZ deployments
- Automatic daily backups and manual backups
- Choose for Windows applications requiring SMB, AD, or Windows features

## FSx for Lustre

- Parallel Linux file system for HPC, machine learning, analytics, and media processing
- High throughput and IOPS for large-scale compute workloads
- Can link to S3 to import and export datasets
- Storage options depend on deployment: SSD, Intelligent-Tiering, or HDD

Deployment options:

- Scratch: temporary, not replicated, and cost-optimized for short processing jobs
- Persistent: longer-lived storage with data replication and failed-server replacement

## FSx for NetApp ONTAP

- Multi-protocol access through NFS, SMB, and iSCSI
- Works across Linux, Windows, and macOS clients
- SSD performance tier plus elastic capacity-pool tier
- Compression, deduplication, snapshots, FlexClone, and SnapMirror
- Single-AZ and Multi-AZ deployments
- Choose for NetApp migrations or mixed-protocol enterprise storage

## FSx for OpenZFS

- Managed OpenZFS file system accessed through NFS
- Accessible from Linux, Windows, and macOS clients
- SSD or Intelligent-Tiering storage
- Compression, snapshots, and near-instant data clones
- Single-AZ and Multi-AZ deployment options
- Choose for ZFS migrations or low-latency NFS workloads
