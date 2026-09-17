# CloudFront Cache Invalidation

CloudFront normally serves a cached object until its TTL expires.

- Invalidation removes selected paths from edge caches before expiration
- Next request is a cache miss and retrieves the current object from the origin
- Invalidate everything with `/*` or a group such as `/images/*`
- Invalidations can incur charges beyond the monthly free allowance
- Prefer versioned filenames for frequent deployments and simple rollback
