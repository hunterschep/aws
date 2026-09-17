# AWS Config

Record resource configurations, relationships, and compliance over time

- Questions: Is a bucket public? Is SSH unrestricted? How did an ALB configuration change?
- Regional service; aggregators provide a multi-account / multi-Region view
- Managed rules or custom rules using Lambda / Guard policy-as-code
- Evaluations on configuration changes or periodically, depending on the rule
- Config rules assess compliance; they do not block API actions

## Remediation and Notifications

- Systems Manager Automation documents can remediate noncompliant resources
- Automatic or manual remediation
- Config compliance change -> EventBridge -> SNS / Lambda

## CloudWatch vs. CloudTrail vs. Config

- CloudWatch: Performance / operations, metrics, logs, alarms
- CloudTrail: API activity and the identity that performed it
- Config: Configuration history, relationships, compliance
