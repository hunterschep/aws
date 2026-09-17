# Amazon CloudFront

Global content delivery network for low-latency HTTP and HTTPS delivery.

- Edge locations cache content close to viewers
- Cache miss: CloudFront retrieves from the origin and can cache the response
- Also accelerates dynamic content over the AWS global network
- Integrates with AWS WAF and AWS Shield for edge protection

## Origins

- S3 bucket: use Origin Access Control for private content
- Origin Access Identity: legacy S3 option; OAC is recommended
- S3 website endpoint: custom origin; OAC and OAI are unsupported, so objects must be public
- Custom origin: public ALB, API Gateway, EC2, or any HTTP server
- VPC origin: private ALB, NLB, or EC2 instance

## Cache Behaviors

- Path pattern selects an origin and behavior
- Configure viewer protocol, allowed methods, TTLs, and cache policy
- Cache key can include selected headers, cookies, and query strings
- Include only values that change the response to improve cache-hit ratio

## Private Content

- Signed URL: access to an individual file
- Signed cookies: access to multiple files without changing their URLs

## Exam Notes

- ACM certificate for a CloudFront custom domain must be in `us-east-1`
- CloudFront caches on demand; it does not copy every object to every edge
- S3 CRR creates full copies in another Region and is not an edge cache
