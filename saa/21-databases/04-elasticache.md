# Amazon ElastiCache

Managed, submillisecond in-memory cache/data store

- Engines: Valkey, Redis OSS, and Memcached
- Serverless or node-based deployments
- Use cases: database/API caching, sessions, leaderboards, counters, rate limiting
- Cache data can be stale or evicted; design applications to handle cache misses

## Caching Patterns

- Cache-aside: read cache -> miss -> database -> populate cache
- Write-through: update cache with database writes; more writes, fresher cache
- Session store: fast shared state for stateless application servers
- Use TTLs and invalidation rules to control stale data

## Engine Cues

- Valkey/Redis OSS: replication, Multi-AZ failover, backups, rich data structures
- Memcached: simple object cache, multithreaded, horizontal sharding
- Node-based Memcached has no native replication, persistence, or automatic failover
- Cluster mode shards Valkey/Redis OSS data for horizontal scale

Caching reduces database load but adds invalidation and consistency tradeoffs
