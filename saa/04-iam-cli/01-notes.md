# IAM & AWS CLI
- IAM: Identity and Access Management (Global)
- Root account: Should not be used or shared 
- Users are individuals, can be grouped 
- Example: Developers group, Operations groups 
- Groups *only* contain users 
- Users *do not* have to belong to a group and can belong to *multiple* groups 

## Permissions 
- Users / Groups can be assigned JSON policy documents 

```
"Effect": "Allow",
"Action": "ec2"
```

- Polices define the permissions of the users 
- Least privilege: Never give a user more permission than they need for their work 

| IAM                                         | IAM Identity Center                      |
| ------------------------------------------- | ---------------------------------------- |
| Identity exists inside an AWS account       | Identity is centrally managed            |
| IAM users                                   | Identity Center users                    |
| IAM groups                                  | Identity Center groups                   |
| IAM policies attached to users/groups/roles | Permission sets assigned to users/groups |
| Usually account-specific                    | Designed for many AWS accounts           |
| Can use long-lived credentials              | Primarily temporary credentials          |
| Separate login/account management           | One portal / SSO                         |
| Harder to manage at large scale             | Built for centralized workforce access   |

- Account have Account ID + sign in URL, can change via account alias 
