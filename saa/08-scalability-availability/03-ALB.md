# Application Load Balancer 

Layer 7 load balancer (HTTP)

Load balancing to multiple machines or multiple applications on one instance 

Target Groups: 
* EC2 instances (Can be ASG) - HTTP 
* ECS tasks (Managed via ECS) - HTTP 
* Lambda functions - HTTP -> JSON 
* IP addresses -> must be private 

Only for HTTP / HTTPS Traffic 

Advanced concepts: 

1. Security: 
- Can configure instances to be only accessible via ALB: Change incoming traffic to be only be from Load Balancer SG 

2. Listener rules: 
- Rules choose what target group ALB traffic goes to (Forward/Redirect/Return response)
- Can give rules different priorities 


