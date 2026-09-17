# AWS Organizations

Global service for managing multiple AWS accounts

- Management account: Manages the organization and consolidated billing
- Member account belongs to only one organization
- Consolidated usage discounts; eligible Reserved Instance / Savings Plans discounts can be shared
- Automate account creation through APIs
- Organization root contains accounts and OUs; OUs can contain accounts or nested OUs
- Organize by business unit, environment, or project
- Organization root is not the same as an account's root user

## Service Control Policies (SCPs)

- Attach to organization root, OUs, or accounts; require all features enabled
- Limit member-account identities, including the root user; do not grant access
- Do not restrict the management account or service-linked roles
- IAM permissions still required, even when SCPs allow an action
- An action must be allowed through every level from root to account
- Explicit deny at any applicable level wins
