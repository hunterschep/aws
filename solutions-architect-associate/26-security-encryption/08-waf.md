# AWS WAF

Filter HTTP(S) requests to protect web applications at Layer 7

- Attach a web ACL to CloudFront, ALB, API Gateway REST APIs, AppSync, or Cognito user pools
- Not attached directly to NLBs
- Rules inspect IPs, headers, URI, query strings, and request bodies
- Match by geography, request size, or patterns
- Managed rules help detect SQL injection, cross-site scripting (XSS), and other attacks
- Rate-based rules limit excessive requests, e.g., per source IP
- Actions include allow, block, count, CAPTCHA, and challenge
- Regional web ACL for regional resources; CloudFront-scoped web ACL for CloudFront
