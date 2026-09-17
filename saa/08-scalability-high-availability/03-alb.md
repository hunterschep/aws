# Application Load Balancer

Layer 7 load balancer for HTTP and HTTPS traffic.

- Supports HTTP/2, WebSockets, and gRPC
- One ALB can route to many applications and target groups
- Best for microservices, containers, and content-based routing
- Uses a DNS name; it does not provide fixed public IP addresses
- Adds client details in `X-Forwarded-For`, `X-Forwarded-Proto`, and `X-Forwarded-Port`

## Target Types

- `instance`: EC2 instances by instance ID
- `ip`: Private IP addresses
- `lambda`: One Lambda function
- ECS services register tasks using instance or IP targets

## Listeners and Rules

- A listener accepts traffic on a protocol and port
- Every listener has a default rule
- Rules are evaluated by priority
- Conditions can match host, path, header, method, query string, or source IP
- Actions: Forward, redirect, or return a fixed response
- Target groups define routing and health checks

For private backends, allow inbound traffic to target security groups only from the ALB security group.
