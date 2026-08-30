# Hybrid Cloud Storage

AWS Storage Gateway connects on-premises applications to AWS storage.

- Deploy as a virtual machine, hardware appliance, or EC2 instance
- Uses local cache or upload-buffer disks for low-latency access
- Common uses: backup, archive, disaster recovery, and storage tiering

## S3 File Gateway

- Exposes NFS or SMB file shares backed by S3 objects
- One-to-one mapping between files and S3 objects
- Caches recently accessed data locally
- Supports Microsoft Active Directory authentication for SMB

## Volume Gateway

Exposes iSCSI block volumes to on-premises applications.

- Cached volumes: primary data in S3; frequently accessed data cached locally
- Stored volumes: full dataset local; asynchronous cloud backups as EBS snapshots

## Tape Gateway

- Virtual Tape Library presented over iSCSI
- Works with existing tape-based backup software
- Virtual tapes backed by S3 and archived to Glacier Flexible Retrieval or Deep Archive

## Exam Notes

- Storage Gateway provides ongoing hybrid access, not just one-time migration
- Data stored by Volume and Tape Gateway is not directly accessible through the S3 API
- FSx File Gateway is unavailable to new customers; existing customers can continue using it
