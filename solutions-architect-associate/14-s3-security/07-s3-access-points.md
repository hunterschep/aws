# S3 Access Points

Named endpoints that simplify access to shared S3 data.

- Each access point has its own hostname, policy, and network controls
- Create separate access points for teams, applications, or prefixes
- Can restrict requests to a specific VPC
- Access point and underlying bucket policies are evaluated together
- Bucket policy can delegate access control to access points
- Block Public Access also applies to access points
- Access points support object operations, not bucket administration

## S3 Object Lambda

Uses Lambda to transform data returned by S3 `GET`, `LIST`, or `HEAD` requests.

- Built from an Object Lambda Access Point and a supporting S3 access point
- Redact data, resize images, or enrich responses without storing another copy
- Since November 7, 2025, available only to existing users and select APN partners
