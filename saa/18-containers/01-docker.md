# Docker and AWS Containers

- Container image: packaged application code, runtime, libraries, and dependencies
- Container: running instance of an image
- Portable across compatible operating systems and CPU architectures
- Common uses: microservices, batch jobs, and application migrations
- Images stored in registries such as Docker Hub or Amazon ECR

## Containers vs. Virtual Machines

- Containers share the host OS kernel; lightweight and fast to start
- VMs include a guest OS and run through a hypervisor; stronger isolation, more overhead
- One host can run many isolated containers

## AWS Services

- ECS: AWS-native container orchestration
- EKS: managed Kubernetes
- Fargate: serverless compute for ECS tasks and EKS pods
- ECR: managed container image registry
