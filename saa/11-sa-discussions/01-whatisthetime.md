# Stateless Web Architecture: WhatIsTheTime.com

Prompt: stateless website that returns the current time.

## Architecture Evolution

1. **Single public EC2 instance**
   - Simple, but a single point of failure and limited capacity

2. **Multiple public EC2 instances**
   - Horizontal scaling, but users must handle multiple IP addresses

3. **Route 53 with multiple A records**
   - DNS distributes answers, but TTL caching delays instance changes

4. **Public load balancer with private EC2 instances**
   - One endpoint, connection distribution, and health checks
   - Route 53 alias record points to the load balancer

5. **Auto Scaling group**
   - Uses a launch template to add, remove, and replace instances
   - Automatically registers instances with the target group

6. **Multi-AZ deployment**
   - Load balancer and Auto Scaling group span at least two AZs

7. **Baseline capacity and cost**
   - Set Auto Scaling minimum, desired, and maximum capacity
   - Use Savings Plans or Reserved Instances for predictable baseline usage
   - Use On-Demand Instances for variable capacity

## Final Architecture

    Route 53 alias
           |
    Public load balancer in 2+ AZs
           |
    Auto Scaling target group
         /           \
    Private EC2   Private EC2
       AZ A          AZ B

## Exam Notes

- Stateless design lets any healthy instance serve any request
- Load balancer security group accepts clients; EC2 accepts only the load balancer
- Load balancer health checks stop routing to unhealthy targets
- Enable ELB health checks on the Auto Scaling group to replace unhealthy targets
- Savings Plans and Reserved Instances discount usage; they do not set Auto Scaling capacity
