# EBS Volume Types

| Type | Storage | Best Fit |
| --- | --- | --- |
| `gp3` | General Purpose SSD | Most workloads; independent IOPS and throughput |
| `gp2` | General Purpose SSD | Older general-purpose volumes; performance scales with size |
| `io2` / `io1` | Provisioned IOPS SSD | Critical databases and sustained high IOPS |
| `st1` | Throughput Optimized HDD | Big data, logs, and data warehouses |
| `sc1` | Cold HDD | Infrequently accessed, throughput-oriented data |

## Exam Notes

- `gp3`: Includes 3,000 IOPS and 125 MiB/s; provision more independently of size
- `gp2`: IOPS scale with volume size and smaller volumes can burst
- `io2`: Higher durability than `io1`; Block Express supports the highest performance
- `io1` and `io2`: Support EBS Multi-Attach
- `st1` and `sc1`: Cannot be boot volumes
- SSD volumes suit small, random I/O; HDD volumes suit large, sequential I/O
