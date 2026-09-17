# AWS Elastic Disaster Recovery (DRS)

Recover physical, virtual, and cloud-based servers into AWS

- AWS Replication Agent continuously copies disk-block changes to AWS
- Low-cost staging area: Replication servers and EBS volumes in a staging subnet
- Launch recovery EC2 instances when needed, instead of running full production capacity continuously
- Supports point-in-time recovery, non-disruptive drills, and failback to the source environment
- DRS: Ongoing disaster recovery; MGN: Server migration / lift and shift
