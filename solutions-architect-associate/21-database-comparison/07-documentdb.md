# Amazon DocumentDB

Fully managed document database with MongoDB compatibility

- Stores and queries JSON-like BSON documents with flexible schemas
- Uses MongoDB-compatible drivers and tools, but is not the MongoDB engine
- Verify API/operator compatibility before migrating
- Compute separated from shared storage replicated across three Availability Zones
- One primary writer and up to 15 read replicas
- Replicas improve read scale and provide failover targets
- Automated backups, point-in-time recovery, change streams, and global clusters

Use cases: MongoDB migrations, catalogs, content management, and user profiles

Choose DynamoDB for simple key-based serverless access; DocumentDB for MongoDB compatibility
