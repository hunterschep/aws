# Blocking IP Addresses

- Network ACL: Subnet-level allow / deny rules; stateless, lowest rule number evaluated first
- Security group: Stateful allow rules only; cannot explicitly deny one IP inside an allowed range
- Host firewall: Block traffic using firewall software on the EC2 instance
- CloudFront geo restriction: Allow / block countries, not individual IP addresses
- AWS WAF IP set: Block IPs / CIDR ranges for HTTP(S) applications on CloudFront, ALB, or API Gateway REST APIs
- Behind CloudFront / ALB, the origin may see proxy IPs; block viewer IPs at the entry point with WAF
- SGs / NACLs do not inspect HTTP headers such as `X-Forwarded-For`
