# Amazon S3

Regional object storage with virtually unlimited capacity.

- Strong read-after-write consistency for object writes, deletes, and listings
- S3 Standard stores objects across at least three Availability Zones
- Designed for 99.999999999% durability
- Common uses: backup, disaster recovery, archives, data lakes, media, and static sites

## Buckets

- General purpose bucket belongs to one AWS Region
- Shared global namespace: name must be unique across accounts and Regions in a partition
- Account regional namespace: base name can repeat; AWS adds the account ID, Region, and `-an`
- Bucket name and Region cannot be changed after creation

## Objects

- Key: full object name, including any prefix
- Prefixes imitate folders; S3 has no true directory hierarchy
- Object includes its data, metadata, tags, and optional version ID
- Maximum object size: 50 TB
- Multipart upload required above 5 GB and recommended from 100 MB
- Presigned URLs provide temporary access using the creator's permissions

## Versioning

- Enabled at the bucket level
- Overwriting a key creates a new version
- Normal deletion adds a delete marker instead of removing prior versions
- Restore by deleting the marker or copying a prior version
- Protects against accidental overwrite and deletion

## Replication

- CRR: asynchronous replication to another Region
- SRR: asynchronous replication within the same Region
- Versioning required on source and destination buckets
- S3 needs an IAM role with replication permissions
- Existing objects require S3 Batch Replication
- Delete marker replication is optional; permanent version deletions are not replicated
- Replication does not chain through multiple buckets
