# Amazon RDS Proxy

Fully managed, highly available database proxy for RDS and Aurora.

- Pools and reuses database connections
- Reduces database CPU and memory spent on connection management
- Handles sudden connection spikes without overwhelming the database
- Especially useful for Lambda and other highly concurrent applications
- Preserves application connections and speeds database failover
- Serverless and automatically scales

## Security and Access

- Accessed inside a VPC; never publicly accessible
- Can use credentials stored in Secrets Manager
- Can require IAM authentication from clients
- End-to-end IAM authentication is available for supported configurations
- Supports TLS connections

Client -> API Gateway -> Lambda -> RDS Proxy -> RDS or Aurora
