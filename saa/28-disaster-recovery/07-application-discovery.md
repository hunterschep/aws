# Application Discovery and Migration

## Application Discovery Service

Inventory on-premises servers and dependencies before migration

- Agentless Collector: VMware vCenter inventory, configuration, and utilization data
- Agent-based discovery: Detailed processes, performance, and network connections for dependency mapping
- Migration Hub: Central view of discovery data and migration progress
- [Discovery Service](https://docs.aws.amazon.com/application-discovery/latest/userguide/application-discovery-service-availability-change.html) and [Migration Hub](https://docs.aws.amazon.com/migrationhub/latest/ug/migrationhub-availability-change.html) closed to new customers in November 2025; AWS Transform is the recommended alternative

## Application Migration Service (MGN)

- Lift and shift / rehost physical, virtual, or cloud servers onto EC2
- Continuous block-level replication to a staging area; test before final cutover
- Now called [AWS Transform MGN](https://docs.aws.amazon.com/mgn/latest/ug/what-is-mgn.html)
- Discovery plans the move; MGN moves servers; DMS moves database data
