# EC2 Instance Roles

- Never run `aws configure` with long-lived access keys on an EC2 instance
- Attach an IAM role to the instance through an instance profile
- Applications retrieve temporary, automatically rotated credentials from instance metadata
- Scope the role to the permissions the workload needs
- Enforce IMDSv2 to protect instance metadata credentials
