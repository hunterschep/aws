# IAM Permissions Boundaries

Maximum permissions that identity-based policies can grant

- Supported for IAM users and roles, not groups
- A managed policy used as a boundary; does not grant permissions by itself
- Effective identity-based permissions = identity policy allows intersected with boundary allows
- Example: Policy allows S3 + EC2, boundary allows only S3 -> no EC2 access
- Useful for delegating IAM administration without allowing unrestricted permissions
- Explicit denies still win; SCPs can further restrict access
- Caveat: Same-account resource grants directly to a user ARN / role-session ARN can bypass implicit boundary denies
- Grants to a role ARN remain limited by its boundary
