# Cross-Zone Load Balancing

- Enabled: Each load balancer node can route to targets in every enabled AZ
- Disabled: Each node routes only to targets in its own AZ
- Without cross-zone balancing, keep target capacity even across AZs

## Defaults

- ALB: Enabled at the load-balancer level; target groups can override it
- NLB: Disabled by default; can be enabled
- GWLB: Disabled by default; can be enabled
- CLB: Default depends on whether it was created through the console or API
