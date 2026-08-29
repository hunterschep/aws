# Amazon Route 53

Highly available, scalable, managed authoritative DNS service.

- Also provides domain registration
- Supports public and private DNS
- Integrates health checks with DNS failover

## DNS Records

A record contains:

- Domain or subdomain name
- Record type
- Value or target
- Routing policy
- TTL, except when Route 53 derives it for an alias

Common record types:

- A: hostname -> IPv4 address
- AAAA: hostname -> IPv6 address
- CNAME: hostname -> another hostname
- NS: authoritative name servers for the hosted zone

## Hosted Zones

- Public hosted zone: records resolvable on the internet
- Private hosted zone: records resolvable within associated VPCs
- TTL controls how long resolvers cache a response
- Lower TTL: faster changes, more DNS queries
- Higher TTL: slower changes, fewer DNS queries

## CNAME vs. Alias

### CNAME

- Standard DNS record pointing one hostname to another hostname
- Works only for non-apex names, such as app.example.com
- Cannot be created at the zone apex, such as example.com

### Alias

- Route 53 extension that points to supported AWS resources or another record
- Works at both the zone apex and subdomains
- Created as an A or AAAA record
- Uses the target's TTL; no separate TTL is configured
- Can evaluate the target resource's health
- Common targets: ELB, CloudFront, API Gateway, and S3 websites
- Cannot target an EC2 public DNS name
