# Amazon Aurora

AWS-built relational database compatible with MySQL or PostgreSQL

- Separates compute from shared, distributed cluster storage
- Six storage copies across three Availability Zones; self-healing and auto-scaling
- One writer and up to 15 Aurora Replicas for reads/failover
- Cluster endpoint follows the current writer
- Reader endpoint load balances connections across replicas
- Automatic backups, point-in-time recovery, and fast replica promotion

## Deployment Options

- Provisioned: choose fixed writer/reader instance classes
- Aurora serverless: compute scales in fine-grained Aurora Capacity Units (ACUs)
- Global Database: cross-Region read scaling and disaster recovery
- Global Database normally has one write Region with asynchronous secondary Regions

Use Aurora for cloud-native relational workloads needing higher availability and read scale
