# Amazon Elastic File System

Amazon EFS is serverless, elastic, shared file storage for Linux workloads.

- Managed NFS file system using NFSv4
- POSIX-compatible and mounted by many clients at once
- Works with EC2, ECS, EKS, Fargate, and Lambda
- Capacity grows and shrinks automatically
- Pay for storage used; IA and Archive also have access charges
- Use cases: Content management, web serving, shared data, and home directories

## Availability and Networking

- Regional file system: Stores data across multiple AZs; default and most resilient
- One Zone file system: Lower cost, but not resilient to AZ loss
- Create mount targets in the client AZs
- Security group must allow NFS on TCP port `2049`

## Performance

- General Purpose: Default and lowest per-operation latency
- Max I/O: Higher aggregate throughput and latency for highly parallel workloads
- Throughput modes:
  - Elastic: Automatically scales throughput
  - Provisioned: Set throughput independently of storage
  - Bursting: Throughput scales with stored data and burst credits

## Storage Classes

- Standard: Frequently accessed files
- Infrequent Access (IA): Lower storage cost plus access charges
- Archive: Lowest-cost tier for rarely accessed files
- Lifecycle Management moves files between classes automatically

Enable encryption at rest and use TLS for encryption in transit.
