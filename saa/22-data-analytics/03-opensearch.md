# Amazon OpenSearch Service

Search and analytics engine, often used alongside a primary database

- Full-text search, partial matches, log analytics
- Managed domains or OpenSearch Serverless collections
- JSON query DSL; SQL and PPL also supported on managed domains
- OpenSearch Dashboards for visualization
- Security: IAM, fine-grained access control, encryption, VPC access
- Cognito can authenticate users to OpenSearch Dashboards

## Common Patterns

- DynamoDB -> DynamoDB Streams -> Lambda -> OpenSearch index
- CloudWatch Logs -> subscription filter -> Lambda -> OpenSearch
- Amazon Data Firehose can deliver streaming data to OpenSearch
- Search the index for an item ID, then retrieve the full record from the database
