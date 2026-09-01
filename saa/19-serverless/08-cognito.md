# Amazon Cognito

Managed identity for web and mobile applications

## User Pools

- User directory and OIDC identity provider
- Sign-up, sign-in, MFA, managed login, and account recovery
- Federation with social, SAML, and OIDC identity providers
- Issues ID, access, and refresh JWTs
- Integrates with API Gateway and Application Load Balancer authentication

## Identity Pools

- Exchanges trusted login proof for temporary AWS credentials through STS
- Maps authenticated or guest users to IAM roles
- Use when a client must access AWS services such as S3 or DynamoDB directly

User pool token -> identity pool -> temporary, scoped AWS credentials

- Per-user DynamoDB access: restrict `dynamodb:LeadingKeys` with identity-based IAM conditions
