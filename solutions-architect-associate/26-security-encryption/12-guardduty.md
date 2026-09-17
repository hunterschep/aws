# Amazon GuardDuty

Threat detection using ML, anomaly detection, and threat intelligence

- Detect suspicious activity, compromised credentials, and cryptocurrency mining
- Foundational sources: CloudTrail management events, VPC flow data, Route 53 Resolver DNS data
- Reads independent data streams; you do not need to configure your own trails / flow logs first
- Optional protection plans cover S3, EKS, RDS, Lambda, runtime activity, and malware scanning
- Malware Protection for EC2 can scan EBS volumes
- GuardDuty findings -> EventBridge -> SNS / Lambda response workflow
- EventBridge routes findings out; it is not a foundational threat-data source
- Detection is not automatic blocking; remediation needs a configured response
