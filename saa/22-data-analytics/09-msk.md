# Amazon MSK

Managed Streaming for Apache Kafka

- Kafka-compatible streaming without managing the underlying broker infrastructure
- Provisioned or Serverless; Multi-AZ deployment with VPC connectivity
- Producers write to topics; topics split into partitions on brokers
- Partition replicas provide durability; consumers track their position with offsets
- Ordering within a partition, not across the whole topic
- Encryption at rest with KMS; TLS for encryption in transit

## MSK vs. Kinesis Data Streams

- MSK: Kafka APIs / ecosystem, topics and partitions
- Kinesis: AWS-native APIs, streams and shards
- Kafka topic partition count can increase, but cannot decrease
- Choose MSK for existing Kafka applications or Kafka compatibility

## Consumers

- Kafka applications on EC2 / ECS / EKS
- Lambda, Glue streaming ETL, Managed Service for Apache Flink
- MSK Connect: Managed Kafka Connect connectors to move data in / out
