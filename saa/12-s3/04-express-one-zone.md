# S3 Express One Zone

High-performance S3 storage class for latency-sensitive data.

- Uses directory buckets instead of general purpose buckets
- Stores data in one Availability Zone
- Accessed through zonal endpoints
- Single-digit millisecond request latency and very high request rates
- Co-locate compute and storage in the same AZ
- Good for analytics, machine learning, and high-performance workloads
- Lower resilience than multi-AZ S3 classes
- Keep another copy when the data must survive an AZ loss
- Pricing includes storage, requests, uploads, and retrieval
