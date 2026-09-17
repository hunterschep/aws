# High-Performance Computing (HPC)

## Data Transfer

- Direct Connect: Dedicated network connectivity for sustained transfers to AWS
- DataSync: Move datasets between on-premises storage and S3, EFS, or FSx
- Offline bulk transfer: See [data-transfer options](../28-disaster-recovery-migration/09-data-transfer.md)

## Compute and Networking

- Choose CPU / GPU instances for the workload; scale capacity with fleets or Auto Scaling
- Spot: Lower cost for interruption-tolerant jobs; checkpoint work so it can resume
- Cluster placement group: Low-latency, high-throughput communication in one AZ, not multi-AZ HA
- Elastic Network Adapter (ENA): Enhanced networking; bandwidth / packet rate depend on instance type
- Elastic Fabric Adapter (EFA): Supported Linux instances; low-latency networking for tightly coupled HPC / ML
- EFA's OS-bypass path works with libraries such as MPI / NCCL, not ordinary TCP/IP traffic

## Storage

- EBS: Persistent block storage; performance depends on volume type and instance limits
- Instance store: Low-latency local storage; data lost on stop, termination, or host failure
- S3: Durable object storage for datasets and results
- EFS: Shared NFS file system with Elastic, Provisioned, or Bursting throughput
- FSx for Lustre: High-performance parallel file system; can link to S3 for importing / exporting datasets

## Orchestration

- AWS Batch: Queue, schedule, and provision compute for batch jobs; supports multi-node parallel jobs
- Batch multi-node parallel jobs do not support Spot Instances
- AWS ParallelCluster: Open-source tool to deploy and manage HPC clusters on AWS
