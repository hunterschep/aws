# Amazon ElastiCache

Managed in-memory cache for Valkey, Redis OSS, and Memcached.

- Sub-millisecond access for read-heavy, low-latency workloads
- Reduces load on databases and other backing stores
- Shared session storage helps make application servers stateless
- Requires application caching logic and an invalidation strategy

## Cache-Aside Flow

1. Application checks the cache.
2. Cache hit: return the cached value.
3. Cache miss: read from the database.
4. Write the result to the cache with a TTL.

## Engine Choice

### Valkey and Redis OSS

- Rich data structures, including sets and sorted sets
- Replication and read replicas
- Multi-AZ with automatic failover
- Snapshot and restore support
- Cluster mode supports sharding

### Memcached

- Simple distributed key-value cache
- Multithreaded architecture
- Client-side sharding across nodes
- No replication or automatic failover for node-based clusters
- No node-based backups; treat cached data as disposable

## Security

- Runs inside a VPC; security groups control network access
- Supports encryption at rest and TLS in transit
- Valkey and Redis OSS support IAM authentication, RBAC, or AUTH tokens
- Memcached has no built-in authentication; rely on network controls and TLS

## Caching Patterns

1. Lazy loading: cache data only after a cache miss
2. Write-through: update the cache when the database changes
3. Session store: keep temporary session data in the cache with a TTL

## Exam Use Case

- Gaming leaderboard: Valkey or Redis OSS sorted sets provide unique, ordered members
