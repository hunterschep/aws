# EC2 Auto Scaling Groups

An Auto Scaling group (ASG) maintains and adjusts a fleet of EC2 instances.

- Minimum, desired, and maximum capacity
- Spans subnets in multiple Availability Zones
- Replaces unhealthy or terminated instances to maintain desired capacity
- Automatically registers and deregisters instances with an attached target group
- No additional ASG charge; pay for the resources it launches
- EC2 health checks are enabled by default
- Enable ELB health checks for the ASG to replace load-balancer-unhealthy instances

## Launch Template

Defines how new instances launch:

- AMI and instance type
- Key pair, security groups, and IAM instance profile
- User data and EBS volumes
- Metadata and monitoring options

Subnets, desired capacity, and scaling policies belong to the ASG, not the launch template.

## Scaling Methods

### Dynamic Scaling

- Target tracking: Keeps a metric near a target, such as average CPU at 40%
- Step scaling: Changes capacity based on the size of an alarm breach
- Simple scaling: One adjustment followed by a cooldown period

### Scheduled Scaling

Changes capacity at known times, such as a weekday traffic peak.

### Predictive Scaling

Forecasts recurring load and schedules capacity ahead of demand. Often combined with dynamic scaling.

## Useful Metrics

- Average CPU utilization
- ALB request count per target
- Average network in or out
- Custom CloudWatch metrics

Instance warmup prevents new instances from distorting scaling metrics. Cooldown mainly applies to simple scaling.
