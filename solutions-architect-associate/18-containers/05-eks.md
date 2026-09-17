# Amazon EKS

Managed Kubernetes control plane for deploying and scaling containerized apps

- AWS manages the highly available Kubernetes control plane
- Pods run on worker compute in your account
- Best fit when Kubernetes compatibility, APIs, or tooling are required
- ECS is usually simpler for AWS-native workloads without a Kubernetes requirement

## Worker Compute

- Managed node groups: EKS manages EC2 node provisioning, updates, and draining
- Self-managed nodes: you create, patch, and register EC2 instances
- Fargate: serverless compute selected through Fargate profiles
- Managed/self-managed nodes commonly use EC2 Auto Scaling groups

## Storage

- EBS CSI: persistent block storage for pods on EC2 nodes; volume tied to one AZ
- EFS CSI: shared, multi-AZ file storage; supported by EC2 and Fargate pods
- FSx CSI drivers: managed file systems for specialized workloads on EC2 nodes
- EKS Fargate pods cannot mount EBS volumes

## Fargate Notes

- Each pod has its own compute and network boundary
- Load balancers must register Fargate pods as IP targets
- No DaemonSets, privileged containers, GPUs, or Fargate Spot
