# EC2 Availability and Recovery

## Standby Instance + Elastic IP

- Detect failure with a CloudWatch alarm / EventBridge event; Lambda starts the standby and reassigns the Elastic IP
- Elastic IP can move between instances across AZs within its Region / network border group
- Preserves the public IP, but startup and failover still cause downtime

## Auto Scaling Across AZs

- ASG across at least two AZs with min = desired = max = 1: Replace an unhealthy instance automatically
- User data or lifecycle hooks can automate Elastic IP association; instance / automation role needs IAM permissions
- Only one serving instance: Self-healing, not uninterrupted multi-AZ availability
- For higher availability: Multiple active instances across AZs behind a load balancer

## Stateful Workloads with EBS

- EBS volume and attached EC2 instance must be in the same AZ
- Same-AZ replacement: Reattach the surviving volume when safe
- Cross-AZ recovery: Restore an existing snapshot into a new volume in the replacement instance's AZ
- Keep snapshots in advance; do not rely on taking one after an AZ failure
- Cross-Region recovery: Copy snapshots and deploy a separate ASG; an ASG does not span Regions
