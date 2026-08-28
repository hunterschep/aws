# EC2 Instance Store

High-performance block storage physically attached to the EC2 host.

- Very low latency and high IOPS or throughput
- Available only on supported instance types
- Cannot be attached after launch
- Data survives a reboot
- Data is lost on stop, hibernate, terminate, instance-type change, or host failure
- No independent snapshot feature

Use for buffers, caches, scratch data, and replicated temporary data. Use EBS, EFS, or S3 for durable data.
