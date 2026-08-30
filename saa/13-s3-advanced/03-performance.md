# S3 Performance

S3 automatically scales to high request rates.

- At least 3,500 PUT, COPY, POST, or DELETE requests per second per prefix
- At least 5,500 GET or HEAD requests per second per prefix
- Spread traffic across prefixes when one prefix needs more throughput
- Scaling can briefly return `503 Slow Down`; retry with exponential backoff
- Randomized key prefixes are no longer required

## Optimizations

### Multipart Upload

- Upload parts in parallel for better throughput and recovery
- Required above 5 GB; recommended for objects of 100 MB or more
- Complete or abort uploads because incomplete parts incur storage charges

### S3 Transfer Acceleration

- Client uploads to a nearby AWS edge location
- Data travels to the bucket over the AWS global network
- Best for long-distance transfers; additional charge

### Byte-Range Fetches

- Request object ranges in parallel
- Retry only a failed range
- Match ranges to multipart part boundaries when useful

### CloudFront

- Use CloudFront to cache objects repeatedly requested around the world
