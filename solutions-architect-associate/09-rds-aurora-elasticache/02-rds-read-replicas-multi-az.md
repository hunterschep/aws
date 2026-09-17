# RDS Read Replicas vs. Multi-AZ

## Read Replicas

- Purpose: scale read-heavy workloads
- Asynchronous replication and eventual consistency
- Same AZ, cross-AZ, or cross-Region
- Separate endpoint; application must direct reads to replicas
- Read-only until promoted to a standalone writable database
- Good for reporting, analytics, and other read-only workloads
- Same-Region replication traffic has no data transfer charge
- Cross-Region replication incurs data transfer charges

Primary DB -> asynchronous replication -> read replica

## Multi-AZ DB Instance

- Purpose: high availability and disaster recovery, not read scaling
- Synchronous standby in another AZ
- Standby does not accept connections or serve reads
- One DNS endpoint; RDS automatically fails over to the standby
- Can combine Multi-AZ with separate read replicas
- A read replica can also be Multi-AZ for its own availability

Primary DB -> synchronous replication -> standby

## Multi-AZ DB Cluster

- Writer plus two readable DB instances across three AZs
- Provides high availability and additional read capacity
- Different from a classic Multi-AZ DB instance and from Aurora

## Single-AZ to Multi-AZ

1. RDS snapshots the primary.
2. RDS restores the snapshot in another AZ.
3. RDS synchronizes the standby with the primary.

- No application downtime, but conversion can affect performance
