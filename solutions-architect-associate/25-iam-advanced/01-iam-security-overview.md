# IAM and Security Overview

## Structure

- Organization: Collection of AWS accounts under central management
- Organizational unit (OU): Groups accounts / nested OUs, e.g., Production
- Account: Isolation and billing boundary containing identities and resources
- Resource: An AWS object, e.g., an S3 bucket or EC2 instance

## Identities

- IAM user: Long-term identity in one account
- IAM group: Collection of IAM users; cannot contain roles or other groups
- IAM role: Identity assumed temporarily by a person, application, or AWS service
- Identity provider (IdP): Manages workforce identities, e.g., Okta or Microsoft AD
- IdP groups and IAM groups are separate concepts

## Permissions and Limits

- Permission: An action allowed on a resource, e.g., `s3:GetObject`
- Policy: Rules describing allowed / denied actions and conditions
- Permission set: Identity Center template used to provision account access
- SCP: Maximum permissions for identities in member accounts
- RCP: Maximum permissions available on supported resources in member accounts
- SCPs / RCPs are guardrails, not permission grants
