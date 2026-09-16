# NAT Gateway

AWS-managed NAT: Outbound connections without allowing unsolicited inbound connections

- Scales automatically; charged for gateway hours and data processed
- No security groups attached to the gateway; use instance SGs and subnet NACLs

## Zonal NAT Gateway

- Public NAT: Public subnet + Elastic IP + route to an IGW
- Private subnet route: `0.0.0.0/0 -> NAT gateway`
- Highly available within its AZ, not across AZs
- Multi-AZ design: Gateway per AZ, with private subnets using their local gateway
- Private NAT: No Elastic IP; private connectivity via VPN / Direct Connect / TGW, not internet access

## Regional NAT Gateway

- One regional gateway ID; automatic mode expands across AZs with workloads
- AWS manages Multi-AZ availability; no per-AZ gateways or public subnets to create
- Route private subnets to the regional gateway
- Public NAT only; private NAT still uses zonal gateways
- Hourly charges per enabled AZ, plus data processing
