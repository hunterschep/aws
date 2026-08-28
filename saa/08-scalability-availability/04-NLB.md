# Network Load Balancer

Layer 4 load balancer for TCP, TLS, and UDP traffic.

- Handles millions of requests per second with very low latency
- Provides one static IP per enabled Availability Zone
- Internet-facing NLB can use one Elastic IP per AZ
- Supports TLS termination
- Target types: EC2 instances, private IP addresses, or an ALB
- Health checks: TCP, HTTP, or HTTPS

Use when an application needs extreme performance, static IP addresses, or non-HTTP traffic.
