# EC2 Placement Groups

## 1. Cluster

- Packs instances close together in one Availability Zone
- Highest network throughput and lowest latency
- Risk: Correlated hardware failure and limited placement capacity
- Use for tightly coupled HPC and high-performance workloads

## 2. Spread

- Places each instance on distinct underlying hardware
- Maximum 7 running instances per AZ per group
- Minimizes simultaneous failure risk
- Use for a small number of critical instances

## 3. Partition

- Divides instances across isolated partitions, each using separate racks
- Up to 7 partitions per AZ; many instances can share a partition
- Can span multiple AZs in a Region
- Partition metadata lets topology-aware applications place replicas safely
- Use for HDFS, HBase, Cassandra, and Kafka
