# Networking Costs

Rates depend on service, Region, traffic path, and volume; avoid universal cents-per-GB assumptions

## Data Transfer

- Internet -> EC2: Generally no data-transfer-in charge; network processing can still cost money
- EC2 <-> EC2, same AZ using private IPs: No data-transfer charge
- Cross-AZ traffic: Generally charged; EC2-to-EC2 charges can apply at both ends
- Cross-Region and internet egress: Generally charged; rates / free allowances vary
- S3 <-> EC2 in the same Region: No data-transfer charge; request / retrieval charges may still apply
- AWS-provided public IPv4 addresses, including Elastic IPs: Hourly charges, even when idle

## Reduce Network Costs

- Keep traffic local where practical, without sacrificing required Multi-AZ availability
- Zonal NAT gateway in the workload's AZ avoids extra cross-AZ transfer
- NAT gateway: Hourly + per-GB processing + applicable data-transfer charges
- Regional NAT gateway: Hourly charge per enabled AZ, not one flat VPC-wide fee
- S3 / DynamoDB gateway endpoints: No endpoint charges; avoid NAT processing for that traffic
- Interface endpoints: Hourly per AZ + processing; compare total cost with NAT for the workload
- Reduce internet egress with caching / compression; keep processing close to the data

Current rates: [VPC pricing](https://aws.amazon.com/vpc/pricing/) / [EC2 transfer pricing](https://aws.amazon.com/ec2/pricing/on-demand/)
