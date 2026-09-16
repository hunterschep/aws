# Default VPC and Subnets

VPC (Virtual Private Cloud): Isolated network within one AWS Region

- VPC spans AZs; each subnet belongs to one AZ
- Default VPC: `172.31.0.0/16`, public subnet per AZ, internet gateway attached
- Default subnets auto-assign public IPv4 addresses to EC2 instances
- Custom VPCs do not automatically get this internet setup
- IPv4 VPC / subnet CIDRs: `/16` to `/28`; subnet CIDRs must fit within the VPC and not overlap

## Reserved IPv4 Addresses

AWS normally reserves the first four and last address in each subnet

Example: `10.0.0.0/24` has 256 total, 251 usable addresses

- `10.0.0.0`: Network address
- `10.0.0.1`: VPC router
- `10.0.0.2`: Reserved for AWS DNS
- `10.0.0.3`: Future use
- `10.0.0.255`: Broadcast address; VPC does not support broadcast

## Internet Gateway (IGW) and Routes

- One IGW attached per VPC; an IGW attaches to only one VPC at a time
- Public subnet: Route to an IGW, typically `0.0.0.0/0 -> IGW` for IPv4
- EC2 IPv4 internet access also needs a public IPv4 / Elastic IP and SG / NACL rules
- Each subnet uses one route table; one route table can serve multiple subnets
- Local routes connect resources within the VPC; most specific matching route wins
