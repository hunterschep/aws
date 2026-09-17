# Cross-Origin Resource Sharing

Browser security feature that controls cross-origin web requests.

- Origin = scheme + host + port
- `https://app.example.com` and `https://api.example.com` are different origins
- Browsers can send an `OPTIONS` preflight request before the actual request
- The destination returns CORS response headers when the origin and method are allowed

## S3 CORS Configuration

Configure the bucket with:

- Allowed origins
- Allowed HTTP methods
- Allowed request headers
- Optional exposed response headers and preflight cache duration

## Exam Notes

- CORS is enforced by browsers, not by server-to-server clients
- CORS does not grant S3 permission
- The IAM or bucket policy must still authorize the request
