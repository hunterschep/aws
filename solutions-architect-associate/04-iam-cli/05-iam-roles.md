# IAM Roles

- IAM identity with permission policies and no long-term credentials
- Assumed by users, AWS services, applications, or other accounts
- Trust policy controls who can assume the role
- AWS STS provides temporary credentials for the role session

## Common Examples

- EC2 instance role, delivered through an instance profile
- Lambda execution role
- CloudFormation service role
- Cross-account access role

Use roles instead of storing access keys on AWS resources.
