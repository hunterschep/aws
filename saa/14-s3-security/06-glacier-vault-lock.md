# S3 Glacier Vault Lock and Object Lock

Both support write-once-read-many protection for compliance.

## S3 Glacier Vault Lock

- Applies a vault lock policy to an S3 Glacier vault
- Test the policy before completing the lock
- Policy becomes immutable after it is locked

## S3 Object Lock

- Requires S3 Versioning and protects individual object versions
- Retention period: protects a version until a fixed date
- Legal hold: protects a version until explicitly removed

Retention modes:

- Compliance: no user, including root, can delete or shorten retention
- Governance: authorized users can bypass retention with special permission

- A normal delete can still add a delete marker; the locked version remains protected
