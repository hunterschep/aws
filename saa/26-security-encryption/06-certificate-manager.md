# AWS Certificate Manager (ACM)

Provision, manage, and deploy TLS certificates for HTTPS

- Supports public certificates and private certificates through AWS Private CA
- Common integrations: ALB, CloudFront, API Gateway
- Client -> HTTPS -> ALB with ACM certificate -> application
- Backend connection needs its own TLS configuration for end-to-end encryption
- Certificates can cover specific domains or wildcards
- Public domain validation: DNS CNAME or email; DNS is preferred for automated renewal
- Eligible ACM-issued certificates renew automatically; imported certificates need manual renewal / reimport
- EventBridge expiration events and AWS Config rules can help monitor certificate expiry

## Regional Rules

- ALB: Certificate must be in the same Region as the load balancer
- CloudFront viewer certificate: Must be in `us-east-1`

## API Gateway REST API Endpoints

- Edge-optimized: CloudFront-backed; custom-domain certificate in `us-east-1`
- Regional: Regional endpoint; custom-domain certificate in the API's Region
- Private: Access through VPC endpoints, not a public internet endpoint
