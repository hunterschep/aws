# AWS CloudTrail

Audit AWS activity: Who did what, when, and from where?

- Records supported API calls / events from the console, CLI, SDKs, and AWS services
- Event history: Last 90 days of management events in each Region, enabled by default
- Trails deliver ongoing records to S3 for longer retention
- Organization trails centralize auditing across member accounts

## Event Types

- Management: Control-plane actions, e.g., creating resources or changing security groups
- Can log read events, write events, or both in a trail
- Data: Resource-level activity, e.g., S3 GetObject or Lambda invocation
- Data events are not logged by default; enable explicitly, with additional charges

## CloudTrail Insights

- Optional detection of unusual API call rates / error rates
- Uses normal activity as a baseline
- CloudTrail events can support EventBridge rules and CloudWatch alarms
