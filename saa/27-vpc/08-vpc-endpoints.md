# VPC Endpoints

Private access to supported services without an IGW or NAT gateway

`Instance -> VPC endpoint -> Service`

## Interface Endpoints

- Powered by AWS PrivateLink; ENI with private IPs in each selected subnet
- Attach SGs to control traffic reaching the endpoint
- Supports many AWS services and services published through PrivateLink
- Publish your own endpoint service behind an NLB; consumers connect through interface endpoints
- Private DNS lets normal service names resolve to endpoint IPs
- Private DNS requires VPC DNS resolution and DNS hostnames enabled
- Accessible from on-premises over VPN / Direct Connect with suitable routing and DNS
- Hourly charge per endpoint AZ, plus data processing

## Gateway Endpoints

- S3 and DynamoDB only; route-table targets, no ENIs or SGs
- Add endpoint routes to the relevant subnet route tables
- No endpoint hourly / data-processing charge; usually preferred for in-VPC S3 / DynamoDB access
- Cannot be used through peering, TGW, VPN, or Direct Connect; use interface endpoints where needed
- Endpoint policies restrict access; they do not replace IAM / resource policies
