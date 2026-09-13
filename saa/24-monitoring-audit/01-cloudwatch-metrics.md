# Amazon CloudWatch Metrics and Alarms

Metrics: Time-stamped measurements, e.g., CPU utilization or bucket size

- Namespace groups metrics, e.g., `AWS/EC2`
- Dimensions identify a metric, e.g., `InstanceId`; up to 30
- Custom metrics: Standard resolution (60 seconds) or high resolution (1 second)
- EC2 basic monitoring: Most metrics every 5 minutes; detailed monitoring: 1 minute
- EC2 memory / disk-space usage requires the CloudWatch agent or custom metrics
- Dashboards can display metrics across accounts and Regions
- Metric Streams -> Amazon Data Firehose -> external monitoring / storage

## Alarms

- Evaluate a metric or metric-math result against a threshold
- Period: Time window for each data point; evaluation periods determine how long to check
- States: `OK`, `INSUFFICIENT_DATA`, `ALARM`
- Actions: SNS notifications, Auto Scaling, or EC2 stop / terminate / reboot / recover
- Example: Log metric filter -> metric -> alarm -> SNS
- Composite alarms: Combine other alarm states with AND / OR to reduce alert noise
- Composite alarms cannot directly perform EC2 or Auto Scaling actions
