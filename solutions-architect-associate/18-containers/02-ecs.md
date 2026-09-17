# Amazon ECS

Fully managed AWS container orchestration service

- Task definition: blueprint for containers, CPU, memory, networking, roles, and volumes
- Task: running copy of a task definition
- Service: maintains desired task count and integrates with load balancing/auto scaling

## Compute Options

### EC2

- You provision and maintain container instances
- ECS agent registers each instance with the cluster
- Auto Scaling groups or capacity providers scale cluster capacity

### Fargate

- Serverless: no EC2 instances to provision or patch
- Pay for task CPU, memory, and runtime
- Each task receives an elastic network interface with `awsvpc` networking

## IAM Roles

- Container instance role: EC2 host/ECS agent calls AWS services
- Task execution role: ECS pulls images, writes logs, and retrieves referenced secrets
- Task role: application code inside the container calls AWS services

## Networking and Storage

- ALB distributes HTTP(S) traffic across ECS service tasks
- EFS: persistent, shared file system across tasks and Availability Zones
- EBS: persistent block volume attached to one task; not shared concurrently

## ECS Service Auto Scaling

- Scales task count using CPU, memory, ALB requests per target, or custom metrics
- Separate from scaling EC2 cluster capacity
