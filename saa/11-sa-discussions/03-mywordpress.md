# Scalable WordPress Architecture

Prompt: scalable WordPress site with shared uploads and a MySQL database.

## Storage Problem

- Files written to one instance are unavailable on another instance
- EBS is AZ-scoped and normally attached to one instance
- EBS is not suitable as shared storage for an Auto Scaling web tier

## Architecture

    Route 53 -> load balancer -> Auto Scaling group
                                  |          |
                              EC2 in AZ A  EC2 in AZ B
                                  \          /
                                       EFS
                                        |
                              RDS or Aurora MySQL

- Store WordPress uploads on EFS
- Create an EFS mount target (ENI) in each application AZ
- Store site content and metadata in RDS or Aurora MySQL
- Use RDS Multi-AZ or Aurora replicas across AZs for database availability
- S3 is an alternative for uploads when the application supports object storage
