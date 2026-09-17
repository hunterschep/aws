# Infrastructure at Scale

## CloudFormation

Declarative infrastructure as code (IaC): Define resources in a YAML / JSON template

- Stack: Collection of resources created, updated, and deleted together
- Example: Security group + two EC2 instances + load balancer + S3 bucket
- CloudFormation provisions supported resources and manages their dependencies
- Reusable, version-controlled templates for consistent environments and less manual work
- Parameters: Customize a template; outputs: Expose values such as resource IDs / endpoints

## Stack Operations

- Change sets: Preview proposed changes, including replacements / deletions, before execution
- Rollback: Can undo failed stack operations; review events to find the cause
- Drift detection: Identify supported resources / properties changed outside CloudFormation
- StackSets: Deploy the same template across multiple accounts and Regions
- IAM service role: Permissions CloudFormation uses to manage stack resources; grant least privilege
- Deleting a stack can delete its data; `DeletionPolicy: Retain` preserves a resource, `Snapshot` backs up supported resources before deletion
