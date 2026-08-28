# Auto Scaling Groups 

Scale in / out to match an increasing or decreasing load 
- Auto registers to load balancer which can check health and de-register 
- Free! 
- Min / Max capacity 
- Can scale off of CloudWatch alarms 

Use Launch template 
* AMI / Instance Type / SSH / SGs / IAM roles / Network + Subnets / Scaling policies 

Scaling polices: 

### Dynamic Scaling 
1. Target tracking scaling: Define target value (Ex CPU @ 40%)
2. Simple / step scaling: Define CloudWatch alarms 

### Scheduled Scaling 
Anticipate scaling based on known usage patterns 

### Predictive Scaling 
Continuously forecast load and schedule scaling ahead of time 

Good metrics to scale on:
- CPU utilization 
- Request count per target 
- Average network in / out 
- Any custom metric 

Cooldown period allows for metrics to stabilize 





