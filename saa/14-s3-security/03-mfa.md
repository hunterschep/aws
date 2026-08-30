# MFA Delete

Adds MFA protection to sensitive versioning operations.

- Requires S3 Versioning
- MFA required to permanently delete an object version
- MFA required to change the bucket's versioning state
- Normal deletion that creates a delete marker does not require MFA
- Only the bucket owner's root user can enable or disable MFA Delete
- Configure through the AWS CLI or API, not the console
- Cannot be used with S3 Lifecycle configurations
