# NAT Instance

Self-managed EC2 instance providing outbound IPv4 internet access for private subnets

- Deploy in a public subnet with a public IPv4 / Elastic IP and a route to the IGW
- Private subnet route: `0.0.0.0/0 -> NAT instance`
- Disable source / destination checks so it can forward other instances' traffic
- Configure its SG to allow required traffic from private subnets and outbound to destinations
- Manage OS updates, security, scaling, and failover yourself
- Single instance = single point of failure; throughput limited by instance size
- Supports port forwarding; can also act as a bastion
- Can cost less for small workloads, but include management and availability tradeoffs
