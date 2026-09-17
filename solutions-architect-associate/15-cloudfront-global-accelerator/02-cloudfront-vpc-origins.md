# CloudFront VPC Origins

Deliver applications from private VPC subnets without exposing the origin publicly.

    Viewer -> CloudFront -> private connection -> private ALB, NLB, or EC2

- CloudFront becomes the public entry point
- Supports private Application Load Balancers, Network Load Balancers, and EC2 instances
- Origin resource must have a security group
- Allow CloudFront through its managed prefix list or service-managed security group
- NLB must have a security group and cannot use a TLS listener as a VPC origin
- VPC origins do not support gRPC

## Geographic Restrictions

- Allowlist or blocklist viewers by country
- Viewer country is determined from a geolocation IP database
- Common for licensing, copyright, and compliance requirements
