# IAM Policies

- Policies define allowed or denied API actions on AWS resources
- Identity-based policies attach to users, groups, or roles
- Resource-based policies attach to resources and specify a `Principal`
- Managed policies are reusable; inline policies belong to one identity
- Managed policies can be AWS managed or customer managed
- Users inherit permissions from every group they belong to

## Policy Structure

- `Version`: Policy language version, normally `2012-10-17`
- `Statement`: One or more permission statements
- `Sid`: Optional statement identifier
- `Effect`: `Allow` or `Deny`
- `Principal`: Who receives access; used in resource-based and trust policies
- `Action`: API actions allowed or denied
- `Resource`: Resources affected
- `Condition`: Optional requirements for the statement to apply

## Evaluation Basics

- Requests are implicitly denied by default
- An applicable `Allow` grants access
- An explicit `Deny` overrides an `Allow`
- Both the action and resource must be allowed
