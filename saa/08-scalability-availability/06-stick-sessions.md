# Sticky Sessions

Session affinity routes a client to the same target for the cookie lifetime.

- Useful when targets store local session state
- Can create uneven load across targets
- Prefer shared session storage when possible
- Enabled at the target-group level
- Client must support cookies
- ALB stickiness requires cross-zone load balancing

## ALB Cookie Types

- Application-based: Target creates a custom cookie; ALB adds an `AWSALBAPP-*` cookie
- Duration-based: ALB creates an `AWSALB` cookie with a configured duration
