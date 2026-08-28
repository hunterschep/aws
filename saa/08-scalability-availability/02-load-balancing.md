# Load Balancing 

Servers that forward traffic to multiple possible downstream healthy backends. Spreads load through single point of access. 

Elastic Load Balancer = AWS Managed load balancer 


1. Classic Load Balancer (CLB): v1 old generation, HTTP HTTPS TCP SSL (DEPRECATED)

2. Application Load Balancer (ALB): NEW, 
HTTP, HTTPS, WebSockets - Layer 7 

3. Network Load Balancer (NLB): TCP, TLS, UDP - Layer 4 

4. Gateway Load Balancer (GWLB): IP Protocol - Layer 3 


## Security 

- Users can access from anywhere via HTTP or HTTPS 
- EC2 instances then only allow instances from load balancer 


## Connection draining / de-registration delay 
Time to complete in flight requests while instance is de-registering / unhealthy 

