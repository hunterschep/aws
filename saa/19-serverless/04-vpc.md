# Lambda Networking and RDS Proxy

## Lambda in a VPC

- By default, Lambda runs in an AWS-managed VPC with internet access
- It cannot reach private resources in your VPC unless attached to it
- Configure customer VPC subnets and security groups for private access
- Lambda uses managed Hyperplane elastic network interfaces for VPC connectivity
- Attaching to a public subnet does not give the function public internet access
- Use private subnets with a NAT gateway for IPv4 internet access
- Use VPC endpoints for private access to supported AWS services

## RDS Proxy

Lambda -> RDS Proxy -> RDS/Aurora

- Pools and reuses database connections
- Protects the database from Lambda connection bursts
- Improves failover handling and can use IAM database authentication
- Proxy and database must be reachable from the Lambda VPC configuration
- Supported RDS/Aurora engines can also invoke Lambda from database code
