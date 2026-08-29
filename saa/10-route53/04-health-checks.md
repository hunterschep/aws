# Route 53 Health Checks

Health checks enable automated DNS failover.

- Run periodically, not when a DNS query arrives
- Endpoint checks support HTTP, HTTPS, and TCP
- HTTP and HTTPS success responses use status codes 2xx or 3xx
- Endpoint health checkers can access only public endpoints
- Allow Route 53 health checker IP ranges through firewalls and security groups

## Types

1. Endpoint health check
2. Calculated health check combining other health checks
3. Health check based on a CloudWatch alarm

## Private Resources

Route 53 health checkers cannot directly reach private endpoints:

1. Publish a CloudWatch metric for the private resource.
2. Create a CloudWatch alarm.
3. Create a Route 53 health check based on the alarm.

## Alias Records

- Enable Evaluate Target Health for supported AWS alias targets
- Route 53 then uses the target resource's health, such as an ELB target group
