# AWS Overview

## History

- 2002: Early AWS services launched
- 2004: Amazon SQS launched
- 2006: Amazon S3 and Amazon EC2 launched
- 2007: AWS expanded to Europe

## Common Use Cases

- Enterprise IT, backup, and disaster recovery
- Websites, mobile applications, and social applications
- Big data, machine learning, and gaming
- Scalable, highly available applications

## Global Infrastructure

### Regions

- Separate geographic areas, such as `us-east-1`
- Isolated from other Regions; resources are not replicated automatically
- Most AWS services and resources are Region-scoped
- Choose a Region based on:
  - Compliance and data residency
  - Proximity to users and latency
  - Available services and features
  - Pricing

### Availability Zones

- Each Region has at least three isolated Availability Zones (AZs)
- Each AZ contains one or more discrete data centers
- Separate power, networking, and connectivity
- Connected within a Region by high-bandwidth, low-latency networking
- Deploy across multiple AZs for high availability

### Edge Locations and Points of Presence

- Sites close to users for low-latency content delivery and DNS responses
- Used by services such as Amazon CloudFront and Amazon Route 53
