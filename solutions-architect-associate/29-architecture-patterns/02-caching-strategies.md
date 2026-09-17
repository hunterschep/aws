# Caching Strategies

## Cache Layers

- CloudFront: Cache content at edge locations near users
- API Gateway: Regional, per-stage response caching for REST APIs, not HTTP APIs
- Application cache: EC2 memory / Lambda execution-environment reuse; not shared or durable
- ElastiCache: Shared in-memory cache using Valkey, Redis OSS, or Memcached in front of a database

## Cache Behavior

- Cache-aside / lazy loading: Check cache -> On miss, read database -> Populate cache
- Primarily reduces repeated database reads and latency; does not automatically reduce writes
- TTL controls expiration; invalidation removes stale entries before expiry
- Short TTL: Fresher data, more cache misses; long TTL: Better hit rate, more risk of stale data
- Cache keys must distinguish responses that vary by user / request; avoid sharing private data
