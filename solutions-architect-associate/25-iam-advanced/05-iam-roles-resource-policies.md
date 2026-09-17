# IAM Roles vs. Resource-Based Policies

Two common cross-account access patterns

## Assume a Role

- Principal in account A -> AssumeRole in account B -> resource in B
- Caller needs permission to assume the role; role trust must allow the caller
- Requests using the role credentials use the role's permissions, not the caller's original permissions

## Direct Resource Access

- Principal in account A -> resource in B, e.g., through an S3 bucket policy
- No role switch; the principal keeps using its original identity
- Cross-account access requires both identity-side permission and resource-side permission
- Applicable explicit denies / permission limits still apply
- Only services supporting resource-based policies can use this pattern
