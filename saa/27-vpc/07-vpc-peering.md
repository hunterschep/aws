# VPC Peering

Private connection between two VPCs over the AWS network

- Same / different accounts and Regions supported
- VPC CIDR ranges must not overlap
- Non-transitive: A <-> B and B <-> C do not connect A <-> C
- Add routes to the peer CIDR in the relevant subnet route tables on both sides
- SGs and NACLs must also allow the traffic
- Can reference the peer's SG across accounts, but only within the same Region
- Cannot use a peer's IGW, NAT gateway, VPN, Direct Connect, or gateway endpoint
- Many VPCs / transitive routing: Consider Transit Gateway
