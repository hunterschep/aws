# S3 Security

Buckets and objects are private by default.

## Access Controls

- IAM identity policies: permissions attached to users, groups, or roles
- Bucket and access point policies: resource-based permissions
- ACLs: legacy object or bucket permissions
- S3 Object Ownership defaults to Bucket owner enforced, which disables ACLs
- Block Public Access overrides public policies and ACLs at applicable levels

## Policy Evaluation

- Implicit deny by default; an explicit deny overrides every allow
- Same account: an identity or resource policy can provide the required allow
- Cross-account: both the principal's account and the resource account must allow access
- Permissions boundaries, session policies, SCPs, and RCPs can further restrict access
- SSE-KMS objects also require permission to use the KMS key

## Bucket Policy Elements

- `Resource`: bucket ARN for bucket actions; `bucket/*` for object actions
- `Action`: S3 API operations to allow or deny
- `Principal`: account, identity, service, or public principal in a resource policy
- `Effect`: `Allow` or `Deny`
- `Condition`: optional constraints such as TLS, source VPC, or encryption

## Exam Notes

- IAM Access Analyzer for S3 identifies external or public access
- VPC endpoint policies can restrict private S3 access
- Prefer policies with Bucket owner enforced instead of ACLs
