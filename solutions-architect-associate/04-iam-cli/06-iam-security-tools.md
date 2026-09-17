# IAM Security Tools

- Credential report: Account-wide list of IAM users and credential status
- Access Advisor: Services an identity can access and when they were last used
- IAM Access Analyzer: Finds external access, validates policies, and helps generate policies

## Best Practices

- Use the root user only for tasks that require it
- Enable MFA for human identities
- Prefer federation, IAM Identity Center, and temporary credentials
- Use groups to assign permissions to IAM users
- Grant least privilege and review permissions regularly
- Use roles for workloads and AWS services
- Remove unused passwords and access keys
- Never share users or credentials
