# AWS Elastic Beanstalk

Developer-focused platform for deploying applications on AWS.

- Upload application code; Beanstalk manages deployment
- Handles capacity provisioning, load balancing, scaling, and health monitoring
- Underlying AWS resources remain visible and configurable

## Components

- Application: collection of environments, versions, and configurations
- Application version: versioned application source bundle
- Environment: AWS resources running one application version at a time

## Environment Tiers

- Web server: handles HTTP requests using EC2, Auto Scaling, and a load balancer
- Worker: processes asynchronous jobs from an SQS queue
- Single-instance environment: development or low availability
- Load-balanced environment: scalable, highly available production workload

## Workflow

    Create application -> upload version -> launch environment -> manage environment

## Deployment Policies

- All at once: fastest, but causes brief downtime
- Rolling: deploys in batches with temporarily reduced capacity
- Rolling with additional batch: maintains capacity using extra instances
- Immutable: deploys to a new Auto Scaling group; quick rollback on failure
- Traffic splitting: sends test traffic to new instances for canary testing; requires an ALB
- Blue/green: deploys a separate environment, then swaps CNAMEs
