# Amazon Elastic Block Store

Amazon EBS provides durable, network-attached block storage for EC2.

- Volume and instance must be in the same Availability Zone
- Data is replicated within the AZ
- Persists independently of the instance lifecycle
- Normally attached to one instance at a time
- One instance can have multiple EBS volumes
- Capacity and performance are provisioned and billed
- Elastic Volumes can change size, type, IOPS, or throughput
- After increasing size, extend the partition or file system in the operating system
- To move data to another AZ, create a snapshot and restore a new volume there

## Delete on Termination

- Root EBS volume: Deleted by default when the instance terminates
- Additional EBS volumes: Persist by default
- Behavior can be changed with `DeleteOnTermination`
