# Disaster Recovery

Preparing for and recovering from outages that exceed normal high-availability protection

- Recovery point objective (RPO): Maximum acceptable data loss, measured in time
- Recovery time objective (RTO): Maximum acceptable downtime before service is restored
- Recovery targets: Another data center, on-premises -> AWS, or one AWS Region -> another

## Recovery Strategies

From lowest cost / slowest recovery to highest cost / fastest recovery:

| Strategy | Recovery environment |
| --- | --- |
| Backup and restore | Restore backups and rebuild infrastructure after a disaster |
| Pilot light | Core data services / replication running; start or deploy application servers during recovery |
| Warm standby | Fully functional, scaled-down application running; scale up during recovery |
| Multi-site active-active | Multiple sites / Regions serving production traffic; redirect traffic after failure |

- Tighter RPO / RTO generally means more cost and complexity
- Multi-AZ protects against AZ failures; multi-Region DR addresses Region-wide failures
- Replication alone is not a backup: Accidental deletion / corruption can replicate too
- Automate recovery with IaC and test restores / failover regularly
