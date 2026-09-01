# CloudFront Edge Functions

Run request/response logic near users to reduce latency

## CloudFront Functions

- Lightweight JavaScript for viewer request and viewer response events
- Submillisecond execution at very high scale
- Managed, tested, and deployed entirely through CloudFront
- No network, file system, or request-body access
- Use cases: cache-key normalization, headers, redirects, rewrites, simple authorization

## Lambda@Edge

- Node.js or Python attached to a published Lambda version
- Viewer request/response and origin request/response events
- More execution time, memory, libraries, network access, and request-body access
- Function created in `us-east-1`, then replicated by CloudFront
- No VPC access or environment variables
- Use cases: advanced authorization, origin selection, dynamic content, image manipulation

Choose CloudFront Functions for lightweight viewer logic; Lambda@Edge for richer processing
