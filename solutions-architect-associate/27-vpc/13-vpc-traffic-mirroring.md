# VPC Traffic Mirroring

Copy network packets to security / monitoring appliances you manage

- Source: ENI on a supported EC2 instance
- Target: ENI, Network Load Balancer, or Gateway Load Balancer endpoint
- Mirror session connects a source to a target; filters select inbound / outbound traffic
- Example: Source ENI -> NLB -> EC2 instances running inspection software
- Uses: Intrusion detection, deep packet inspection, troubleshooting
- Traffic Mirroring copies packets; VPC Flow Logs record metadata only
- Passive inspection: Does not block the original traffic by itself
