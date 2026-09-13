# Advanced IAM and STS

## Temporary Access

- STS issues temporary credentials: Access key ID, secret access key, session token
- AssumeRole: Obtain credentials for an IAM role
- Trust policy: Who can assume the role
- Permissions policy: What the role can do after assumption
- Cross-account assumption needs caller permission and the target role's trust
- Optional session policy further limits the role session; cannot add permissions
- External ID: Helps prevent the confused deputy problem with third-party role access
- Prefer roles / federation over distributing long-lived access keys

## Policy Evaluation

- Requests denied by default; an applicable allow is needed
- An explicit deny overrides an allow
- Applicable SCPs, RCPs, boundaries, and session policies can further limit access
- Identity policies attach to users / groups / roles; resource policies attach to resources
