# DDoS Best Practices

## Edge Protection

- CloudFront: Cache content and absorb web traffic at the edge; Shield integration
- Global Accelerator: AWS edge entry points for TCP / UDP applications; Shield integration
- Route 53: Distributed DNS with built-in DDoS protection

## Infrastructure Layer

- Load balancers distribute traffic across healthy targets
- Auto Scaling adds capacity, within configured limits
- Multi-AZ architecture reduces dependence on one location
- Scaling helps absorb load, but does not filter attacks or guarantee cost protection

## Application Layer

- WAF managed / custom rules filter suspicious requests
- Rate-based rules help limit request floods
- Restrict origin access to trusted entry points using security groups / resource policies
- Keep unnecessary ports closed; use private backends where appropriate
