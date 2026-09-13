# IAM Conditions

Conditions limit when a policy statement applies

- `aws:SourceIp`: Source public IP / CIDR of the request
- `aws:RequestedRegion`: Region of the API endpoint, not every downstream effect
- `ec2:ResourceTag/Project`: Restrict supported EC2 actions by resource tag
- `aws:PrincipalOrgID`: Match principals from a specific AWS organization
- `aws:SourceArn` / `aws:SourceAccount`: Restrict service-to-service access to expected sources
- `aws:MultiFactorAuthPresent`: Check MFA for supported temporary-credential requests
- MFA deny policies can use `BoolIfExists: false` to also reject requests where the MFA key is absent
