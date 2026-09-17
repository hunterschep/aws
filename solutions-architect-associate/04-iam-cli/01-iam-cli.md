# IAM and AWS CLI

- AWS Identity and Access Management (IAM): global identity and authorization service
- Root user: complete account access; secure with MFA and avoid for everyday tasks
- IAM users: long-lived identities within one AWS account
- IAM groups: collections of users; groups cannot contain other groups
- A user can belong to multiple groups or no group

For workforce access, prefer IAM Identity Center or federation with temporary credentials.

## Permissions

- Attach JSON policies to users, groups, or roles
- Everything is implicitly denied unless an applicable policy allows it
- Least privilege: grant only the permissions required

```json
{
  "Effect": "Allow",
  "Action": "ec2:DescribeInstances",
  "Resource": "*"
}
```

## IAM vs. IAM Identity Center

| IAM | IAM Identity Center |
| --- | --- |
| Identities within one account | Central workforce identities |
| IAM users and groups | Identity Center users and groups |
| Policies on users, groups, and roles | Permission sets create roles in accounts |
| Can use long-lived credentials | Uses temporary credentials |
| Account-specific sign-in | One access portal across accounts |

- IAM user sign-in: account ID or alias, username, and password
