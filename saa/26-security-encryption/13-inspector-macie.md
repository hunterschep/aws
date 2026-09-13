# Amazon Inspector and Amazon Macie

## Inspector

- Vulnerability management for supported EC2 instances, ECR images, and Lambda functions
- EC2: Software vulnerabilities and unintended network exposure
- EC2 package scans: Agent-based (commonly SSM) or agentless EBS snapshots
- ECR / Lambda: Vulnerable dependencies; optional Lambda code scanning
- Findings integrate with Security Hub and EventBridge

## Macie

- Discover and classify sensitive data, including PII, in S3
- Managed / custom data identifiers; also checks bucket security and access
- S3 -> Macie findings -> EventBridge -> SNS / Lambda response workflow

Exam cues: GuardDuty = threats; Inspector = vulnerabilities; Macie = sensitive S3 data
