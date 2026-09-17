# Elastic Load Balancing

Elastic Load Balancing (ELB) distributes incoming traffic across healthy targets.

- Managed by AWS and scales automatically
- Supports targets in multiple Availability Zones
- Performs health checks and stops routing to unhealthy targets
- Provides one DNS endpoint
- Can be internet-facing or internal

## Load Balancer Types

| Type | Layer | Traffic and Use |
| --- | --- | --- |
| Application Load Balancer (ALB) | 7 | HTTP, HTTPS, WebSockets, and gRPC |
| Network Load Balancer (NLB) | 4 | TCP, TLS, and UDP; very high performance |
| Gateway Load Balancer (GWLB) | 3 | IP traffic through virtual network appliances |
| Classic Load Balancer (CLB) | 4 and 7 | Previous generation; migrate to a current type |

## Security

- For an ALB, allow client traffic to the load balancer security group
- Target security groups should allow traffic only from the ALB security group
- Targets do not need public IP addresses

## Deregistration Delay

Allows in-flight requests to finish before a target is removed. Also called connection draining.
