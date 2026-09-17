# MyBlog Architecture

## Requirements

- Global scale; rare writes and frequent reads
- Static and dynamic content
- Caching, subscriber email, and image thumbnails

## Static Content

User -> CloudFront -> S3

- S3 stores static assets; CloudFront caches them globally
- Origin access control (OAC) keeps S3 private to CloudFront

## Dynamic API

User -> API Gateway -> Lambda -> DynamoDB

- CloudFront caches responses near clients; REST API caching reduces regional backend calls
- DAX caches repeated DynamoDB reads when microsecond latency is required
- Global tables only when the application needs multi-Region DynamoDB reads/writes

## Events

- New subscriber -> DynamoDB Streams -> Lambda -> SES welcome email
- Image upload -> S3 event -> Lambda -> thumbnail in a separate prefix/bucket
- Separate source/output paths prevent recursive S3 invocations
